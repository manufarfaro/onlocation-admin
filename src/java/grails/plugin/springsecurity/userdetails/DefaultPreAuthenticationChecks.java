package grails.plugin.springsecurity.userdetails;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.authentication.AccountExpiredException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.SpringSecurityMessageSource;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsChecker;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import com.onlocation.auth.User;
import com.onlocation.auth.UserService;

/**
 * Copy of the private class in AbstractUserDetailsAuthenticationProvider to
 * make subclassing or replacement easier.
 *
 */
public class DefaultPreAuthenticationChecks implements UserDetailsChecker {
	@Autowired
	private UserService userService;
	protected MessageSourceAccessor messages = SpringSecurityMessageSource
			.getAccessor();
	protected final Logger log = LoggerFactory.getLogger(getClass());

	public void check(UserDetails user) {
		User olUser = userService.getUserByUsername(user.getUsername());
		if (userService.getAuthorityByUser(olUser).equals("ROLE_CLIENT")) {
			throw new UsernameNotFoundException(messages.getMessage(
					"springSecurity.errors.login.fail",
					"Invalid Role for User Login"));
		}
		if (!user.isAccountNonLocked()) {
			log.debug("User account is locked");
			throw new LockedException(messages.getMessage(
					"AbstractUserDetailsAuthenticationProvider.locked",
					"User account is locked"));
		}
		if (!user.isEnabled()) {
			log.debug("User account is disabled");
			throw new DisabledException(messages.getMessage(
					"AbstractUserDetailsAuthenticationProvider.disabled",
					"User is disabled"));
		}
		if (!user.isAccountNonExpired()) {
			log.debug("User account is expired");
			throw new AccountExpiredException(messages.getMessage(
					"AbstractUserDetailsAuthenticationProvider.expired",
					"User account has expired"));
		}
	}
}
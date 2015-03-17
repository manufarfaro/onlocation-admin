package com.onlocation

import org.springframework.context.support.DefaultMessageSourceResolvable;

import grails.plugin.springsecurity.SpringSecurityService;
import grails.plugin.springsecurity.SpringSecurityUtils;
import grails.plugin.springsecurity.annotation.Secured

//@Secured(['ROLE_OFFICE', 'ROLE_COMPANY', 'ROLE_MUNICIPALITY'])
class DashboardController {

	SpringSecurityService springSecurityService
	
    def index() {
		if (springSecurityService.currentUser.getAuthorities().authority.contains("ROLE_CLIENT")) {
			redirect (controller: 'logout', action: 'index')
		}
		
	}
}

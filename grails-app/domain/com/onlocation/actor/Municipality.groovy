package com.onlocation.actor

import com.onlocation.auth.User;

class Municipality extends User{

	static mapping = {
		reviews cascade: "all-delete-orphan"
	}

    static constraints = {
    }
}
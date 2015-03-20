package com.onlocation.actor

import com.onlocation.auth.User;

class Client extends User{
	
	static mapping = {
		reviews cascade: "all-delete-orphan"
	}
    static constraints = {
    }
}

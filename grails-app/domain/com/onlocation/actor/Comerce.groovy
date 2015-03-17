package com.onlocation.actor

import com.onlocation.auth.User;

class Comerce extends User{

	String name
//	Collection<Office> offices
	
	static hasMany = [offices: Office]

	static mapping = {
		hasMany joinTable: [name: "mm_comerce_office", key: 'mm_office_id', column: 'mm_comerce_id' ]
		reviews cascade: "all-delete-orphan"
	}

	static mappedBy = [offices: "comerce"]

    static constraints = {
		name(nullable:true)
    }
}

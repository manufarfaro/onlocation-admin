package com.onlocation.actor

import com.onlocation.auth.User;

class Office extends User{

	String street
	
	static belongsTo = [comerce: Comerce]

	static mapping = {
		belongsTo joinTable: [name: "mm_comerce_office", key: 'mm_comerce_id', column: 'mm_office_id' ]
		reviews cascade: "all-delete-orphan"
	}
	
	static mappedBy = [comerce: "offices"]
	
    static constraints = {
		street(nullable:true)
    }
}

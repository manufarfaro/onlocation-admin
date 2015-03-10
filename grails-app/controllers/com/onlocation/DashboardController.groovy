package com.onlocation

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_OFFICE', 'ROLE_COMPANY', 'ROLE_MUNICIPALITY'])
class DashboardController {

    def index() { }
}

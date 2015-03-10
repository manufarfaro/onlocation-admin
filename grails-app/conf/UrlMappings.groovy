class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(
			redirect: [
				controller: 'dashboard',
				action: 'index'
			]
		)
        "500"(view:'/error')
		"404"(view:'/error')
	}
}

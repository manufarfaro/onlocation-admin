import grails.util.Environment;

eventCompileStart = {
	Environment.executeForCurrentEnvironment {
		production {
			installFrontendDependencies()
		}
	}
}

private void installFrontendDependencies() {
	println "| Install Js Packages..."
	def proc = "npm install".execute()  // execute default task to load dependencies from local cache.
	proc.waitFor()
	println "| Installing Dependencies..."
	def proc = "bower install".execute()  // execute default task to load dependencies from local cache.
	proc.waitFor()
	println "| Frontend Dependencies Finished."
}
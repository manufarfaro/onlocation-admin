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
	def procNpm = "npm install".execute()  // execute default task to load dependencies from local cache.
	procNpm.waitFor()
	println "| Installing Dependencies..."
	def procBower = "bower install".execute()  // execute default task to load dependencies from local cache.
	procBower.waitFor()
	println "| Frontend Dependencies Finished."
}
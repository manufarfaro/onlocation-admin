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
	def procNpm = "npm install".execute()
	procNpm.waitFor()
	println "| Frontend Dependencies Finished."
}
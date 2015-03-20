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
	def procBower = "npm install -g bower".execute()
	procBower.waitFor()
	println "| Installing Dependencies..."
	def procBowerInstall = "/app/tmp/cache/node_modules/bower/bin/bower install".execute()
	procBowerInstall.waitFor()
	println "| Frontend Dependencies Finished."
}
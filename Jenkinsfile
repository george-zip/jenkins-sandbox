node {
	try {
		stage('Test') {
			sh 'echo "Fail"; exit 0'
			currentBuild.result = "SUCCESS"
		}
		stage('Sanity Check') {
			input "Ready to deploy?"
			writeFile file: "output/usefulfile.txt", text: "User accepted it"
		}
		echo "This will run if successful"
	} 
	catch(e) {
		echo "This will run if failed"
		currentBuild.result = "FAILURE"
		throw e
	} 
	finally {
		echo currentBuild.result 
		def currentResult = currentBuild.result ?: 'SUCCESS'
		if(currentResult == 'UNSTABLE') {
			echo "This will run if the run was marked as unstable"
		}

		def previousResult = currentBuild.previousBuild?.result
		echo currentResult
		echo previousResult
		if(previousResult != null && previousResult != currentResult) {
			echo "This will run if the state of the pipeline has changed"
			echo "For example if the pipeline was previously failing but not is successful"
		}

		withEnv(['SPAM=tasty']) {
			sh 'echo $SPAM'
		}
		sh "/home/chris/dev/jenkins-sandbox/environment.sh"
		sh 'echo $SPAM'
	}
}
		     
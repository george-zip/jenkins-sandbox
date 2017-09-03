node {
     checkout scm	
     stage('Build') {
     		    echo "I'm building"
		    sh 'make'
		    archiveArtifacts artifacts: 'app', onlyIfSuccessful: true
	}
	stage('Test') {
		      echo "I'm testing"
	}
	stage('Deploy') {
		echo "Shit's getting deployed"
		echo currentBuild.result
	}
}

		     
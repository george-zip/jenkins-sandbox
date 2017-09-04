properties(
    [
        pipelineTriggers([cron('0 0 * * *')]),
    ]
)

node {
     checkout scm	
     stage('Build') {
     		    echo "I'm building"
		    sh 'make'
		    archiveArtifacts artifacts: 'app', onlyIfSuccessful: true
	}
	stage('Test') {
		      echo "I'm testing"
		      echo "Build ID: ${env.BUILD_ID}"
		      echo "Job ID: ${env.JOB_NAME}"
		      echo "Jenkins workspace: ${env.WORKSPACE}"
	}
	stage('Deploy') {
		echo "Shit's getting deployed"
		echo currentBuild.result
		withEnv(["SPAM_BUILD_NUMBER=${env.BUILD_NUMBER}"]) {
		    echo "SPAM: ${SPAM_BUILD_NUMBER}"
		}
	}
}
		     
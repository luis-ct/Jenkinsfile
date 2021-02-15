pipeline {
    agent any
	environment {
		BUILD = sh(script: './build.sh', , returnStdout: true).trim()
	}

	stages {
		stage('Stage 1') {
			steps {
				echo "Running Stage 1"
			}
		}

		stage('Stage 2 - With changes control') {
			when {
                environment name: 'BUILD', value: 'true'
			}
			steps {
				echo "Stage 2 - Has changes"
			}
		}

		stage('Stage 3 - With changes control') {
			when {
                environment name: 'BUILD', value: 'true'
			}
			steps {
				echo "Stage 3 - Has changes"
			}
		}
	}
	post {
		always {
			cleanWs()
		}
	}
}

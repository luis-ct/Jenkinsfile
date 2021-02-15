pipeline {
    agent any
	environment {
		BUILD = sh(script: './build.sh', returnStdout: true).trim()
		N_COMMITS = sh(script: 'git log --oneline $GIT_COMMIT ^$GIT_PREVIOUS_SUCCESSFUL_COMMIT | wc -l', returnStdout: true).trim()
	}

	stages {
		stage('Stage 1') {
			steps {
				echo "Running Stage 1"
				echo "${GIT_COMMIT}"
				echo "${GIT_PREVIOUS_SUCCESSFUL_COMMIT}"
				echo "${N_COMMITS}"
				echo "${BUILD}"
			}
		}

		stage('Stage 2') {
			when {
				environment name: 'BUILD', value: 'true'
			}
			steps {
				echo "Stage 2 - Has changes"
			}
		}

		stage('Stage 3') {
			when { environment name: 'BUILD', value: 'false' }
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

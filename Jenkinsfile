// String cron_string = BRANCH_NAME.contains("develop") ? "H 23 * * *" : ""

pipeline {
	environment {
		SKIP = sh(script: './changes.sh', , returnStdout: true).trim()
	}

	// triggers { cron(cron_string) }

	stages {
		stage('Stage 1') {
			steps {
				echo "Running Stage 1"
			}
		}

		stage('Stage 2 - With changes control') {
			when {
                not { environment name: 'SKIP', value: 'true' }
			}
			steps {
				echo "Stage 2 - Has changes"
			}
		}

		stage('Stage 3 - With changes control') {
			when {
                not { environment name: 'SKIP', value: 'true' }
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

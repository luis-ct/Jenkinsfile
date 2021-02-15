def skipRemainingStages = false

pipeline {
    agent any

    stages {
        stage("Stage 1") {
            steps {
                script {
                    skipRemainingStages = true

                    println "skipRemainingStages = ${skipRemainingStages}"
                }
            }
        }

        stage("Stage 2") {
            when {
                expression {
                    !skipRemainingStages
                }
            }

            steps {
                script {
                    println "This text wont show up...."
                }
            }
        }

        stage("Stage 3") {
            when {
                expression {
                    !skipRemainingStages
                }
            }

            steps {
                script {
                    println "This text wont show up...."
                }
            }
        }
    }
}

pipeline{
    agent {
        label 'AGENT-1'
    }
    options{ /// using option we can specify the time that pipeline should execute 
    //(with in the time it get complets)
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
       
    }

    parameters {
        choice(name: 'action', choices: ['Apply', 'Destroy'], description: 'Pick something')
    }

    environment{
        Greetings = "Good Morning"  // environments are like variables....key value pairs
    }

    stages{
        stage('init'){
            steps{
                sh """
                    cd 01-vpc
                    terraform init -reconfigure
                """
           
            }
        }
            stage('plan'){
                steps{

                sh """
                    cd 01-vpc
                    terraform plan
                """

            }
            }
            stage('apply'){

                when {
                expression{
                    params.action == 'Apply'
                }
            }
            input {
                message "Should we continue?"
                ok "Yes, we should."
            }

                steps{
                    

               sh """
                    cd 01-vpc
                    terraform apply -auto-approve
                """
                }

            }
            stage('destroy'){
                when{
                    expression{
                        params.action == "Destroy"

                    }
                }

              steps{
                    sh """
                        cd 01-vpc
                        terraform destroy -auto-approve
                    """
                }

            }

           
    }

    post{

        always{
            echo 'always say hello' 
            deleteDir()  ////delete workspace when build is done
        }
        success{
            echo 'i will run when pipeline is success'

        }
        failure{
            echo 'i will run when pipeline is failure'

        }
    }
}




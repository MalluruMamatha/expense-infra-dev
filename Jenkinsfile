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

                sh 'echo This is from plan'

            }
            }
            stage('apply'){
                steps{

                sh 'echo This is from apply'
                }

            }

           
    }

    post{

        always{
            echo 'always say hello' 
            deleteDir()  ////delete workspace when build is done
        }
        success{
            echo 'i will when pipeline is success'

        }
        failure{
            echo 'i will ren when pipeline is failure'

        }
    }
}




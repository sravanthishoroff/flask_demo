pipeline {
    agent{
        node{
            label 'master'
        }
    }
    stages {
        stage('Initialize'){
            steps{
                script{
                    def dockerHome = tool 'myDocker'
                    env.PATH = "${dockerHome}/bin:${env.PATH}"
                }
            }
        }
        stage('build){
            agent { docker { image 'python:3.8.5' } }
             steps {
                 'pip install -r requirements.txt && python ${WORKSPACE}/src/main.py'
             }
        }
        stage('Docker Image'){
            steps{
                'docker build -t personal-python-test .'
            }
        }
        stage('Run Image / Container Creation'){
            steps{
                'docker run -p 5000:5000 -d --name myfirstcontainer personal-python-test'
            }
        }
    }
}

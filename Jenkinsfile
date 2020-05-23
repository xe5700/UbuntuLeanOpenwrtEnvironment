pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                    docker build . -t xjboss/ubuntuleanopenwrtenvironment
                '''
            }
        }
        stage('Deploy'){
            steps{
                sh 'docker tag xjboss/ubuntuleanopenwrtenvironment docker-repo.h.xjboss.net/ubuntuleanopenwrtenvironment'
                sh 'docker push docker-repo.h.xjboss.net/ubuntuleanopenwrtenvironment'
                sh 'docker push xjboss/ubuntuleanopenwrtenvironment'
            }
        }
    }
}
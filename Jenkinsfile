pipeline {
    agent any
    
    enviroment {

    	PASS= credentials('DOCKER_PASS')

    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
        		sh '''
        			./jenkins/build/mvn.sh mvn -B -DskipTests clean package
        			./jenkins/build/build.sh
        		'''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
		        sh './jenkins/test/mvn.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                echo 'push....'
		sh './jenkins/push/push.sh'
            }
        }
	stage('deploy') {
            steps {
                echo 'deploy....'
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}

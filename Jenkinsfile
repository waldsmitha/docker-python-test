pipeline {
    agent any
    stages {
	stage('Clone Repo') {
	    steps {
		git branch: 'master', url: 'https://github.com/waldsmitha/docker-python-test.git'
	    }
	}
        stage('build') {
            steps {
		script {
                    app = docker.build("test/docker-python-test")
		}
            }
        }
        stage('push image') {
            steps {
		script {
                    docker.withRegistry('http://192.168.0.119:5000') {
			app.push("${env.BUILD_NUMBER}")	
		    }
		}
            }
	}
    }
}


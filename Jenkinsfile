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
    }
}


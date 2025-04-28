pipeline {
    agent any
    stages {
	state('Clone Repo') {
	    steps {
		git branch: 'master', url: 'https://github.com/waldsmitha/docker-python-test.git'
	    }
        stage('build') {
            steps {
                app = docker.build("test/docker-python-test")
            }
        }
    }
}


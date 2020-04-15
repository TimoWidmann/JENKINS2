pipeline {

	agent {docker {image 'maven:3.6.3'}}

	//environment {
	//	dockerHome = tool 'JenkinsDocker'
	//	mavenHome = tool 'JenkinsMaven'
	//	PATH = "$dockerHome/bin:$mavenHome/bin:$PATH"
	//}

	stages{
		stage('Checkout') {
			steps{
				sh "mvn --version"
				sh "docker version"
				echo "PATH - $PATH"
			}
		}

		stage('Compile') {
			steps{
				sh "mvn clean compile"
			}
		}

		stage('Test') {
			steps{
				sh "mvn test"
			}
		}

		stage('Integration Test') {
			steps{
				sh "mvn failsafe:integration-test failsafe:verify"
			}
		}

		stage('Package') {
			steps{
				script{
					sh "mvn package -DskipTests"
				}
			}
		}
	}
}

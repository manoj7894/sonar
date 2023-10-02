pipeline{
    agent any
    environment {
        PATH = "$PATH:/opt/apache-maven-3.6.3/bin"
    }
    stages{
        stage('GetCode') {
            steps{
                git 'https://github.com/manoj7894/sonar.git'
            }
        }
        stage('Build') {
            steps{
                sh 'mvn clean package'
            }
        }
        stage('SonarQube analysis') {
            steps{
            withSonarQubeEnv('sonarqube-8.9.2') {     
                sh 'mvn sonar:sonar'
            }
                
            }
        }
        stage('Deploy to tomcat server') {
            steps{                                 
                deploy adapters: [tomcat9(credentialsId: '9a831b44-c240-4d99-be23-21564f3b0696', path: '', url: 'http://3.108.227.134:9090/')], contextPath: 'jobwar7G5', war: '**/*.war'
            }
        }
    }
}

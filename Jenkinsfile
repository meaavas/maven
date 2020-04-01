 pipeline {
    agent {
        label 'maven'
    }  
    tools {
        jdk 'openjdk'
        maven '363'
    } 
    options {
         timeout(time: 1800, unit: 'SECONDS')
    }
    stages {
        stage ('Test') {
            steps {
                sh "mvn clean test surefire-report:report-only"
                publishHTML([allowMissing: true, alwaysLinkToLastBuild: false, keepAll: false, reportDir: '/target/site', reportFiles: 'surefire-report.html', reportName: 'HTML Report', reportTitles: ''])
            }
        }
        stage('Packaging'){
            steps {
                sh "mvn package -DskipTests=true"
            }
        }
        stage('Deploy') {
            steps {
                input message: 'DEPLOY?', ok: 'Approve'
                sshagent(['sudeeptarget']) {
                  sh "scp  -o StrictHostKeyChecking=no target/my-app-1-RELEASE.jar ec2-user@172.31.42.156:/home/ec2-user"
}

            }
        }
    }
    
}
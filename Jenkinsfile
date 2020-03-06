node('maven'){
    stage('Checkout'){
        checkout scm //commenting
    }
    stage('Printing Parameter'){
        sh "echo ${environment}"
    }
    stage('Build'){ //build stage 
        sh "sh untilloop.sh"
    }
    if (params.environment == 'Dev'){
        stage('Array'){
            sh "sh array" //comment
        }
    }
    stage('Notify'){
        sh 'mail -s "the job ran fine" lokesh.mydilse@gmail.com'
    }
}
node('maven'){
    stage('Checkout'){
        checkout scm //commenting made some changes
    }
    stage('Printing Parameter'){
        sh "echo ${environment}"
    }
    stage('Build'){
        sh "sh untilloop.sh"
    }
    if (params.environment == 'Dev'){
        stage('Array'){
            sh "sh array"
        }
    }
    stage('Notify'){
        sh 'mail -s "the job ran fine" lokesh.mydilse@gmail.com'
    }
}
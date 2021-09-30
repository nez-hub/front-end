pipeline {
   agent any
  tools {
    nodejs 'Node 4.8.6'
  }
  stages {
    stage('build') {
      steps{
        echo 'Building...'
        sh 'npm install'
      }
    }
    stage('test') {
      steps{
        echo 'Testing...'
        sh 'npm instal' && sh 'npm test'
      }
    }
    stage('Package') {
      steps{
        echo 'Packaging...'
        sh 'npm install' && sh 'npm run package'
        archiveArtifacts artifacts: '**/distribution/*.zip' fingerprint: true
      }
    }
  }
}
       

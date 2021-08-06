pipeline {
  agent any
  stages {
    stage('Initial Message') {
      parallel {
        stage('Initial Message') {
          steps {
            echo 'Starting the build phase'
            sh 'sudo cd ~/Desktop; git clone https://github.com/Int-CAM/Cantata; cd Cantata;'
          }
        }

        stage('Build Cantata Test') {
          steps {
            cantataRunTest(cantataExecDir: 'dummyFunctions/Cantata/tests', execute: true, outputToConsole: true)
          }
        }

      }
    }

    stage('Reports Collection') {
      steps {
        archiveArtifacts(artifacts: 'dummyFunctions/Cantata/results/*.html', allowEmptyArchive: true)
      }
    }

    stage('End Message') {
      steps {
        echo 'Test Completed'
      }
    }

  }
}
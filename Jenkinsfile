pipeline {
  agent any
  stages {
    stage('Initial Message') {
      parallel {
        stage('Initial Message') {
          steps {
            echo 'Starting the build phase'
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
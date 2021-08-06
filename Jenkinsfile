pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        cantataRunTest(cantataExecDir: 'dummyFunctions/Cantata/tests', execute: true, outputToConsole: true)
      }
    }

    stage('Reports') {
      parallel {
        stage('Reports') {
          steps {
            archiveArtifacts(artifacts: 'dummyFunctions/Cantata/results/*.html', allowEmptyArchive: true)
          }
        }

        stage('Finished Message') {
          steps {
            echo 'Report Completed'
          }
        }

      }
    }

  }
}
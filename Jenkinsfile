pipeline {
  agent any
  stages {
    stage('Build and Collect') {
      steps {
        echo 'Cantata Pipeline Started'
        cantataRunTest(appendToTopLevelLog: true, execute: true, outputToConsole: true, cantataExecDir: 'dummyFunctions/Cantata/tests')
        archiveArtifacts(allowEmptyArchive: true, artifacts: 'dummyFunctions/Cantata/results/*.html')
      }
    }

  }
}
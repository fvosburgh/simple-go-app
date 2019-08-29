@Library('jenkins-shared-library@master')
import com.demo.jenkins.pipeline.build.*

properties(demoBuildProps.props())

def build = new demoBuild()

node(label: 'docker') {
  build.wrap {

    stage('Setup') {
      build.composeBuild('app')
    }

    stage('Test'){
      build.composeUp('app')
      sh './build/test/test-app.sh'
    }

    stage ('Push'){
      build.push()
    }

  }
}

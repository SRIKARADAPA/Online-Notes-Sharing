//pipeline {

  // env.NODEJS_HOME = "${tool 'NodeJsv12.0.0'}"
  // env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"

  //agent any
  //stages{
    //stage('Build') {
      //steps {
        //sh 'ant'
      //}
    //}
	//stage('Test') {
      //steps {
        //sh 'PATH=/home/sriharsha/Desktop/8th_sem/SPE/project:$PATH selenium-side-runner Test1.side Test2.side -c "browserName=chrome goog:chromeOptions.args=[headless]" --output-directory=results --output-format=junit'

        // sh 'PATH=/home/manideep/Desktop/Online-Notes-Sharing:$PATH selenium-side-runner Test1.side Test2.side -c "browserName=chrome goog:chromeOptions.args=[headless]" --output-directory=results --output-format=junit'
        // sh 'node -v'
        // sh 'selenium-side-runner Test1.side Test2.side -c "browserName=chrome goog:chromeOptions.args=[headless]" --output-directory=results --output-format=junit'
      //}

 
    //}
  //}
//}
   pipeline {
     agent { dockerfile true }
    stages {
        stage('Docker') {
            steps {
                //sh  'docker-compose build'
                sh 'docker-compose up'
            }
        }
    }
   }
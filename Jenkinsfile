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
	environment {
    registry = "srikaradapa/online-notes-sharing"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
 agent any
    stages {
     stage('Build') {
      steps {
       sh 'docker-compose build'
       }
     }
     stage('Up') {
      steps {
        sh 'docker-compose up -d'
      }
     }
     stage('Docker Hub'){
       steps{
     	  withDockerRegistry([ credentialsId: "dockerhub", url: "" ]){
         //sh 'docker login -u srikaradapa -p Srikar@1829'
     	   sh 'docker push srikaradapa/online-notes-sharing'
 	     }
     }
   }

/*
		Job Id to update both the Web App and Database container : 382dd188-788c-4dd3-913b-d68437498c69
		Job Id only to update the Web App container only: 7e706023-c5ba-44e5-b3a0-1b26087507ac
		Job Id to update on the Database Container only: 08157783-2818-42ee-b118-b21670fdf037
*/

		//stage('Deploy- Rundeck') {
      //agent any
      //steps {
        //script {
          //step([$class: "RundeckNotifier",
          //rundeckInstance: "Rundeck",
          //options: """
            //BUILD_VERSION=$BUILD_NUMBER
          //""",
          //jobId: "382dd188-788c-4dd3-913b-d68437498c69"])
        //}
      //}
    //}
  }
}
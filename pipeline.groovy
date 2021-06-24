pipeline {
    agent any

    stages {
        stage('Git repo Cloning') {
            steps {
                git credentialsId: 'b9de33bf-5297-40bb-97ff-5a6a8b5a6f67', url: 'https://github.com/ShivDj/Jenkins_DockerCompose_Project.git'
            }
        }
      
       stage('Build') {
            steps {
     
               sh 'rsync -r -e "ssh -i /var/lib/jenkins/public_instance_key.pem" /var/lib/jenkins/workspace/Docker ubuntu@65.2.144.139:/home/ubuntu/'
               
               }
        }
        
        stage('Deploy') {
            steps {
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@65.2.144.139 "bash /home/ubuntu/Docker/script/Before_inst.sh"'
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@65.2.144.139 "bash /home/ubuntu/Docker/script/move.sh"'               
            }
        }
    }   
}    

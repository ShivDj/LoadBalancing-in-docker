pipeline {
    agent any

    stages {
        stage('Git repo Cloning') {
            steps {
                git credentialsId: 'b9de33bf-5297-40bb-97ff-5a6a8b5a6f67', url: 'https://github.com/ShivDj/new_chatapp.git'
            }
        }
         
        stage('Build') {
            steps {
                
               sh 'rsync -r -e "ssh -i /var/lib/jenkins/public_instance_key.pem" /var/lib/jenkins/workspace/chatapp ubuntu@10.0.1.10:/home/ubuntu/'
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@10.0.1.10 "bash /home/ubuntu/chatapp/script/Before_inst.sh"'
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@10.0.1.10 "bash /home/ubuntu/chatapp/script/move.sh"'               

               }
        }
        stage('Deploy') {
            steps {
               sh 'ssh -i /var/lib/jenkins/public_instance_key.pem ubuntu@10.0.1.10 "bash /home/ubuntu/new_chatapp/script/start-server.sh"'

            }
        }
    }   
}    

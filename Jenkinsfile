pipeline {
    agent any

    stages {
        stage('Download_Source_Code') {
            steps {
                sh "rm -rf *"
                // Get some code from a GitHub repository
                git 'https://github.com/zurrehma/Jenkins_pipeline.git'
                sh '''#!/bin/bash
                unzip marketing.zip 
                source var.txt && echo 'dir name is: '${dirName}
                sudo docker build --build-arg static_code=./${dirName} -t ${imageName} -f Dockerfile .
                echo "Stopping previous container"
                [ "$(sudo docker ps -a | grep ${containerName}-${version})" ]&& sudo docker stop ${containerName}-${version} && sudo docker rm ${containerName}-${version}
                sudo docker run --name ${containerName}-${version} -d -p 8081:80 ${imageName}
                '''
            }

        }
        
    }
}

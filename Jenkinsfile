pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Tarun-Chand-Illapu/AWS-Cloud-Infrastructure-Automation-Terraform-and-Jenkins-Pipeline.git']]])
            }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init -no-color -reconfigure') 
            }
        }
        stage ("terraform plan") {
            steps {
                sh ('terraform plan -no-color') 
            }
        }
                
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${Action}"
                sh ('terraform ${Action} --auto-approve -no-color')
           }
        }
    }
}

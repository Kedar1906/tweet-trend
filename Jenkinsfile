pipeline{
    agent{
        node{
        label 'maven'
        }
    }
    environment{
        PATH= "/opt/apache-maven-3.9.5/bin:$PATH"
    }
    stages{
        stage("build"){
            steps{
                echo "---hello build started----"
                sh 'mvn clean package'
                echo "----build completed"
            }
        }
        stage("DockerImage"){
            steps{
                echo "Creating Docker Image"
                sh 'docker build -t kedar89/ttrend:v1'
                echo "Pushing Docker Image"
                sh 'docker push kedar89/ttrend:v1'
            }
        }
    }

}

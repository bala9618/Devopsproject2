pipeline {
agent any
stages{
stage('Build Docker Images') {
steps {
script {
docker.build('my-django-app', '.')
}
}
}
stage('Deploy') {
steps {
script {
sh 'docker-compose -f docker-compose.yml up -d'
}
}
}
stage('Test') {
steps {
script {
sh 'curl --fail http://localhost:8000 || exit 1'
}
}
}
}
}

#!/bin/bash

<< task
Deploy a djangoy app and handle error
task

function clone_code () {
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}
#As the requirement for the project is already installed we skip this..
function install_requirement(){
	sudo apt install nginx
}

#requirement restart

function required_restart() {
	sudo systemctl enable docker
	docker compose up -d
	
}

#deployment
function deploy(){
       docker build -t notes-app .
       docker run  -p 8000:8000 notes-app

}

echo "******************DEPLOYMENT STARTED*********************"
if ! clone_code; then
	echo "the code directory is already exsits"
	cd django-notes-app
fi
install_requirement
required_restart
deploy
echo "******************DEPLOYMENT END*********************"





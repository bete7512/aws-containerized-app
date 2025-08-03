build:
	docker build -t awscontainerizedapp:v0.1 .
push:
	docker push awscontainerizedapp:v0.1
run:
	docker run -d -p 8080:8080 awscontainerizedapp:v0.1

login:
	docker login -u AWS -p $(shell aws ecr get-login-password --region eu-central-1) 783141779211.dkr.ecr.eu-central-1.amazonaws.com/awscontainerizedapp

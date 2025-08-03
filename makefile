build:
	docker build -t awscontainerizedapp:v0.1 .
push:
	docker push awscontainerizedapp:v0.1
run:
	docker run -d -p 8080:8080 awscontainerizedapp:v0

login:
	docker login -u AWS -p $(shell aws ecr get-login-password --region eu-central-1) <aws_account_id>.dkr.ecr.us-west-2.amazonaws.com/awscontainerizedapp

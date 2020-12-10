build:
	docker build --tag bryandollery/terraform-packer-aws-az-alpine:latest .

run:
	docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v tf-plugin-cache:/plugin-cache -v $$(pwd):/work -v $$HOME:/host -v aws:/root/.aws -v /mnt/c/Users/bryan:/bryan --name pawsazt bryandollery/terraform-packer-aws-az-alpine

bash:
	docker exec -it pawsazt bash

kill:
	docker rm -f pawsazt

stop: kill

push:
	docker push bryandollery/terraform-packer-aws-az-alpine:latest

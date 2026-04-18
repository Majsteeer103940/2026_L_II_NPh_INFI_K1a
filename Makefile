docker_build:
	docker build -t hello_world_printer .

TAG=$(USERNAME)/hello-world-printer
docker_push: docker_build
	@docker login --username $(USERNAME) --password $${DOCKER_PASSWORD}; \
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;
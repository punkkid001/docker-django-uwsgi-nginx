.PHONY: docker_prepare _docker_prepare

docker_prepare:
	docker exec -it $(shell docker ps -q -f name=dockerdjangouwsginginx_web_1) /bin/bash -c "python manage.py migrate"

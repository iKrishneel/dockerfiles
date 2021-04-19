build:
	docker buildx build -t krishneel/pytorch:latest ./pytorch/
run-torch:
	docker run -it --rm --name pytorch --shm-size=2g --gpus all -p 8080:8080 -v ${HOME}:/workspace/ -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v /etc/shadow:/etc/shadow:ro  krishneel/pytorch:latest /bin/bash

.PHONY: all $(MAKECMDGOALS)

ifeq ($(OS),Windows_NT)
    DOCKER_CMD := docker run --rm --volume .\:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py words.txt yes
	MESSAGE := echo "Hello from Windows!!!"
else
    DOCKER_CMD := docker run --rm --volume `pwd`:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py words.txt yes
	MESSAGE := echo "Hello from Unix Like!!!"
endif


run:
	$(MESSAGE)
	$(DOCKER_CMD)

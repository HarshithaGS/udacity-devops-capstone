setup:
	python3 -m venv ~/.udacap &&\
	source ~/.udacap/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
          chmod +x /bin/hadolint

lint:
	hadolint Dockerfile
	pylint app.py

all: setup install lint
server:
	hugo server
	
build:
	hugo
	
deploy: build
	rsync -avz --delete ./public/ slack.it:~/html
	
.PHONY: server build deploy

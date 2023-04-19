server:
	hugo server
	
build:
	hugo
	
deploy: build
	rsync -avz --delete ./public/ slack.it:~/html/hugo/
	
.PHONY: server build deploy

server:
	hugo server
	
build:
	hugo
	
deploy: build
	rsync -avz --delete ./public/ slack.it:/var/www/virtual/unicorni/html/hugo/
	
.PHONY: server build deploy

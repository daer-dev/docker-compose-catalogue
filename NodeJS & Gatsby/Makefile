SHELL:=/bin/bash

.PHONY: deploy

deploy:  ## Deploys the master branch to Github Pages.
	$(info Deploying master branch to Github Pages...)
	@docker-compose run --rm web git config --global user.name "$(git config user.name)" && \
	                             git config --global user.email "$(git config user.email)" && \
															 npm run deploy

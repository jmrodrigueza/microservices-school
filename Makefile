lint:
	@node_modules/.bin/eslint .

qa:
	@make lint && npm run test

brand:
	@node_modules/make-manifest/bin/make-manifest --extra "build.url: https://travis-ci.org/jmrodrigueza/microservices-school/builds/"$(TRAVIS_BUILD_ID) --extra "build.number: "$(TRAVIS_BUILD_NUMBER)
	@cat ./manifest.json

ensure-dependencies:
	@npm run docker

build:
	@docker login -u=$(DOCKER_USERNAME) -p=$(DOCKER_PASSWORD) quay.io
	@docker build --tag $(SERVICE):$(TRAVIS_BUILD_NUMBER) .
	@docker images
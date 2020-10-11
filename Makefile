build:
	docker build . -t barrywalker/prog8:latest

dist: build
	docker push barrywalker/prog8:latest

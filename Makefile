VERSION?=6.2

build:
	docker build . -t barrywalker/prog8:$(VERSION) --build-arg VERSION=$(VERSION)

dist: build
	docker push barrywalker/prog8:$(VERSION)

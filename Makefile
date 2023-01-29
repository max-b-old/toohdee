.PHONY: dev
dev: clean build run 

.PHONY: build
build:
	g++ -Wall -std=c++17 -I"./libs/" src/*.cpp -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -llua5.4 -o toohdee

.PHONY: run
run:
	./toohdee

.PHONY: clean
clean:
	rm toohdee



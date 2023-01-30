#######################################################################################
# Variables
#######################################################################################

CC = g++
LANG_STD = -std=c++17
COMPILER_FLAGS = -Wall -Wfatal-errors
INCLUDE_PATH = -I"./libs/" 
SRC_FILES = ./src/*.cpp \
			./src/Game/*.cpp \
			./src/Logger/*.cpp
LINKER_FLAGS = -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer -llua5.4
OBJ_NAME = toohdee

.PHONY: dev
dev: clean build run 

.PHONY: build
build:
	$(CC) $(COMPILER_FLAGS) $(LANG_STD) $(INCLUDE_PATH) $(SRC_FILES) $(LINKER_FLAGS) -o $(OBJ_NAME)
	@echo ""

.PHONY: run
run:
	@./$(OBJ_NAME)

.PHONY: clean
clean:
	@if [ ! -f $(OBJ_NAME) ] ; then exit 0 ; fi
	@if [ -f $(OBJ_NAME) ] ; then rm $(OBJ_NAME) ; fi



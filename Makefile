PROJ_DIR = husk-quickstart

build:
	cd $(PROJ_DIR) && stack setup
	cd $(PROJ_DIR) && stack build

repl:
	cd $(PROJ_DIR) && stack exec huski


BOARD ?= ulx3s # Select your board here: icebreaker, ulx3s ...
               # Any board supported by Silice using the oss-cad open source toolchain

project: project.si
		silice-make.py -s project.si -b $(BOARD) -p basic -o BUILD_$(BOARD) --no_program $(ARGS)

clean:
	rm -rf BUILD_*

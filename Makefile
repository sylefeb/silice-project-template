
BOARD ?= ulx3s

project: project.si
		silice-make.py -s project.si -b $(BOARD) -p basic,vga -o BUILD_$(BOARD) --no_program $(ARGS)

clean:
	rm -rf BUILD_*

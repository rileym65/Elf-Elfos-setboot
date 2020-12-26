PROJECT = setboot

$(PROJECT).prg: $(PROJECT).asm bios.inc
	../date.pl > date.inc
	rcasm -l -v -x -d 1802 $(PROJECT)
	cat $(PROJECT).prg | sed -f adjust.sed > x.prg
	rm $(PROJECT).prg
	mv x.prg $(PROJECT).prg

clean:
	-rm $(PROJECT).prg



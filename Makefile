mmu.bin : mmu.o
	dcpu-16 -ad mmu.o mmu.bin

mmu.o : 
	cat test.dasm liste.dasm memoire_appel.dasm memoire_bas.dasm memoire_dat.dasm > mmu.o

test_list.bin : test_list.o
	dcpu-16 -ad test_list.o test_list.bin

test_list.o : 
	cat test.dasm liste.dasm memoire_bas.dasm memoire_dat.dasm > test_list.o
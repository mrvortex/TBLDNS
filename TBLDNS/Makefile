# ============================================================================
# Name        : Makefile
# Author      : 
# Version     :
# Copyright   : Your copyright notice
# Description : Makefile for Hello MPI World in Fortran
# ============================================================================

.PHONY: all  clean

all: src/main.f90   src/commVar.f90    src/readWrite.f90
	gfortran -O2 -g -o bin/main \
		src/main.f90	 src/commVar.f90    src/readWrite.f90
	
clean:
	rm -f bin/test *.mod

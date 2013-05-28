# ============================================================================
# Name        : Makefile
# Author      : 
# Version     :
# Copyright   : Your copyright notice
# Description : Makefile for Hello MPI World in Fortran
# ============================================================================

.PHONY: all  clean

all: src/main.f90   src/commVar.f90    src/readWrite.f90  src/parallel.f90	src/gridGen.f90
	mpif90 -O2 -g -o bin/main \
		src/main.f90	 src/commVar.f90    src/readWrite.f90  src/parallel.f90
	gfortran -O2 -g -o bin/gridGen \
		src/gridGen.f90
clean:
	rm -f bin/test *.mod

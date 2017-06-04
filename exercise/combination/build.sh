#!/bin/sh
rm -f ./*.mod
rm -f ./*.o
rm -f ./DATA.txt
rm -f ./calc
gfortran -c fxn.f90
gfortran -c MC_VEGAS.f90
gfortran -c CT14pdf.for
gfortran -c main.f90
gfortran -o calc main.o CT14pdf.o MC_VEGAS.o fxn.o
./calc

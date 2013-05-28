!Author:    guang
!May 28, 2013
!Description:
!
!Input:
!
!Output:
!
program main
use commVar
use parallel
use readWrite
    implicit none

    !read all the elements and get ready for computation
    call initMPI
    call readPara
    call readInput
    call readConst
    call outset

    !begin computation
    call allocateVar
    call readGrid
    call geomCal
    call initField
    call RungeKutta
end program main

module readWrite
use commVar
    implicit none

contains
    subroutine readInput
        open(10,file="input/input.dat")
        read(10,nml=flowPara)
        read(10,nml=flowStatePara)
        read(10,nml=gridPara)
        write(*,*) flowtype
        write(*,*) Reynolds,Ma,ref_t
        write(*,*) ima,jma,kma
    end subroutine readInput
end module readWrite

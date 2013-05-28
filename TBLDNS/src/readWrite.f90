module readWrite
use commVar
use parallel
    implicit none

contains
    subroutine readPara
        open(10,file="input/input.dat")
        read(10,nml=flowPara)
        read(10,nml=flowStatePara)
        read(10,nml=gridPara)
         write(*,'(A9,1x,I3,1x,A26)'),'  ** Rank',mpirank,                &
                                            ' >> Read input.dat...done.'
        if(mpirank<mpisize) then
        write(*,*) mpirank
        write(*,*) flowtype
        write(*,*) Reynolds,Ma,ref_t
        write(*,*) ima,jma,kma
        end if
        call mpi_barrier(mpi_comm_world,ierr)
    end subroutine readPara

    subroutine readInput

    end subroutine readInput
end module readWrite

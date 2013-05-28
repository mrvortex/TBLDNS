module parallel
use mpi
use commVar
    implicit none

contains
    subroutine initMPI
            call MPI_INIT(ierr)
            call mpi_comm_rank(mpi_comm_world,mpirank,ierr)
            call mpi_comm_size(mpi_comm_world,mpisize,ierr)
            call mpi_get_processor_name(processor_name,namelen,ierr)
            mpirankmax=mpisize-1
!            if(mpirank==0) then
!               call Statement
!            end if
            if(mpisize==1) then
              print*,' ** The program is working in serial environment!'
            else
              if(mpirank==0)  print*,' ** The program is working in MPI environment!'
              !
              call mpi_barrier(mpi_comm_world,ierr)
              !
              write(*,"(A9,1x,I3,1x,A17,1x,A20)")' ** Rank',mpirank,           &
                                                'is on Processor',processor_name
            end if
            !
            call mpi_barrier(mpi_comm_world,ierr)
    end subroutine initMPI


    subroutine paraPreProcess

    end subroutine paraPreProcess
end module parallel

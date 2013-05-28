module commVar
    use mpi
    implicit none

    integer:: flowtype
    real(8):: Reynolds,Ma,ref_t
    integer:: ima,jma,kma
    namelist /flowPara/ flowtype
    namelist /flowStatePara/ Reynolds,Ma,ref_t
    namelist /gridPara/ ima,jma,kma

    integer:: mpirank,mpisize,mpirankmax,namelen,ierr
    character(MPI_MAX_PROCESSOR_NAME):: processor_name
contains

end module commVar

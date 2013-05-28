module commVar
    implicit none

    integer:: flowtype
    real(8):: Reynolds,Ma,ref_t
    integer:: ima,jma,kma

    namelist /flowPara/ flowtype
    namelist /flowStatePara/ Reynolds,Ma,ref_t
    namelist /gridPara/ ima,jma,kma
contains

end module commVar

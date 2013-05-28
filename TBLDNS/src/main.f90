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

    !计算前的准备
    !初始化MPI环境
    call initMPI
    !文件读取方式：
    !   1.所有进程读取文件
    !   2.主进程读取文件并广播到其他进程
    call readPara
    call paraPreProcess
!    call readInput
!    call refConst
!    !屏幕输出计算设置
!    call outSet
!
! !开始计算
!    call allocateVar
!    call readGrid
!    call geomCal
!    call initField
!    call RungeKutta
end program main

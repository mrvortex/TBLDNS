!Author:    guang
!May 28, 2013
!Description:   按李新亮书P406页生成可压缩槽道湍流DNS计算网格
!
!Input:
!
!Output:
!
program chanGridGen
    implicit none
    integer:: nx,ny,nz,i,j,k
    real(8):: PI, bg
    real(8):: LX,LY,LZ
    real(8),allocatable,dimension(:,:,:) :: x,y,z
    nx = 101
    nY =140
    nZ =101

    PI=3.1415926
    bg = 2

    LX = 2*PI
    LY = 2
    LZ = 2*PI
    allocate(x(0:nx-1,0:ny-1,0:nz-1),         &
                    y(0:nx-1,0:ny-1,0:nz-1),        &
                    z(0:nx-1,0:ny-1,0:nz-1)         )
    do k = 0, nz-1
        do j  = 0, ny-1
            do i = 0, nx-1
                x(i,j,k) = LX*i/(nx-1)
                y(i,j,k) = tanh(bg*(2.0*j/(ny-1)-1))/tanh(bg)
                z(i,j,k) =LZ*i/(nz-1)
            end do
        end do
    end do
    open(11,file="datin/grid.dat", form="unformatted")
    write(11) x,y,z
    close(11)

    open(11,file="datin/grid.dat", form="unformatted")
    read(11) x,y,z
    close(11)
    do j = 0, ny-1
        write(*,*) y(0,j,0)
    end do
end program chanGridGen

!Programme pour afficher les valeurs max et min de chaque colonne du fichier 'turb_init.data'

program test
implicit none


real(kind=8):: ind, seed1, seed2, seed3
real(kind=8), dimension(1:3,1:100,1:100,1:100):: q_idl
!real, dimension(1:100*100*100):: perturb_tab
integer :: i, j, k, n_size
real(kind=8):: xi, yi, zi, vx ,vy, vz
real(kind=8):: mean_tab_pert_aleat, var_tab_pert_aleat, std_tab_pert_aleat, mean, var, std, mean_pert_abs
real(kind=8):: delta_rho, d0, q_mean, pourcent_pert,q_idl_mean_coeur,count_cell_coeur,pourcent_pert_coeur
real(kind=8), dimension(1:100,1:100,1:100):: q

!write(*,*) 'Entrer d0 : '
!read(*,*) d0

d0=144339.793122857

write(*,*) 'Entrer delta_rho : '
read(*,*) delta_rho


open(20,file='init_turb.data',form='formatted')
read(20,*) n_size, ind, seed1,seed2,seed3
if(n_size .ne. 100) then
write(*,*) 'Unextected field size'
stop
endif
do k=1,n_size
	do j=1,n_size
		do i=1,n_size
		  read(20,*)xi,yi,zi,vx,vy,vz
		  q_idl(1,i,j,k) = vx
		  q_idl(2,i,j,k) = vy
		  q_idl(3,i,j,k) = vz
		  !perturb_tab(l + (j-1)*n_size + (k-1)*(n_size**2) ) = vx
 		end do
	end do
end do
close(20)

!write(*,*) maxval(q_idl(1,:,:,:)), maxval(q_idl(2,:,:,:)), maxval(q_idl(3,:,:,:))
!write(*,*) minval(q_idl(1,:,:,:)), minval(q_idl(2,:,:,:)), minval(q_idl(3,:,:,:))
!write(*,*) maxval(q_idl,dim=1)
!write(*,*) size(q_idl(1,:,:,:)), size(q_idl(2,:,:,:)), size(q_idl(3,:,:,:))
!write(*,*) sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:)), sum(q_idl(2,:,:,:)) / size(q_idl(2,:,:,:)), &
!sum(q_idl(3,:,:,:)) / size(q_idl(3,:,:,:))

write(*,*) "size(q_idl(1,:,:,:)) = ", size(q_idl(1,:,:,:))

mean_tab_pert_aleat = sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:))
var_tab_pert_aleat = sum( (q_idl(1,:,:,:) - mean_tab_pert_aleat)**2 ) /size(q_idl(1,:,:,:))
std_tab_pert_aleat = sqrt(var_tab_pert_aleat)

!write(*,*) mean_tab_pert_aleat, std_tab_pert_aleat



do k=1,n_size
   do j=1,n_size
      do i=1,n_size
         !if(q_idl(1,i,j,k) .gt. (mean_tab_pert_aleat + std_tab_pert_aleat)) then
	 !	q_idl(1,i,j,k) = mean_tab_pert_aleat + std_tab_pert_aleat
	 !  elseif (q_idl(1,i,j,k) .lt. (mean_tab_pert_aleat - std_tab_pert_aleat)) then
	 !	q_idl(1,i,j,k) = mean_tab_pert_aleat - std_tab_pert_aleat
	 if (q_idl(1,i,j,k) .lt. (mean_tab_pert_aleat - std_tab_pert_aleat)) then
		q_idl(1,i,j,k) = mean_tab_pert_aleat - std_tab_pert_aleat
	 endif
      end do
   end do
end do


q(:,:,:)= d0*(1.0 + delta_rho * (q_idl(1,:,:,:)/(1.01*abs(mean_tab_pert_aleat-std_tab_pert_aleat))) )
q_mean = sum(q(:,:,:)) / size(q(:,:,:))
q(:,:,:) = q(:,:,:)/q_mean *d0
q_mean = sum(q(:,:,:)) / size(q(:,:,:))

pourcent_pert = sqrt( sum( (q(:,:,:)-q_mean)**2 )  /size(q(:,:,:))) /q_mean


     q_idl(1,:,:,:)=q(:,:,:)

     q_idl_mean_coeur = 0.d0
     count_cell_coeur = 0.d0
     pourcent_pert_coeur = 0.d0
     do k=1,n_size
        do j=1,n_size
           do i=1,n_size
               if ((i**2+j**2+k**2) .lt. (n_size/4)**2) then
                   q_idl_mean_coeur = q_idl_mean_coeur + q_idl(1,i,j,k)
                   count_cell_coeur = count_cell_coeur + 1
               end if
           enddo
        enddo
     enddo

      q_idl_mean_coeur = q_idl_mean_coeur / count_cell_coeur

     do k=1,n_size
        do j=1,n_size
           do i=1,n_size
               if ((i**2+j**2+k**2) .lt. (n_size/4)**2) then
                   q_idl(1,i,j,k) = q_idl(1,i,j,k)/q_idl_mean_coeur *d0
               end if
           enddo
        enddo
     enddo


     q_idl_mean_coeur = 0.d0
     count_cell_coeur = 0.d0
     pourcent_pert_coeur = 0.d0
     do k=1,n_size
        do j=1,n_size
           do i=1,n_size
               if ((i**2+j**2+k**2) .lt. (n_size/4)**2) then
                   q_idl_mean_coeur = q_idl_mean_coeur + q_idl(1,i,j,k)
                   count_cell_coeur = count_cell_coeur + 1
               end if
           enddo
        enddo
     enddo

      q_idl_mean_coeur = q_idl_mean_coeur / count_cell_coeur
     
     do k=1,n_size
        do j=1,n_size
           do i=1,n_size
               if ((i**2+j**2+k**2) .lt. (n_size/4)**2) then
                   pourcent_pert_coeur =  pourcent_pert_coeur + (q_idl(1,i,j,k)-q_idl_mean_coeur)**2
               end if
           enddo
        enddo
     enddo

     pourcent_pert_coeur = sqrt( pourcent_pert_coeur / count_cell_coeur ) /q_idl_mean_coeur




mean = sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:))
var = sum( (q_idl(1,:,:,:) - mean)**2 ) /size(q_idl(1,:,:,:))
std = sqrt(var)

mean_pert_abs = sum( abs(q_idl(1,:,:,:)) ) /size(q_idl(1,:,:,:))    /(1.01*abs(mean_tab_pert_aleat-std_tab_pert_aleat))
!min_pert = minval(q)

!write(*,*) mean, std
!write(*,*) minval(q), maxval(q), mean_pert_abs
write(*,*) 'Densite moyenne = ', q_mean
write(*,*) 'Niveau de perturbation RMS = ', pourcent_pert
write(*,*) 'Densite moyenne dans coeur = ', q_idl_mean_coeur
write(*,*) 'Niveau de perturbation RMS dans coeur = ', pourcent_pert_coeur





end

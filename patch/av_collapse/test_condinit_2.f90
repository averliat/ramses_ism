!Programme pour afficher les valeurs max et min de chaque colonne du fichier 'turb_init.data'

program test
implicit none


real(kind=8):: ind, seed1, seed2, seed3
real(kind=8), dimension(1:3,1:100,1:100,1:100):: q_idl
!real, dimension(1:100*100*100):: perturb_tab
integer :: i, j, k, n_size
real(kind=8):: xi, yi, zi, vx ,vy, vz
real(kind=8):: mean_tab_pert_aleat, var_tab_pert_aleat, std_tab_pert_aleat, mean, var, std, mean_pert_abs
real(kind=8):: delta_rho, d0, q_idl_mean, q_idl_mean_norm, pourcent_pert
real(kind=8), dimension(1:100,1:100,1:100):: q

write(*,*) 'Entrer d0 : '
read(*,*) d0

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
!max_tab_pert_aleat = max( abs(maxval(q_idl(1,:,:,:))), abs(minval(q_idl(1,:,:,:))) ) !Calcul possible dans tous les cas puisque le fichier 'init_turb.data' a ete lu
mean_tab_pert_aleat = sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:))
var_tab_pert_aleat = sum( (q_idl(1,:,:,:) - mean_tab_pert_aleat)**2 ) /size(q_idl(1,:,:,:))
std_tab_pert_aleat = sqrt(var_tab_pert_aleat)




 !Coupure basse dans le niveau de perturbation (doit etre > -1)
 do k=1,n_size
    do j=1,n_size
       do i=1,n_size
	   if (q_idl(1,i,j,k) .lt. (mean_tab_pert_aleat - std_tab_pert_aleat)) then
		q_idl(1,i,j,k) = mean_tab_pert_aleat - std_tab_pert_aleat
	   endif
	   q_idl(1,i,j,k) = d0* (1.0 + delta_rho * (q_idl(1,i,j,k)/(1.01*abs(mean_tab_pert_aleat-std_tab_pert_aleat))) )
       end do
    end do
 end do

 !Renormalisation pour avoir la moyenne toujours a d0
 q_idl_mean = sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:))
 q_idl(1,:,:,:) = q_idl(1,:,:,:)/q_idl_mean *d0

 !Calcul de la nouvelle moyenne (normalement d0) et de la valeur RMS des perturbations et sorties pour verifications
 q_idl_mean_norm = sum(q_idl(1,:,:,:)) / size(q_idl(1,:,:,:))
 pourcent_pert = sqrt( sum( (q_idl(1,:,:,:)-q_idl_mean_norm)**2 )/size(q_idl(1,:,:,:)) ) /q_idl_mean_norm

 write(*,*)
 write(*,*)
 write(*,*) '=============================================================================='
 write(*,*) 'Verification des caracteristiques de densite:'
 write(*,*) 'Valeur de d0 : ', d0
 write(*,*) 'Valeur moyenne finale de la densite : ', q_idl_mean_norm
 write(*,*) 'Niveau de perturbation RMS par rapport a la densite moyenne : ', pourcent_pert
 write(*,*) '=============================================================================='
 write(*,*)
 write(*,*)
 !Fin du calcul des perturbations






end

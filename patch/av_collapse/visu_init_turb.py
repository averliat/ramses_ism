import numpy as np
import matplotlib.pyplot as plt
plt.ion()


data=np.loadtxt('reduc_init_turb.data')  #reduc_init_turb.data = init_turb_data sans la premiere ligne

plt.plot(np.transpose(data)[3],marker='.',linestyle='none')  #Mettre 3, 4, 5 pour vx, vy et vz, zoomer --> motif "periodique" du a ramses qui organise les cellules en ligne unidimensionnelle


#Pour tracer la valeur absolue
#plt.plot(np.abs(np.transpose(data)[3]),marker='.',linestyle='none')

#Pour tracer l'histogramme de la distribution
#plt.hist(np.transpose(data)[3], range=(np.min(np.transpose(data)[3]),np.max(np.transpose(data)[3])), bins=1000)

#np.mean
#np.std


rdata=np.copy(np.transpose(data)[3])
bdata=np.copy(rdata)

mean = np.mean(rdata)
sig=np.std(rdata)
pertmax= np.max(rdata)
pertmin=np.min(bdata)
'''
for i in range(len(bdata)):
	if bdata[i] > mean+sig:
		bdata[i] = mean+sig
	elif bdata[i] < mean-sig:
		bdata[i] = mean-sig
'''
for i in range(len(bdata)):
	if bdata[i] < mean-sig:
		bdata[i] = mean-sig
#plt.figure()
#plt.hist(bdata, range=(np.min(bdata),np.max(bdata)), bins=1000)

nmean=np.mean(bdata)
nstd=np.std(bdata)
npertmax=np.max(bdata)
npertmin=np.min(bdata)



perturbation_utilisee = bdata / np.abs((1.01*np.min(bdata)))

#plt.hist(perturbation_utilisee, range=(np.min(perturbation_utilisee),np.max(perturbation_utilisee)), bins=1000)

#=============================
#Trace de l'histogramme propre
#=============================
cmappts = plt.get_cmap('magma')
colorspts = [cmappts(i) for i in np.linspace(0.1,0.9,7)]

bins=1000

plt.figure()
hist=np.histogram(perturbation_utilisee, bins=bins)

#plt.bar(hist[1][0:bins], hist[0], width=0.1, color=colorspts[2])
plt.plot(hist[1][0:bins], hist[0], color=colorspts[2])

#plt.xlim((-1.5, np.max(perturbation_utilisee)))
plt.ylim((0,np.sort(hist[0])[-2]*1.2))
plt.xlabel('Perturbation en densite')
plt.ylabel('Nombre de cellules')
plt.show()

#plt.savefig('./figures/Histogramme_perturbation_RMS.pdf', bbox_inches='tight')

#=============================
#=============================


pert_mean_vrai = np.mean(abs(bdata)) / np.abs((1.01*np.min(bdata)))
pert_min_vrai = np.min(bdata / np.abs((1.01*np.min(bdata))))
pert_max_vrai = np.max(bdata / np.abs((1.01*np.min(bdata))))



d0 = 10

'''
delta_rho_05 = 0.5
d_05 = d0*(1+delta_rho_05*perturbation_utilisee)
d_05= d_05/np.mean(d_05) * d0

delta_rho_099 = 0.99
d_099 = d0*(1+delta_rho_099*perturbation_utilisee)
d_099= d_099/np.mean(d_099) * d0


plt.hist(d_05, range=(np.min(d_05),np.max(d_05)), bins=1000)

pert_05=(d_05/d0 -1) / delta_rho_05
pert_mean=np.mean(abs(pert_05)) / np.abs((1.01*np.min(pert_05)))
'''


def pourcent_pert(delta_rho):
	#delta_rho = 0.6
	d = d0*(1+delta_rho*perturbation_utilisee)
	d = d/np.mean(d) * d0
	dm=np.mean(d)
	np.sqrt( np.sum( (d-dm)**2 ))

	pert=(d/d0 -1) / delta_rho
	pert_mean=np.mean(abs(pert)) / np.abs((1.01*np.min(pert)))

	pourcent_pert = np.sqrt( np.sum( (d-dm)**2 ) /len(d)) /dm
	return (pourcent_pert)#, np.shape(np.where(d<0)))


def verif_densite_finale(d0,delta_rho):
	#delta_rho = 0.6
	d = d0*(1+delta_rho*perturbation_utilisee)
	d = d/np.mean(d) * d0
	dm=np.mean(d)
	#np.sqrt( np.sum( (d-dm)**2 ))

	#pert=(d/d0 -1) / delta_rho
	#pert_mean=np.mean(abs(pert)) / np.abs((1.01*np.min(pert)))

	pourcent_pert = np.sqrt( np.sum( (d-dm)**2 ) /len(d)) /dm
	return (pourcent_pert, np.shape(np.where(d<0)))


'''
rho_RMS_voulu = 0.3
eps = 1e-3

rho_RMS = pourcent_pert(rho_RMS_voulu)

while (rho_RMS < rho_RMS_voulu-eps or rho_RMS > rho_RMS_voulu+eps)
	rho_RMS = poucent_pert( ...
'''

















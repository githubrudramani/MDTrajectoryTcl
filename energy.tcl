package require namdenergy

set mol [mol new "PHE1/namd/ionized.psf" waitfor all]
mol addfile "PHE1/namd/150.dcd" molid $mol step 1  waitfor all
puts "SURU BHAYO ABA"
set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-111.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/GL11.str 

set mol [mol new "LYS2/namd/ionized.psf" waitfor all]
mol addfile "LYS2/namd/150.dcd" molid $mol step 1  waitfor all
puts "SURU BHAYO ABA"
set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-112.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/LYS2/namd/GL11.str 
 

puts "SURU BHAYO ABA SECOND ROUND"

set mol [mol new "LEU6/namd/ionized.psf" waitfor all]
mol addfile "LEU6/namd/150.dcd" molid $mol step 1  waitfor all

set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-116.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/LEU6/namd/GL11.str 


puts "SURU BHAYO ABA THIRD ROUND"

set mol [mol new "PRO9/namd/ionized.psf" waitfor all]
mol addfile "PRO9/namd/150.dcd" molid $mol step 1  waitfor all

set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-119.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PRO9/namd/GL11.str 

puts "SURU BHAYO ABA FORTH ROUND"
set mol [mol new "ARG13/namd/ionized.psf" waitfor all]
mol addfile "ARG13/namd/150.dcd" molid $mol step 1  waitfor all

set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-1113.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/ARG13/namd/GL11.str 

set mol [mol new "PHE17/namd/ionized.psf" waitfor all]
mol addfile "PHE17/namd/150.dcd" molid $mol step 1  waitfor all
puts "SURU BHAYO ABA FIFTH ROUND"
set sel1 [atomselect top "protein"]
set sel2 [atomselect top "water"]
#set sel2 [atomselect top "same residue as water and  within 4 of protein"]
namdenergy -elec -vdw  -sel $sel1   $sel2 -updatesel -ofile "E-1117.dat" -skip 0 -exe /home/rpokhrel/Downloads/RUDRA/NAMD_CPU/namd2 -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_carb.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_cgenff.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_lipid.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36m_prot.prm  -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/par_all36_na.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycolipid.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_glycopeptide.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_all36_carb_imlab.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/toppar/toppar_water_ions.str -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE1/namd/mutacin.prm -par /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-SOLUBILITY-EXTENDED/GL11/PHE17/namd/GL11.str 

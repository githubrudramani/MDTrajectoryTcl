

#set folder {GL12 GL14 GL15 GL22 GL23 GL24 GL25 GL13}
#set position {PHE1 LYS2 TRP4 LEU6 PRO9 ARG13 PHE17}





package require hbonds 
set position {E293-301  E295-303  E366-374  E80-88}

foreach name $position {

set mol [mol new "$name/charmm-gui/namd/step3_charmm2namd.psf" waitfor all]
mol addfile "$name/charmm-gui/namd/500.dcd" molid $mol  step 1  waitfor all

set sel1 [atomselect top "segname PROA"]
set sel2 [atomselect top "segname PROB"]
hbonds -sel1 $sel1 -sel2 $sel2 -writefile yes -upsel yes -frames all -dist 3.5 -ang 30 -plot no -outfile HB-$name.dat -polar yes -DA both -type all -detailout HB-$name-detail.dat
$sel1 delete
$sel2 delete

}
puts "$name"




set mol [mol new "step5_charmm2namd.psf" waitfor all]
mol addfile "1000.dcd" molid $mol first 7550 last 12499 step 10  waitfor all
set sel [atomselect top "all"]
set pos [measure avpos $sel]
$sel set {x y z} $pos
$sel writepdb /DataDrive/rpokhrel/New_mutacin_from_nisin/MUT-DELP-KHACHR/Analysis/Average-pdb/avgZM.pdb

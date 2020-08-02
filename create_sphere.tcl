
namespace import ::tcl::mathfunc::*

proc cat files {
    set res ""
    foreach file [eval glob $files] {
        set fp [open $file]
        append res [read $fp [file size $file]]
        close $fp
    }
    set res
 }


set r 170
set j 1
for {set theta 0} {$theta <= 180} {set theta [expr $theta +10]} {
	set t [expr $theta/57.2957795]
	set m [sin $t]
	set N [expr (36 * $m*$m+1)] 
	set N [format "%.0f" $N]
	for {set phi 0} {$phi < 360} {set phi [expr $phi +(360/$N)]} {
		mol load pdb center
		set sel [atomselect top all]
		set f [expr $phi/57.2957795]
		set m [sin $t]
		set n [sin $f]
		set p [cos $t]
		set q [cos $f]
		set x [expr $r*$q*$m]
		set y [expr $r*$n*$m]
		set z [expr $r*$p]
		set tr [list $x	$y	$z]
		$sel moveby $tr
		$sel set resid $j
		$sel writepdb $j.pdb
		set j [expr $j+1]
		mol delete top
		}	
	}
set j [expr $j-1]
puts "Total NO::: $j"
set out [open "all.pdb" w]
set PDB [cat *.pdb]
puts $out $PDB
close $out
exec sed {s/END/TER/g} all.pdb > combined
foreach pdb [eval glob *.pdb] {
        exec rm $pdb }

exec mv combined output/combined.pdb
mol load pdb output/combined.pdb 




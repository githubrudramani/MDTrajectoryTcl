exec cd /Users/rudramani/workPlace/Khachhar/25-40/Output
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

mol load pdb ../input.pdb
set sel [atomselect top all]
set gec [measure center $sel]
set M [trans origin $gec]
$sel move  $M
$sel writepdb ../center.pdb


        


        set sel [atomselect top "protein and resid 7 to 13  and name CA"]
        set sel2 [atomselect top "protein and resid 25 to 33  and name CA"]
        set com1 [measure center $sel weight mass]
        set com2 [measure center $sel2 weight mass]
        set vec [vecsub $com1 $com2]
        set M [ transvecinv $vec]
        set sel0 [atomselect top "protein or resname LIP"]
        $sel0 move $M
        set M [transaxis y -90]
        $sel0 move $M


mol delete top

set r 15
set n 5
set Dt [expr 360/$n]
set chr {PROA PROB PROC PROD PROE}
set mar {HETA HETB HETC HETD HETE}
set i 0
for {set theta 0} {$theta < 360} {set theta [expr $theta +$Dt]} {
        mol load pdb ../center.pdb
        set sel [atomselect top all]
        set M [transaxis z $theta]
        $sel move $M
        set t [expr $theta/57.2957795]
        set m [sin $t]
        set n [cos $t]
        set x [expr $r*$n]
        set y [expr $r*$m]
        set tr [list $x $y  0]

        $sel moveby $tr
        set A [lindex $chr $i]
        set B [lindex $mar $i]
        set p [atomselect top protein]
        set l [atomselect top "resname LIP"]
        $p set segname $A 
        $l set segname $B
        $sel writepdb $i.pdb
        set i [expr $i+1]
        mol delete top
        }

        set out [open "all.pdb" w]
set PDB [cat *.pdb]
puts $out $PDB
close $out
exec sed {s/END/TER/g} all.pdb > combined
foreach pdb [eval glob *.pdb] {
        exec rm $pdb }

exec mv combined combined.pdb
mol load pdb combined.pdb 






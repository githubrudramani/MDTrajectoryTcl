	set sel [atomselect top "resname CLA" frame 0]
	set nf [molinfo top get numframes]
	set z [$sel get  {z}]
	set l [list $z]
        set index [$sel get index]
	set k [list $index] 
	#set data [lappend {%s    %s} $index $z]
	set data [concat $k $l]  
        #getting z coordinates            
	set length [llength $z] 
        # getting total elements in z
	set outfile [open first_frame.dat w]
	for {set i 0} {$i < $length} {incr i} {
	      set a [lindex $data 1 $i]
	      set b [lindex $data 0 $i]
             if {$a < -8} {
             puts  " $b  $a "
	     puts $outfile "$b"
             }
	     }
         close $outfile
	set fp [open "first_frame.dat" r]
	set file_data [read $fp]
	close $fp
        set data2 [split $file_data "\n"]
        lindex $data2  0 
	set j [llength $file_data]
	set outfile2 [open flux.dat w]
	for {set m 0} {$m < $j} {incr m} {
		for {set n 1} {$n < $nf} {incr n} {
			set index2 [lindex $file_data $m]
			set sel2 [atomselect top "index $index2" frame $n]
			set z2 [$sel2 get {z}]
			if {($z2 > 0) && ($z2 < 5)} {
				puts " $index2  $n "
				puts $outfile2 " $index2 $n "
                 }}}
	close $outfile2
	
		#sort index.dat | uniq
                #xargs < uniq.dat

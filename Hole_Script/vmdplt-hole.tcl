set k 0
for {set i 2281} {$i < 2880} {incr i} {
     mol load pdb $k.pdb
     source hole$k.vmd_plot
     rotate x by -90
     scale by 2
     mol rep Newcartoon
     mol material Transparent
     mol color ColorID 16
     mol addrep $i
     # added new representation for molid 1
     mol delrep 0 $i
     #deleted 0 representation for molid 1 
     #render Tachyon $i.dat "/Applications/VMD\ 1.9.2.app/Contents/vmd/tachyon_MACOSXX86" -aasamples 12 %s -format TARGA -o %s.tga
     render snapshot $k.tga
      mol delete $i
      set k [expr $k+1]
      }
     #rotate < x | y | z > by angle


## movie making from tga files.
##ffmpeg -r 30 -i %d.tga -c:v libx264 -vf fps=25 -pix_fmt yuv444p L.mp4
#ffmpeg -r 25 -i %d.tga  -vf "format=yuv444p,scale=725:755" -c:a copy output.mp4
#ffmpeg -r 25 -i %d.tga  L.mp4

     

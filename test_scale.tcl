proc generate_data {} {
    set data [list]
    for {set x 0} {$x < 500} {incr x} {
	set row [list]
	for {set y 0} {$y < 500} {incr y} {
	    set rb [random_byte]
         lappend row [format "#%02x%02x%02x" $rb $rb $rb]
      }
      lappend data $row
   }
   return $data
}
 
proc random_byte {} {
   return [expr {int(rand() * 256)}]
}

proc scaleImage {im xfactor {yfactor 0}} {
    set mode -subsample
    if {abs($xfactor) < 1} {
       set xfactor [expr round(1./$xfactor)]
    } elseif {$xfactor>=0 && $yfactor>=0} {
        set mode -zoom
    }
    if {$yfactor == 0} {set yfactor $xfactor}
    set t [image create photo]
    $t copy $im
    $im blank
    $im copy $t -shrink $mode $xfactor $yfactor
    image delete $t
    return $im
 }

set image [image create photo] 
$image put [generate_data]

set image [scaleImage $image 3]

#label .l -image [scaleImage $image 0.5]
label .l -image $image
pack .l

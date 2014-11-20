#!/bin/bash

adlar=("araba"
       "badire"
       "cadı"
       "çene"
       "dans"
       "efe"
       "figür"
       "gece"
       "haber"
       "ıstakoz"
       "iplik"
       "jeton"
       "kaçış"
       "latife"
       "macera"
       "nakış"
       "oda"
       "öfke"
       "patik"
       "radyo"
       "samuray"
       "şiir"
       "teneke"
       "usta"
       "üçgen"
       "vaat"
       "yasa"
       "zeytin")
sifatlar=("adi"
	  "benekli"
	  "cazip"
	  "çağdaş"
	  "dandik"
	  "ebruli"
	  "fevkalade"
	  "gevrek"
	  "hımbıl"
	  "ılık"
	  "ideal"
	  "kadife"
	  "lezzetli"
	  "manyetik"
	  "nahoş"
	  "okkalı"
	  "özel"
	  "parlak"
	  "renkli"
	  "sağlam"
	  "şeffaf"
	  "titiz"
	  "utangaç"
	  "üzgün"
	  "verimli"
	  "yabani"
	  "zarif")
names=("arrow"
       "book"
       "candle"
       "drum"
       "eraser"
       "flag"
       "glasses"
       "hat"
       "icecube"
       "javelin"
       "knife"
       "lotion"
       "map" 
       "nail"
       "outlet"
       "pencil" 
       "quilt" 
       "rock"
       "scissors"
       "thread"
       "vase"
       "wheelbarrow"
       "zipper")
adjectives=("attractive"
	    "broken"
	    "colorful"
	    "dirty"
	    "fancy"
            "gorgeus"
	    "huge"
	    "long"
	    "massive"
	    "narrow"
	    "prickly"
	    "quaint"
	    "round"
	    "shiny"
	    "tiny"
	    "ugly"
	    "wide")

function uretec()
{
    sayac=0
    while [ "$sayac" -lt $1 ]
    do
	case $2 in 
	"-en")
            indadj=$(( $RANDOM%${#adjectives[@]} ))
            indname=$(( $RANDOM%${#names[@]} ))
            echo ${adjectives[indadj]}" "${names[indname]}
	;;
	"-tr")
	    indsifat=$(( $RANDOM%${#sifatlar[@]} ))
	    indad=$(( $RANDOM%${#adlar[@]} ))
	    echo ${sifatlar[indsifat]}" "${adlar[indad]}
	;;
	*)
	    echo "Seçiminiz hatalı görünüyor. -en veya -tr olmalıydı."
	esac
	sayac=$(( sayac+1 ))
    done
}  

uretec $1 $2



#!/bin/bash
adlar=(
  "araba"
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
sifatlar=(
  "adi"
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
names=(
  "arrow"
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
adjectives=(
  "attractive"
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

function helpme {
  echo -e "YARDIM:"
  echo "    Herhangi bir alanda kullanılmak üzere bir isim ve bir sıfattan oluşan"
  echo "    tamlamalar yaratan uygulamadır."

  echo -e "KULLANIM:"
  echo "    rasgele adet dil "

  echo -e "SEÇENEKLER:"
  echo "    -h ya da --help : yardımı gösterir."
  echo "    adet(rakam) : Kaç adet tamlama üretilsin?"
  echo "    -tr : Türkçe tamlamalar üretir."
  echo "    -en : İngilizce tamlamalar üretir."
  echo -e "Örnek: 
      'rasgele 2 -tr'"
  echo -e "${BBlu}Çıktı:${RCol} 
      'zarif efe
      gevrek zeytin'"
  exit
}

function uretec() {

  if [ "$1" == "-h" ]; then
  helpme
  fi

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
      echo "Seçiminiz hatalı görünüyor. Yardım için -h parametresini kullanın."
    esac

  sayac=$(( sayac+1 ))
  done

  if [ "$?" = "0" ]; then
    echo "Seçiminiz hatalı görünüyor. Yardım için -h parametresini kullanın." 1>&2
  exit 1
fi
}  

uretec $1 $2

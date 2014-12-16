#!/bin/bash
#replaceunderscorewithspace.sh salih özdemir 2014 

function helpme {
  echo -e "YARDIM:"
  echo "    Bir dizgideki kelime arası alt tire (underscore) karakterlerini boşlukla"
  echo "    değiştiren uygulamadır."

  echo -e "KULLANIM:"
  echo "    replaceunderscorewithspace kelime "

  echo -e "SEÇENEKLER:"
  echo "    -h : yardımı gösterir."
  echo -e "Örnek: 
      'replaceunderscorewithspace _salih_ozdemir'"
  echo -e "Çıktı: 
      '_salih ozdemir"
  exit
}

function replace() {
  for arg in "$@"
  do
    unreplaced="$arg"
  done

  if [ "$unreplaced" == "" ] || [ "$unreplaced" == "-h" ]
  then
    helpme
  fi

  if [ "$unreplaced" == "_" ]
  then
    replaced="_"
  fi

  len=${#unreplaced}
  i=0
  while [ $i -lt $len ]
  do
    dizi[$i]=${unreplaced:$i:1}
    i=$((i+1))
  done

  for ((a=0; a < $len; a++))
  do
    if [ "${dizi[$a]}" != "_" ]
    then
      break
    fi
   done

  for (( b=$((len-1)); b > 0; b-- ))
  do
    if [ "${dizi[$b]}" != "_" ]
    then
      break
    fi
  done

  for (( i=$a ; i < $b ; i++ ))
  do
    if [ ${dizi[$i]} == '_' ]
    then
      dizi[$i]=" "
    fi
  done

  cikti=$(IFS= ; echo "${dizi[*]}")
  echo "$cikti"
}
replace $@

#Stil referansı: http://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf

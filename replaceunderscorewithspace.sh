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

for arg in "$@"
do
unreplaced="$arg"
done

if [ "$unreplaced" == "" ] || [ "$unreplaced" == "-h" ] ; then
helpme
fi

if [ "$unreplaced" == "_" ]; then
replaced="_"
fi

replaced=`echo $unreplaced | sed -e 's,_, ,g'`

# i=0
# if [ ${unreplaced:i:1} = "_" ]; then
#   replaced+="_"
# fi

# str=$unreplaced
# IFS='_'
# words=($str)
# for key in "${!words[@]}"; do 
#   replaced+="${words[$key]}"; done

# if [ "${unreplaced: -1}" = "_" ]; then 
#   replaced+="_"
# fi

echo "$replaced"

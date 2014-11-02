#!/bin/bash
#replaceunderscorewihspace.sh salih özdemir 2014 

RCol='\e[0m'    # Text Reset

# Regular           Bold                Underline           High Intensity      BoldHigh Intens     Background          High Intensity Backgrounds
Bla='\e[0;30m';     BBla='\e[1;30m';    UBla='\e[4;30m';    IBla='\e[0;90m';    BIBla='\e[1;90m';   On_Bla='\e[40m';    On_IBla='\e[0;100m';
Red='\e[0;31m';     BRed='\e[1;31m';    URed='\e[4;31m';    IRed='\e[0;91m';    BIRed='\e[1;91m';   On_Red='\e[41m';    On_IRed='\e[0;101m';
Yel='\e[0;33m';     BYel='\e[1;33m';    UYel='\e[4;33m';    IYel='\e[0;93m';    BIYel='\e[1;93m';   On_Yel='\e[43m';    On_IYel='\e[0;103m';
Blu='\e[0;34m';     BBlu='\e[1;34m';    UBlu='\e[4;34m';    IBlu='\e[0;94m';    BIBlu='\e[1;94m';   On_Blu='\e[44m';    On_IBlu='\e[0;104m';

function helpme {
echo -e "${BRed}YARDIM:${RCol}"
echo "Bir dizgideki kelime arası alt tire (underscore) karakterlerini boşlukla"
echo "değiştiren kabuk uygulamasıdır."
echo -e "${BRed}KULLANIM:${RCol}"
echo -e "${BBlu}Seçenekler:${RCol}"
echo "-h ya da --help : yardımı gösterir."
echo "-a ya da --all : tüm alt tireleri boşluğa çevirir."
echo "Argüman olarak ortadaki alt tire(underscore)lerden arındırmak istenilen"
echo "argümanı girin. Çıktı olarak alt tirelerin yerine boşluk konmuş hali"
echo "dönecektir."
echo -e "${BBlu}Örnek:${RCol} 'replaceunderscorewithspace  _salih_ozdemir'"
echo -e "${BBlu}Çıktı:${RCol} '_salih ozdemir'"
exit
}

function replaceall {
replaced=${unreplaced//_/ }
}

for arg in "$@" # komut satırından gelen seçeneği al.
do
if [ "$arg" != "-h" ]; then
unreplaced="$arg"
fi
case "$arg" in
-h | --help ) help=1 ;; # yardım isteniyor. 
-a | --all ) all=1 ;; # hepsini değiştir.
esac
done

if [ "$unreplaced" == "" ];then
helpme
fi

if [ "$help" = "1" ]; then # yardım et. 
helpme
fi

if [ "$all" = "1" ]; then 
replaceall
fi

echo -e "$replaced" | sed -e 's/^[ \t]*//'

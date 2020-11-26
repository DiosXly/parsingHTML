 
#!bin/bash
if [ "$1" == "" ]
then
echo -e "\033[1;33m";
figlet -w 200 "parsingHTML";
echo -e "|-[!] Feito por Dios Xly"
echo -e "\033[1;31mX_ [X] MODO DE USO : bash $0 www.alvo.com\033[0m"
else
echo -e "\033[1;33m";
figlet -w 200 "parsingHTML";
echo -e "|-[!] Feito por Dios Xly";
echo -e "\_[*] ALVO : $1 ";
echo -e "\033[0m   |";
echo -e "   |-[*] BASHING WGET...";
wget $1 &> /dev/null;
echo -e "   |-[*] OK!";
echo -e '   |-[*] FILTRANDO HTML...';
cat index.html | grep 'href=' | cut -d '"' -f 2 | cut -d '/' -f 3 | uniq -u | grep '\.' > $1.ips.txt
echo -e "\033[1;31m    \_[*] FILTRADO! SALVO EM \033[44;1;37m./$1.ips.txt \033[0m";
echo -e "\033[0;31m ======================\033[1;31mSUBDOMIOS ENCONTRADOS COM IP\033[0;31m=======================\033[1;32m"; 
for url in $(cat $1.ips.txt); do host $url | grep "has address";done
rm -rf index.html | rm -rf lista
echo -e "\033[0;31m ==================\033[1;31mLOGS DEIXADOS PELA FERRAMENTA LIMPO!\033[0;31m====================";
fi

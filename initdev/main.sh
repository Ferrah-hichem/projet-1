# !/ bin / bash
echo "$1 $2 $3 $4 "
if [ $# -eq 0 ];then 
echo "Expected arguments, please check the help : initdev –help" 
fi
if [ $# -eq 1 ];then
if [ "$1" = "-Name" ];then
echo " 	Nom de l'application : initdev ";
echo " Description : cette application ( ou commande ) permet de créer un projet initiale et initialise un depot git en greffant un fichier de base , une lisence et un .gitgnore en choisissant le language , la liscence en arguments ";
echo " *taper initdev -args pour voir les arguments nécessaire pour le bon deroulement de la commande ";
elif [ "$1" = "-help" ];then
echo "Arguments:" ;
echo "-Name : Afficher le nom de l’application et une petite description."
echo "-Syntax : Afficher la syntaxe d’utilisation de la commande initdev."
echo "-args : Lister les arguments et donner une description de chaque argument."
echo "-author : Afficher le nom et l’email de l’auteur de l’application." 
elif [ "$1" = "-Syntax" ];then
echo "Syntaxes d'utilisations (incomplet) "
elif [ "$1" = "-args" ];then
echo "Arguments : (incomplet) "
elif [ "$1" = "-author" ];then
echo "Auteur: (incomplet) "
else
mkdir "$1"
touch "$1"/main
touch "$1"/LICENSE
touch "$1"/makefile 
fi
elif [ $# -eq 2 ];then
elif [ "$2" = "-C" ];then
mkdir "$1" ;
cp $home/.initdev/sources/main.c "$1"/ 
touch "$1"/LICENSE ;
touch "$1"/Makefile ;
elif [ "$2" = "-CPP" ] || [ "$2" = "-C++" ] ;then
mkdir "$1" ;
cp $home/.initdev/sources/main.cpp "$1"/ 
touch "$1"/LICENSE ;
touch "$1"/Makefile ;
elif [ "$2" = "-Py" ];then
mkdir "$1" ;
cp $home/.initdev/sources/main.Py "$1"/ 
touch "$1"/LICENSE ;
touch "$1"/Makefile ;
elif [ "$2" = "-Latex" ];then
mkdir "$1" ;
cp $home/.initdev/sources/latexMin.tex "$1"/
mv latexMin.tex Main.tex
touch "$1"/LICENSE ;
touch "$1"/Makefile ;
elif [ "$2" = "-BEAMER" ];then
mkdir "$1" ;
cp $home/.initdev/sources/beamer.tex "$1"/
mv beamer.tex Main.tex
touch "$1"/LICENSE ;
touch "$1"/Makefile ;
elif [ "$2" = "-GPL" ];then
mkdir "$1" ; 
touch "$1"/main ;
cp $home/.initdev/licenses/GPL "$1"/
mv GPL LICENSE
touch "$1"/Makefile ;
elif [ "$2" = "-MIT" ];then
mkdir "$1" ; 
touch "$1"/main ;
cp $home/.initdev/licenses/MIT "$1"/
mv MIT LICENSE
touch "$1"/Makefile ;
elif [ $# -eq 3 ];then
else
echo "Uknown arguments, please check the help : initdev –help" ;

fi


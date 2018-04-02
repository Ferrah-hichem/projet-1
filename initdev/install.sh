# !/ bin / bash
cd /home/"$USER"/
if [ -e .initdev ]; then 
echo " le dossier initdev existe deja "
n=2
while [ -e .initdev"$n" ]
do
n=$(expr $n + 1)
done
mv /home/"$USER"/.initdev /home/"$USER"/.initdev"$n"
echo " le dossier deja existant a éte renommé en .initdev$n"
else
echo " le dossier initdev n'existe pas "
fi 
echo " preparation de l'installation de la commande initdev..."
mkdir /home/"$USER"/.initdev
b="1"
chemin=$PWD
cheminp=$PWD
while [ $b = "1" ]
do
if { [ -d gitignores ] && [ -d bin ] && [ -d sources ] && [ -d licenses ] && [ -d makefiles ] };then
echo "Copie des dossiers et fichiers pour  la commande initdev..."
cp $chemin/gitignores /home/"$USER"/.initdev/gitignores
cp $chemin/bin /home/"$USER"/.initdev/bin
cp $chemin/Sources  /home/"$USER"/.initdev/Sources 
cp $chemin/Licences /home/"$USER"/.initdev/Licences
cp $chemin/Makefiles /home/"$USER"/.initdev/Makefiles
else
echo "Erreur : Des repertoires ou des fichiers introuvables veuillez indiquer le repertoire dans lequel les fichiers d'installations de la commande initdev ce trouve , exemple /home/user/download/initdev/
entrer un chemin (entrer 0) pour arreter l'installation :"
read chemin
echo "$chemin"
if [ "$chemin" = "0" ]; then
rmdir /home/ridesurfer/.initdev
b="0"
else
cd "$chemin"
fi
fi
done
while [ $b = "1" ]
do
echo " verification des fichiers..."
done




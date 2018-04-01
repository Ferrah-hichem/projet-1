# !/ bin / bash
if [ $# -eq 0 ];then 
	echo "Expected arguments, please check the help : initdev –help" 
	elif [ $# -eq 1 ];then
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
	else
	if [ $# -eq 2 ];then
		if [ "$2" = "-C" ];then
			mkdir "$1" ;
			cp  home/"$USER"/.initdev/sources/main.c "$1"/ 
			touch "$1"/LICENSE ;
			touch "$1"/Makefile ;
			elif [ "$2" = "-CPP" ] || [ "$2" = "-C++" ] ;then
				mkdir "$1" ;
				cp home/"$USER"/.initdev/sources/main.cpp "$1"/ 
				touch "$1"/LICENSE ;
				touch "$1"/Makefile ;
			elif [ "$2" = "-Py" ];then
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/main.py "$1"/ 
				touch "$1"/LICENSE ;
				touch "$1"/Makefile ;
			elif [ "$2" = "-Latex" ];then
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
				mv "$1"/latexMin.tex "$1"/Main.tex
				touch "$1"/LICENSE ;
				touch "$1"/Makefile ;
			elif [ "$2" = "-BEAMER" ];then
				mkdir "$1" ;
				cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
				mv "$1"/beamer.tex "$1"/Main.tex
				touch "$1"/LICENSE ;
				touch "$1"/Makefile ;
			elif [ "$2" = "-GPL" ];then
				mkdir "$1" ; 
				touch "$1"/main ;
				cp /home/"$USER"/.initdev/licenses/GPL "$1"/
				mv "$1"/GPL "$1"/LICENSE
				touch "$1"/Makefile ;
			elif [ "$2" = "-MIT" ];then
				mkdir "$1" ; 
				touch "$1"/main ;
				cp /home/"$USER"/.initdev/licenses/MIT "$1"/
				mv "$1"/MIT "$1"/LICENSE
				touch "$1"/Makefile ;
			fi 
			echo 'what 3'
		elif [ $# -eq 3 ];then
		arg2="$2"
		arg3="$3"
				if [ "$2" = "$3" ];then
					echo " repetitions d'arguments interdits "
					elif [ "$2" = "-GPL" ] || [ "$2" = "-MIT" ] || [ "$2" = "-git" ] || [ "$3" = "-C" ] || [ "$3" = "-Cpp" ] || [ "$3" = "-C++" ] || [ "$3" = "-Py" ] || [ "$3" = "-Latex" ] || [ "$3" = "-BEAMER" ]  ;then
					arg2="$3"
					arg3="$2"
				fi 
				mkdir "$1" ;
				if [ "$arg2" = "-C" ];then
				
					cp  /home/"$USER"/.initdev/sources/main.c "$1"/ 
					elif [ "$arg2" = "-Cpp" ] || [ "$arg2" = "-C++" ];then
						cp /home/"$USER"/.initdev/sources/main.cpp "$1"/
					elif [ "$arg2" = "-Py" ];then
						cp /home/"$USER"/.initdev/sources/main.py "$1"/
					elif [ "$arg2" = "-Latex" ];then
						
						cp /home/"$USER"/.initdev/sources/latexMin.tex "$1"/
						mv "$1"/latexMin.tex "$1"/Main.tex
					elif [ "$arg2" = "-BEAMER" ];then
						
						cp /home/"$USER"/.initdev/sources/beamer.tex "$1"/
						mv "$1"/beamer.tex "$1"/Main.tex
					else
					echo "You must set project type, please check the help : initdev -help";					
				fi
				if [ "$arg3" = "-GPL" ];then
					cp /home/"$USER"/.initdev/licenses/GPL "$1"/
					mv "$1"/GPL "$1"/LICENSE
					touch "$1"/Makefile ;
					elif [ "$arg3" = "-MIT" ];then
						cp /home/"$USER"/.initdev/licenses/MIT "$1"/
						mv "$1"/MIT "$1"/LICENSE
						touch "$1"/Makefile ;
					elif [ "$arg3" = "-git" ] ;then

						
						if [ "$arg2" = "-C" ];then
							cd "$1"/
							git init
							cd ../
							touch "$1"/LICENSE
							touch "$1"/makefile
							cp /home/"$USER"/.initdev/gitignores/c "$1"/
							mv "$1"/c "$1"/.gitignores
							elif [ "$arg2" = "-Cpp" ] || [ "$arg2" = "-C++" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/"cpp" "$1"/
								mv "$1"/"cpp" "$1"/.gitignore
							elif [ "$arg2" = "-Py" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/python "$1"/
								mv "$1"/python "$1"/.gitignore
							elif [ "$arg2" = "-Latex" ] || [ "$arg2" = "-BEAMER" ];then
								cd "$1"/
								git init
								cd ../
								touch "$1"/LICENSE
								touch "$1"/makefile
								cp /home/"$USER"/.initdev/gitignores/tex "$1"/
								mv "$1"/tex "$1"/.gitignore
						
						fi
						else
						echo "Uknown arguments, please check the help : initdev –help" ;
						rmdir $1
					fi
					echo  $arg2 $arg3
				fi fi
			
			
	
 

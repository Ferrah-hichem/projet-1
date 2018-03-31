# !/ bin / bash
if [ $# -eq 0 ];then 
echo "Expected arguments, please check the help : initdev –help" 
else
mkdir "$1" ;
touch "$1"/main ;
fi

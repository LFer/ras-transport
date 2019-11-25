#! /bin/bash
#rm lista_modulos.txt
for i in $(ls -d */); do echo ${i%%/}; done | cat > lista_modulos.txt
echo "Modulos a recorrer"
cat lista_modulos.txt
for MODULO in $(cat lista_modulos.txt)
do
    echo "Entrando a ${MODULO}"
    cd ${MODULO}
    # echo "    reset ..."
    # git reset --hard
#    git pull origin master
    #git status
    echo "voy a borrar el git del modulo ${MODULO}"
#    sudo rm -r .git/
    rm .gitignore
    echo "pronto el borrado del git del modulo ${MODULO}"
    cd ..
done
#rm lista_modulos.txt
echo "Hecho !"


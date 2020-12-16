#!/bin/sh
###  Variables

echo "Por favor cree el fichero list_url.txt.Dentro copie la lista de los cursos que desea descargar. "
sleep 2
echo "Cuando lo haga presione enter para continuar...\n"
read enter 

unset username
unset password

echo -n "Usuario registrado udemy:"
    read username

  printf "Password please: "
    stty -echo
    read password
    stty echo
  printf '\n'

docker run -it --rm -v ${PWD}/:/data udemy-dl /bin/ash -c "python  /usr/src/udemy-dl/udemy-dl.py -u $username -p$password -o /data/ /data/list_url.txt"

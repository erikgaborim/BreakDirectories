#! /bin/bash
# salva o valor padrão
DEFAULT_IFS=$IFS
# define quebra de linha
IFS=$'\n'

echo "Digite o caminho das pastas a serem separadas: "
	read caminho
cd $caminho
lista=`ls -d */`
count=0
for elemento in $lista
do
	cd $caminho/$elemento
	listaArquivos=`ls`
	count2=0
	countNome=0
	for arquivo in $listaArquivos
	do
		if [ $count2 -gt 48 ] ;
		then
			if [ $(expr $count2 % 49) == 0 ] ;
			then
				countNome=$((countNome + 1))
				auxPasta=`echo $elemento | rev | cut -c2- | rev`
				nomePasta=$auxPasta'_'$countNome
				cd ..
				mkdir $nomePasta
				cd $elemento
				echo $nomePasta criada!
			fi
			mv $arquivo $caminho/$nomePasta
		fi
		count2=$((count2 + 1))
	done
	count=$((count + 1))
done
echo Feito. Processo concluído!

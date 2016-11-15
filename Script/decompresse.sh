#!/bin/sh

#Décompression d'un fichier ou un dossier  au format tgz 
 tar xzf $1

#decompression toute les archives passée en paramétre 
if [ -f "'"$1"'" ] ; then
     case $1 in
         
          *.tar.gz) tar xzf $1 ;;
          *.rar) rar x $1 ;;
          *.gz) gunzip $1 ;;
          *.tar) tar xf $1 ;;
          *.tgz) tar xzf $1 ;;
          *.zip) unzip $1 ;;
          
          *) echo "'$1' ne peut pas être decompressé " ;;
            esac
        else
            echo "'$1' n'est pas valide"
    fi

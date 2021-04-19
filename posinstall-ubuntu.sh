#! /bin/bash

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_ECLIPSE="https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2021-03/R/eclipse-inst-jre-linux64.tar.gz&r=1"

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório

sudo apt update &&

## Instalando pacotes e programas do repositório deb do Ubuntu

sudo apt install python3 python-pip git inkscape -y &&

## Instalando pacotes snap
sudo snap install code --classic &&  

# Softwares que precisam de download externo ##

sudo apt update

## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_ECLIPSE"             -P "$DIRETORIO_DOWNLOADS"

## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb
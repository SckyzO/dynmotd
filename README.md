# Dynmotd - Le motd dynamique

![alt tag](http://www.tomzone.fr/wp-content/uploads/2015/02/putty.jpg)

Depuis que je m’occupe de la gestion d’un parc de serveurs Linux, environ 200, j’ai mis en place certaines petites customisations maison.

Ainsi, dès que je me connecte en SSH à un serveur, un motd dynamique s’exécute et il m’est donc simple de savoir quel est le serveur sur lequel je me connecte. Qu’est ce que le motd me demanderont certains ? Simplement l’abréviation de Message Of The Day.

Mettre en place un motd dynamique est très simple.


## Installation

Installation des pré-requis

Debian / Ubuntu

`sudo apt-get install lsb-release`

RedHat / CentOS

`sudo yum install redhat-lsb-core`

On désactive l’affichage du motd du serveur ssh

`sudo sed -i 's/#PrintMotd yes/PrintMotd no/g' /etc/ssh/sshd_config`

Copiez ensuite les 2 fichiers du github :

```
cd /tmp
git clone https://github.com/SckyzO/dynmotd
cd dynmotd/
sudo cp dynmotd.sh /etc/profile.d/
sudo cp dynmotd /usr/local/bin/
```

Puis connectez vous en SSH ou directement ouvrez un nouveau terminal.

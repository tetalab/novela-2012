# Programmation Attiny

Pour la programmation des attiny : [http://code.google.com/p/arduino-tiny/](http://code.google.com/p/arduino-tiny/)

Il faut créer un répertoire hardware dans les sketchbook et dezipper le bordel dedant (cf read me)

Le schema pour la programmation est dispo ici ==> http://hlt.media.mit.edu/?p=1229

La marche a suivre est la suivante :

1. charger le sketch Arduino as ISP
1. selectionner la board attiny 85 @ 1 mhz
1. ouvrir le skectch novella2012_V4_1IR
1. mettre l'attiny sur le programmateur
1. faire upload

Il y aurra les message d'erreur suivant :

    avrdude: please define PAGEL and BS2 signals in the configuration file for part ATtiny85
    avrdude: please define PAGEL and BS2 signals in the configuration file for part ATtiny85

Pas de souci c'est normal....

Enfin retirer l'attiny et recommencer a partir du point 4 !!!

En cas de problème, n’hésitez pas a faire un hard reset de l'arduino (unplug / plug usb)

# Videos

[Add it making of](https://www.youtube.com/watch?v=NlS9FjQvphM)

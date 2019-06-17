# 2018_3AHIF_SYP_Fahrgemeinschaft

# Starten

Um das Projekt zu starten, im Ordner project docker ausführen.

Mit dem Docker Quickstart Terminal(Windows)/Terimal(Linux oder MacOs) den Befehl ``docker build -t carpool .`` ausführen um ein Image unsers Ruby Projektes zu erstellen. Mit ``docker-compose up -d`` alle Container hochfahren, es werden alle sonstigen Images heruntergeladen und sobald bereit gestartet.

## Linux/MacOs

Unter localhost:3000 kommt man auf die Hauptseite und unter localhost:8000 auf phpmyadmin (user: root, pw: passme).

## Windows:

Wenn man das Docker Quickstart Terminal verwendet, wird man unter localhost keine Website erreichen, da eine eigen VM gestartet wird. Die IP kann man mit ``docker-machine ip`` bzw. default 192.168.99.100 anzeigen lassen. Dann einfach statt localhost diese IP verwenden, die Ports bleiben gleich.

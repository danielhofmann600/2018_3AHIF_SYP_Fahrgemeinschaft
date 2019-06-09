# 2018_3AHIF_SYP_Fahrgemeinschaft

# Starten

Um das Projekt zu starten, im Ordner project docker-compose aufühen.

Mit dem Docker Quickstart Terminal(Windows)/Terimal(Linux oder MacOs) "docker-compose up" in die Command-line eingeben, es werden alle nötigen images heruntergeladen und sobal bereit gestartet. Dies kann einige Minuten dauern, da zu einer Database auch ein Ruby Projekt gedockert wird. 

## Linux/MacOs

Unter localhost:3000 kommt man auf die Hauptseite und unter localhost:8000 auf phpmyadmin (user: root, pw: passme).

## Windows: 

Wenn man das Docker Quickstart Terminal verwendet, wird man unter localhost keine Website erreichen, da eine eigen VM gestartet wird. Die IP kann man mit "docker-machine ip" bzw. default 192.168.99.100 anzeigen lassen. Dann einfach statt localhost diese IP verwenden, die Ports bleiben gleich.

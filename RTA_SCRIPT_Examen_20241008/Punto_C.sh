#!/bin/bash
sudo groupadd p1c2_2024_gProfesores
sudo groupadd p1c2_2024_gAlumno 

<<EOF
CURRENT_USER=$(whoami)
sudo passwd $CURRENT_USER
lolo
lolo

su - vagrant
lolo
EOF



HASH=$(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')

sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A1" -p "${HASH}" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A2" -p "${HASH}" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_A3" -p "${HASH}" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "usuario p1c2_2024_P1" -p "${HASH}" -G p1c2_2024_gProfesores p1c2_2024_P1

sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /EXAMENES-UTN/profesores/
sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno /EXAMENES-UTN/alumno_1/
sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno /EXAMENES-UTN/alumno_2/
sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno /EXAMENES-UTN/alumno_3/

ls -l /EXAMENES-UTN/profesores

sudo chmod -R 775 /EXAMENES-UTN/profesores/
sudo chmod -R 750 /EXAMENES-UTN/alumno_1/
sudo chmod -R 760 /EXAMENES-UTN/alumno_2/
sudo chmod -R 700 /EXAMENES-UTN/alumno_3/

ls -l /EXAMENES-UTN/profesores

sudo su - p1c2_2024_P1 -c "whoami >> /EXAMENES-UTN/profesores/validar.txt"
sudo su - p1c2_2024_A1 -c "whoami >> /EXAMENES-UTN/alumno_1/validar.txt"
sudo su - p1c2_2024_A2 -c "whoami >> /EXAMENES-UTN/alumno_2/validar.txt"
sudo su - p1c2_2024_A3 -c "whoami >> /EXAMENES-UTN/alumno_3/validar.txt"

sudo cat /EXAMENES-UTN/profesores/validar.txt
sudo cat /EXAMENES-UTN/alumno_1/validar.txt
sudo cat /EXAMENES-UTN/alumno_2/validar.txt
sudo cat /EXAMENES-UTN/alumno_3/validar.txt

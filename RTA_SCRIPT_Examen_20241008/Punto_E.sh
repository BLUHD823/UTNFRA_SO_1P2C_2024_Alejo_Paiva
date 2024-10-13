#!/bin/bash
mkdir - p ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929
grep "MemTotal" /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Basico.txt
sudo dmidecode -t chassis | grep -e "Chassis" -e "Manufacturer" >> ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Basico.txt
cat ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Basico.txt

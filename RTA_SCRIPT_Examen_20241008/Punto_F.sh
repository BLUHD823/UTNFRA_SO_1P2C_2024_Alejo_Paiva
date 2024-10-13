#!/bin/bash
IP=$(curl -s ifconfig.me)
USER=$(whoami)
HASH=$(sudo grep $USER /etc/shadow | awk -F ':' '{print $2}')
GIT=$(git remote get-url origin)

echo "Mi IP publica es: $IP" > ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Avanzado.txt
echo "Mi usuario es: $USER" >> ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Avanzado.txt
echo "El Hash de mi usuario es: $HASH" >> ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $GIT" >> ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Avanzado.txt

cat ~/repogit/UTNFRA_SO_1P2C_2024_Alejo_Paiva/RTA_ARCHIVOS_Examen_20240929/Filtro_Avanzado.txt

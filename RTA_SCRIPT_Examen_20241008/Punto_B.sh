#!/bin/bash
sudo fdisk /dev/sdc <<EOF
$(for i in {1..3}
do
echo "n"
echo "p"
echo ""
echo ""
echo "+1G"
done)
p
n
e



p

$(for i in {1..6}
do
echo "n"
echo ""
echo "+1G"
done)
n

+900M

p
w

EOF

sudo sync
sudo fdisk -l

for i in {1..11};do
        sudo mkfs -t ext4 /dev/sdc$i

done

sudo fdisk -l

lsblk -f

echo "/dev/sdc1 /home/vagrant/EXAMENES-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /home/vagrant/EXAMENES-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /home/vagrant/EXAMENES-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc11 /home/vagrant/EXAMENES-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc5 /home/vagrant/EXAMENES-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /home/vagrant/EXAMENES-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc7 /home/vagrant/EXAMENES-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /home/vagrant/EXAMENES-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /home/vagrant/EXAMENES-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc10 /home/vagrant/EXAMENES-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a

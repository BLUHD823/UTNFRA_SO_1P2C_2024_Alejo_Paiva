mkdir -p ~/Estructura_Asimetrica/{cliente/cartas_{1..100},correo/{cartas_{1..100},cartero_{1..10}}}
tree ~/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

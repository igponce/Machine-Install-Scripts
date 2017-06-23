cat << BANNER_EOF

        88                                                                             88              88         
        88                                           ,d                                88              88         
        88                                           88                                88              88         
        88  88       88  8b,dPPYba,   8b       d8  MM88MMM  ,adPPYba,  8b,dPPYba,      88  ,adPPYYba,  88,dPPYba, 
        88  88       88  88P'    "8a  `8b     d8'    88    a8P_____88  88P'   "Y8      88  ""     `Y8  88P'    "8a
        88  88       88  88       d8   `8b   d8'     88    8PP"""""""  88              88  ,adPPPPP88  88       d8
88,   ,d88  "8a,   ,a88  88b,   ,a8"    `8b,d8'      88,   "8b,   ,aa  88              88  88,    ,88  88b,   ,a8"
 "Y8888P"    `"YbbdP'Y8  88`YbbdP"'       Y88'       "Y888  `"Ybbd8"'  88              88  `"8bbdP"Y8  8Y"Ybbd8"' 
                         88               d8'                                                                     
                         88              d8'                                                                      
888888888888                                                          88888888888  88                                 
     88                                                               88           88                                 
     88                                                               88           88                                 
     88   ,adPPYba,  8b,dPPYba,   ,adPPYba,   ,adPPYba,   8b,dPPYba,  88aaaaa      88   ,adPPYba,   8b      db      d8
     88  a8P_____88  88P'   `"8a  I8[    ""  a8"     "8a  88P'   "Y8  88"""""      88  a8"     "8a  `8b    d88b    d8'
     88  8PP"""""""  88       88   `"Y8ba,   8b       d8  88          88           88  8b       d8   `8b  d8'`8b  d8' 
     88  "8b,   ,aa  88       88  aa    ]8I  "8a,   ,a8"  88          88           88  "8a,   ,a8"    `8bd8'  `8bd8'  
     88   `"Ybbd8"'  88       88  `"YbbdP"'   `"YbbdP"'   88          88           88   `"YbbdP"'       YP      YP    
                                                                                                                      
                                                                                                                      

BANNER_EOF

# Instalación de Tensorflow + Jupyterlab (desde cero) desatendida
# Modalidad: instalción PIP.

sudo apt-get install python3-pip python3-dev

# Cambiamos locale para no tener problemas con pip
sudo update-locale LANG=C.UTF-8

# Paso 1: Instar python3 y pip

sudo apt -y install python3 python3-pip

export LC_ALL=C

sudo pip3 install tensorflow 


# Python3 es python por defecto
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10


python << PY_EOF
# Python
import tensorflow as tf
hello = tf.constant('OK: ******* Tensorflow instalado y funcionando ****** ')
sess = tf.Session()
print(sess.run(hello))
PY_EOF


# Para hablar con kafka de forma nativa:
sudo pip3 install lz4
sudo pip3 install kafka-python

# Dependencias del jupyterlab
sudo pip3 install jupyterlab
sudo jupyter serverextension enable --py jupyterlab --sys-prefix

cd BrickPi3/Software/Python/Examples           # Verify installation

python BrickPiExample.py 

# If not Work 

cd BrickPi3/Software/Python

pip install . --break-system-packages

# If not Work

python3 -c "import brickpi3; print('BrickPi3 imported OK')"

pip install wheel --break-system-packages

# If not Work

cd ~/BrickPi3/Software/Python

pip3 install . --use-pep517 --break-system-packages

# And

sudo raspi-config     # Interface Option -> Enable -> IS2, SPI

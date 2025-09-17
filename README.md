# BrickPi

## Ports Overview

| Port / Feature | Location / Type | Typical Use | Notes |
|----------------|-----------------|-------------|--------|
| *Port A* | Motor Port | Connect EV3/NXT motors | Speed + direction control |
| *Port B* | Motor Port | Connect EV3/NXT motors | Same as A |
| *Port C* | Motor Port | Connect EV3/NXT motors | Same as A |
| *Port D* | Motor Port | Connect EV3/NXT motors | Same as A |
| *Port 1* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 2* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 3* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 4* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Power Inp (9–12V DC)* | Barrel jack / screw terminal | External battery pack or DC adapter | Supplies power to motors + Raspberry Pi |
| *Power Switch* | Slide switch | Turn BrickPi board ON/OFF | Cuts main power to Pi + motors |
| UART Port | 4-Pin Header on BrickPi3 Board | Serial TX/RX + Power + GND | Configurable / Available |
---

## BrickPi GPIO

| Pin # | Name / Function | BrickPi Usage |
|-------|-----------------|---------------|
| 1 (3.3 V) | 3.3 V Power | Available |
| 2 (5 V) | 5 V Power | Available |
| 3 (GPIO 2, SDA1) | I²C SDA | Used internally but still available |
| 4 (5 V) | 5 V Power | Available |
| 5 (GPIO 3, SCL1) | I²C SCL | Used internally but still available |
| 6 (GND) | Ground | Available |
| 7 (GPIO 4) | Free GPIO | Available |
| 8 (GPIO 14, TXD0) | UART TX | Available |
| 9 (GND) | Ground | Available |
| 10 (GPIO 15, RXD0) | UART RX | Available |
| 11 (GPIO 17) | Free GPIO | Available |
| 12 (GPIO 18) | Free GPIO | Available |
| 13 (GPIO 27) | Free GPIO | Available |
| 14 (GND) | Ground | Available |
| 15 (GPIO 22) | Free GPIO | Available |
| 16 (GPIO 23) | Free GPIO | Available |
| 17 (3.3 V) | 3.3 V Power | Available |
| 18 (GPIO 24) | Free GPIO | Available |
| 19 (GPIO 10, MOSI) | SPI MOSI | Available |
| 20 (GND) | Ground | Available |
| 21 (GPIO 9, MISO) | SPI MISO | Available |
| 22 (GPIO 25) | Free GPIO | Available |
| 23 (GPIO 11, SCLK) | SPI SCLK | Available |
| 24 (GPIO 8, CE0) | SPI CE0 | Available |
| 25 (GND) | Ground | Available |
| 26 (GPIO 7, CE1) | SPI CE1 | Available |
| 27 (GPIO 0, ID_SD) | ID EEPROM SDA | Available |
| 28 (GPIO 1, ID_SC) | ID EEPROM SCL | Available |

---

## Key Points  
- *Motors* draw power from the *9–12 V DC input*.  
- *Sensors* get regulated 5 V/3.3 V from BrickPi.  
- The *Power Switch* isolates the battery pack/DC input from the board & RPi.  
- UART & SPI pins are available for use.  

---

## Installation  
```bash
sudo raspi-config
```
```bash
sudo reboot
```
```bash
sudo apt install git python3-pip python3-rpi.gpio python3-smbus -y
```
```bash
git clone https://github.com/DexterInd/BrickPi3.git
```
```bash
sudo python3 setup.py install
```
- [Error & Verification](https://github.com/RISHABH12005/BrickPi/blob/main/error.sh)

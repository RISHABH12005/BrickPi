# BrickPi

## Ports Overview

| Port | Type | Use | Notes |
|------|------|-----|--------|
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

## BrickPi3 GPIO

| Pin | Name / Function | Full Function |
|-----|-----------------|---------------|
| 1 (3.3 V) | 3.3 V Power | Power Supply 3.3 V |
| 2 (5 V) | 5 V Power | Power Supply 5 V |
| 3 (GPIO 2, SDA1) | I²C Data Line (SDA) | Inter-Integrated Circuit Data |
| 4 (5 V) | 5 V Power | Power Supply 5 V |
| 5 (GPIO 3, SCL1) | I²C Clock Line (SCL) | Inter-Integrated Circuit Clock |
| 6 (GND) | Ground | Ground Reference |
| 7 (GPIO 4) | General Purpose Input/Output 4 | Free GPIO |
| 8 (GPIO 14, TXD0) | UART Transmit Data (TX) | Universal Asynchronous Receiver-Transmitter Transmit |
| 9 (GND) | Ground | Ground Reference |
| 10 (GPIO 15, RXD0) | UART Receive Data (RX) | Universal Asynchronous Receiver-Transmitter Receive |
| 11 (GPIO 17) | General Purpose Input/Output 17 | Free GPIO |
| 12 (GPIO 18) | General Purpose Input/Output 18 | Free GPIO |
| 13 (GPIO 27) | General Purpose Input/Output 27 | Free GPIO |
| 14 (GND) | Ground | Ground Reference |
| 15 (GPIO 22) | General Purpose Input/Output 22 | Free GPIO |
| 16 (GPIO 23) | General Purpose Input/Output 23 | Free GPIO |
| 17 (3.3 V) | 3.3 V Power | Power Supply 3.3 V |
| 18 (GPIO 24) | General Purpose Input/Output 24 | Free GPIO |
| 19 (GPIO 10, MOSI) | SPI Master Out Slave In | Serial Peripheral Interface MOSI |
| 20 (GND) | Ground | Ground Reference |
| 21 (GPIO 9, MISO) | SPI Master In Slave Out | Serial Peripheral Interface MISO |
| 22 (GPIO 25) | General Purpose Input/Output 25 | Free GPIO |
| 23 (GPIO 11, SCLK) | SPI Clock | Serial Peripheral Interface Clock |
| 24 (GPIO 8, CE0) | SPI Chip Enable 0 | Serial Peripheral Interface Chip Enable 0 |
| 25 (GND) | Ground | Ground Reference |
| 26 (GPIO 7, CE1) | SPI Chip Enable 1 | Serial Peripheral Interface Chip Enable 1 |
| 27 (GPIO 0, ID_SD) | I²C EEPROM Data | Identification EEPROM Data |
| 28 (GPIO 1, ID_SC) | I²C EEPROM Clock | Identification EEPROM Clock |
| 29–40 | Standard Pi GPIO Pins | Mostly Free (see Raspberry Pi GPIO reference) |


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

# BrickPi
A board that connects a RPi to LEGO Mindstorms motors & sensors allowing you to control LEGO robots via the RPi.

## Ports Overview

| Port | Type | Use | Notes |
|------|------|-----|--------|
| *Port A* | Motor Port | Connect EV3/NXT motors | Speed + direction control |
| *Port B* | Motor Port | Connect EV3/NXT motors | Speed + direction control |
| *Port C* | Motor Port | Connect EV3/NXT motors | Speed + direction control |
| *Port D* | Motor Port | Connect EV3/NXT motors | Speed + direction control |
| *Port 1* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 2* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 3* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Port 4* | Sensor Port | EV3/NXT analog/digital sensors | Configurable |
| *Power Inp (9–12V DC)* | Barrel jack / screw terminal | External battery pack \ DC adapter | Supplies power to motors + RPi |
| *Power Switch* | Slide switch | Turn BrickPi board ON/OFF | Main power to RPi + Motors |
| UART Port | 4-Pin Header on BrickPi Board | Serial TX/RX + Power + GND | Configurable |

---

## BrickPi3 GPIO

| Pins | GPIO | Name | Function |
|------|------|------|----------|
| 1  | GPIO 1  | MOTOR A + | Motor Port A Positive Connection |
| 2  | GPIO 2  | MOTOR A - | Motor Port A Negative Connection |
| 3  | GPIO 3  | MOTOR B + | Motor Port B Positive Connection |
| 4  | GPIO 4  | MOTOR B - | Motor Port B Negative Connection |
| 5  | GPIO 5  | MOTOR C + | Motor Port C Positive Connection |
| 6  | GPIO 6  | MOTOR C - | Motor Port C Negative Connection |
| 7  | GPIO 7  | MOTOR D + | Motor Port D Positive Connection |
| 8  | GPIO 8  | MOTOR D - | Motor Port D Negative Connection |
| 9  | GPIO 9  | SENSOR 1 + | Sensor Port 1 Positive |
| 10 | GPIO 10 | SENSOR 1 - | Sensor Port 1 Ground |
| 11 | GPIO 11 | SENSOR 1 SIG | Sensor Port 1 Signal (Analog/Digital) |
| 12 | GPIO 12 | SENSOR 2 + | Sensor Port 2 Positive|
| 13 | GPIO 13 | SENSOR 2 - | Sensor Port 2 Ground |
| 14 | GPIO 14 | SENSOR 2 SIG | Sensor Port 2 Signal (Analog/Digital) |
| 15 | GPIO 15 | SENSOR 3 + | Sensor Port 3 Positive |
| 16 | GPIO 16 | SENSOR 3 - | Sensor Port 3 Ground |
| 17 | GPIO 17 | SENSOR 3 SIG | Sensor Port 3 Signal (Analog/Digital) |
| 18 | GPIO 18 | SENSOR 4 + | Sensor Port 4 Positive |
| 19 | GPIO 19 | SENSOR 4 - | Sensor Port 4 Ground |
| 20 | GPIO 20 | SENSOR 4 SIG | Sensor Port 4 Signal (Analog/Digital) |
| 21 | GPIO 21 | UART 5V | Universal Asynchronous Receiver Transmitter 5 Volt Power |
| 22 | GPIO 22 | UART TX | Universal Asynchronous Receiver Transmitter Transmit Data |
| 23 | GPIO 23 | UART RX | Universal Asynchronous Receiver Transmitter Receive Data |
| 24 | GPIO 24 | UART GND | Universal Asynchronous Receiver Transmitter Ground |
| 25 | GPIO 25 | BP_GPIO0 | General Purpose Inp/Out 0 |
| 26 | GPIO 26 | BP_GPIO1 | General Purpose Inp/Out 1 |
| 27 | GPIO 27 | GND | Ground |
| 28 | GPIO 28 | 5V | 5 Volt Power Output |

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
- Interface Options -> Enable (I2C & SPI)
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

# Iframe QR Display

Home Assistant Add-on: zeigt eine konfigurierbare Webseite als Vollbild-Iframe an, mit einem QR-Code (verlinkt auf dieselbe URL) unten rechts in der Ecke.

## Installation

1. Repository in Home Assistant unter *Einstellungen → Add-ons → Add-on-Store → Repositories* hinzufügen: `https://github.com/marcelstrahl/ha-addon-iframe-qr`
2. Add-on "Iframe QR Display" installieren.
3. Unter *Konfiguration* die `url` (Standard: `https://www.google.com`) und optional `qr_size` setzen. Mit `party_mode: true` wird ein rotierender Regenbogen-Rand mit Glow nach innen um den Bildschirmrand aktiviert.
4. Add-on starten. Es ist im Netzwerk über den in *Network* konfigurierten Port (Standard `8099`) erreichbar, z. B. für ein Tablet/Kiosk-Display.

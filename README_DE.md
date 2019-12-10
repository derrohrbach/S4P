# S⁴P - The Simple Self-Signed SSL-Proxy

## Installation

Repository als ZIP-Datei herunterladen oder klonen und die Dateien an einem beliebigen Ort installieren.

**Hinweis:** Das Installationsverzeichnis muss beschreibbar sein

## Verwendung

1. `StartProxy.bat` starten
2. Target-URL eingeben
3. Profit

## Zertifikat als "vertrauenswürdig" installieren

1. `mkcert -install` in einem Terminal starten (Hinweis: Muss eventuell als Administrator gestartet werden)
2. Proxy wie oben beschrieben starten

### Firefox-Unterstützung

Firefox vertraut den Windows-Zertifikaten standardmäßig nicht, kann jedoch wie folgt per Konfiguration dafür eingerichtet werden.

1. [about:config](about:config) öffnen
2. Nach `security.enterprise_roots.enabled` suchen
3. Den Wert auf `true` ändern

### Zertifikat auf iOS installieren

1. Zertifikat per E-Mail auf das iOS Gerät übertragen (oder auf einem anderen Weg in die "Dateien"-App bekommen)
2. Zertifikat öffnen und installieren
3. Die "Einstellungen" App öffnen und zum "Profile" Bereich wechseln
4. Das neue Profil installieren
5. In den "Allgemein" > "Info" > "Zertifikatsvertrauenseinstellungen" Bereich wechseln
6. Das "mkcert ..." Zertifikat aktivieren

### Zertifikat auf Android installieren

1. Zertifikat per USB, Mail, Download o.Ä. in das Dateisystem des Geräts übertragen
2. In den Einstellungen in den "Sicherheit" > "Verschlüsselung & Anmeldedaten" Bereich wechseln
3. "Von Speicher installieren" wählen und Zertifikat auswählen

## Über dieses Tool

Dieses Tool ist nur ein Skript für folgende Windows-Anwendungen

- [mkcert](https://mkcert.dev)
- [ssl-proxy](https://github.com/suyashkumar/ssl-proxy)

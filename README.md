# WiRecon

WiRecon is a Bash-based reconnaissance and connection tool for WiFi networks.  
It allows you to:

- Scan for available WiFi networks.
- Display useful information (ESSID, Signal, Encryption).
- Connect to open or secured WiFi networks via `nmcli`.
- Perform WPS scanning using `airmon-ng` and `wash`.

> ⚠️ Intended for **educational and authorized testing only**.

---

## 🔧 Requirements

Make sure the following tools are installed on your Linux system:

- `nmcli` (usually pre-installed with NetworkManager)
- `iwlist`
- `aircrack-ng` suite (for `airmon-ng` and `wash`)

Install them on Debian/Ubuntu-based systems using:

```bash
sudo apt update
sudo apt install network-manager wireless-tools aircrack-ng
_____________________________________________________________

🖥️ How to Use WiRecon
Make the script executable:

bash


chmod +x wirecon.sh
Run the tool as a normal or root user:

bash


./wirecon.sh
🔐 Some operations (like scanning or using airmon-ng) may require root privileges. If needed, run with sudo:

bash


sudo ./wirecon.sh
Follow the prompts:

The tool is interactive and will ask you:

If you want to scan for WiFi networks.

If you want to connect to one of the networks.

If the network requires a password.

Whether you want to scan for WPS-enabled access points.



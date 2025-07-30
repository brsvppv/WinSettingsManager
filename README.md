# WinSettingsManager

**User-friendly PowerShell tool for installing apps and managing essential Windows settings with ease.**

WinSettingsManager is a script designed to streamline the configuration of a new Windows system. It leverages popular package managers like **Winget** and **Chocolatey** to automate the installation of commonly used applications, as well as perform useful Windows tweaks — all from a simple menu interface.

---

## ✅ How to Use

1. **Run PowerShell as Administrator**
2. Copy and paste the following one-liner into your PowerShell window:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Command {Invoke-Expression (Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/WinSettingsManager.ps1' -UseBasicParsing).Content}
```

---

## 🧰 What This Script Can Do

Upon running the script, you'll be presented with a simple interactive menu that may include:

- ✅ Install essential software using **Winget** and/or **Chocolatey**
- ⚙️ Configure useful Windows settings (e.g. dark mode, telemetry, Explorer tweaks)
- 🚀 Optimize system performance for everyday use
- 🔒 Apply privacy and security recommendations

---

## 📦 Example Applications You Can Install

- Visual Studio Code  
- 7-Zip  
- Notepad++  
- Google Chrome / Firefox  
- Sysinternals Suite  
- And many more...

---

## 🔐 Requirements

- Windows 10/11  
- PowerShell 5.1 or later  
- Internet connection  
- Administrator privileges

---

## 💡 Tip

You can **fork** or customize this script to suit your organization or personal preferences. Ideal for IT administrators or power users setting up fresh Windows installations.

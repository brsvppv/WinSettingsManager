# WinSettingsManager

**A user-friendly PowerShell-based application to simplify Windows setup and software installation**

**WinSettingsManager** is designed to streamline the process of configuring essential Windows settings and installing commonly used software. It leverages popular package managers like **Winget** and **Chocolatey** to help you install a wide range of applications with just a few clicks.

---

## 🚀 Features

- Install programs using **Winget** and/or **Chocolatey**
- Modify common Windows settings
- Lightweight, script-based interface
- Easy to use and portable — no installation required

---

## ✅ How to Use

1. **Run PowerShell as Administrator**
2. Paste one of the following commands into the PowerShell window:

### 📥 Recommended (cleaner, shorter):
```run in powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr 'https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/WinSettingsManager.ps1' -UseBasicParsing | iex

🧪 Alternative (compatible with older environments):

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Command {Invoke-Expression (Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/brsvppv/WinSettingsManager/main/WinSettingsManager.ps1' -UseBasicParsing).Content}

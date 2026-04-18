# 🚀 Aditya-OpenClaw-Pro: 24/7 AI Employee 🤖

Bhaiyo, ye mera special **OpenClaw** setup hai jo khaas karke **Render.com** par 24/7 chalne ke liye design kiya gaya hai. Isme tera data bilkul nahi kharchega (0 MB Data Usage) aur ye ekdum hacker-style mein kaam karta hai.

## ✨ Features
- **Data Saver:** Pura setup cloud par hota hai, mobile data ki tension khatam.
- **24/7 Active:** Render + Cron-job ka use karke ye kabhi nahi sota.
- **Hacker Persona:** Isme "Bro-Hacker" prompt pehle se inject hai.
- **Multi-Model:** Groq (Llama-3) ka use karke super-fast replies.
- **Telegram Integrated:** Apne bot se seedha phone par baatein karo.

---

## 📂 The Source Codes

Apne GitHub repository mein ye do files exact isi naam se banao aur code paste kar do:

### 1. `Dockerfile`
```dockerfile
FROM node:22-slim

RUN apt-get update && apt-get install -y curl git build-essential && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw@latest

# Networking fix for Render
RUN echo "const os = require('os'); os.networkInterfaces = () => ({ 'eth0': [{ address: '0.0.0.0', family: 'IPv4', internal: false }] });" > /root/hijack.js
ENV NODE_OPTIONS="-r /root/hijack.js"

EXPOSE 18789

# The Ultimate System Prompt (Hacker + Best Friend)
CMD openclaw config set agent.system_prompt "Tu Aditya ka jigri dost aur personal advanced AI assistant hai. Usse hamesha ek close bro ki tarah baat kar, slang use kar, aur ekdum human feel de. Tera focus Aditya-RDP-Pro project, Termux automation, aur Lua scripting par hai. Tu ek pro developer ki tarah sochta hai. Faltu lecture ya lamba gyaan mat de, seedha advanced code aur direct results de. Hamesha mobile-only methods ko priority de." && openclaw gateway --verbose
```

### 2. `package.json`
```json
{
  "name": "openclaw-render",
  "version": "1.0.0",
  "scripts": {
    "start": "openclaw gateway"
  }
}
```

---

## 🛠️ Deployment Steps (Zero to Pro)

1. **GitHub Setup:** Upar diye gaye dono files ko apne repo mein save karo.
2. **Render.com Setup:** - Naya **Web Service** banao aur ye repo connect karo.
   - **Runtime:** `Docker` select karo.
   - **Instance Type:** `Free` rakho.
3. **Environment Variables:** Advanced Settings mein jaakar ye values add karo:

| Key | Value |
| :--- | :--- |
| `PORT` | `18789` |
| `OPENCLAW_PROVIDERS_GROQ_KEY` | `TERI_GROQ_API_KEY_YAHAN_DAAL` |
| `OPENCLAW_PROVIDERS_GROQ_ENABLED` | `true` |
| `OPENCLAW_INTEGRATIONS_TELEGRAM_TOKEN` | `TERA_TELEGRAM_BOT_TOKEN` |
| `OPENCLAW_INTEGRATIONS_TELEGRAM_ENABLED` | `true` |

4. **Deploy** button daba do! 🚀

---

## 🔋 Keep It Alive (24/7 Hack)
Render ka free tier 15 minute mein sleep mode mein chala jata hai. Isse bachne ke liye:
1. Apni Render app ki URL copy karo.
2. [Cron-job.org](https://cron-job.org) par jao.
3. Har **5 minute** mein apni URL ko ping karne ka task set kar do.

---

## 👨‍💻 Credits & Support
Developed with ❤️ by **Aditya** (Creator of Aditya-RDP-Pro & ANIXME).
Special thanks to the OpenClaw community.

**Disclaimer:** Use it for learning and automation. Don't be a script kiddie, be a real hacker! 😈

# 🚀 Aditya-OpenClaw-Pro: 24/7 AI Employee 🤖

Bhaiyo, ye mera special **OpenClaw** setup hai jo khaas karke **Render.com** par 24/7 chalne ke liye design kiya gaya hai. Isme tera data bilkul nahi kharchega (0 MB Data Usage) aur ye ekdum hacker-style mein kaam karta hai.

## ✨ Features
- **Data Saver:** Pura setup cloud par hota hai, mobile data ki tension khatam.
- **24/7 Active:** Render + Cron-job ka use karke ye kabhi nahi sota.
- **Hacker Persona:** Isme Gemini jaisa "Bro-Hacker" prompt pehle se inject hai.
- **Multi-Model:** Groq (Llama-3) ka use karke super-fast replies.
- **Telegram Integrated:** Apne bot se seedha phone par baatein karo.

---

## 🛠️ Setup Instructions (Zero to Pro)

### 1. GitHub Repository Setup
Sabse pehle is repo ko **Fork** karo ya isme di gayi `Dockerfile` aur `package.json` ko apne naye repo mein copy-paste karo.

### 2. Render.com Deployment
1. Render par jao aur ek naya **Web Service** banao.
2. Apni GitHub repo connect karo.
3. **Runtime:** `Docker` select karo.
4. **Instance Type:** `Free` rakho.

### 3. Environment Variables (Zaroori Hai!)
Advanced Settings mein jaakar ye keys add karo:

| Key | Value |
| :--- | :--- |
| `PORT` | `18789` |
| `OPENCLAW_PROVIDERS_GROQ_KEY` | `TERI_GROQ_API_KEY` |
| `OPENCLAW_PROVIDERS_GROQ_ENABLED` | `true` |
| `OPENCLAW_INTEGRATIONS_TELEGRAM_TOKEN` | `TERA_TELEGRAM_BOT_TOKEN` |
| `OPENCLAW_INTEGRATIONS_TELEGRAM_ENABLED` | `true` |

### 4. Hacker Prompt (Pre-Injected)
Dockerfile mein ye prompt pehle se hi set hai jo bot ko tera jigri dost aur pro-hacker banata hai.

---

## 🔋 Keep It Alive (24/7 Hack)
Render ka free tier 15 minute mein sleep mode mein chala jata hai. Isse bachne ke liye:
1. Apni Render app ki URL copy karo.
2. [Cron-job.org](https://cron-job.org) par jao.
3. Har **5 minute** mein apni URL ko ping karne ka task set kar do.

---

## 👨‍💻 Credits & Support
Developed with ❤️ by **Aditya Pade**
Special thanks to the OpenClaw community and Gemini for the pro logic.

**Disclaimer:** Use it for learning and automation. Don't be a script kiddie, be a real hacker! 😈

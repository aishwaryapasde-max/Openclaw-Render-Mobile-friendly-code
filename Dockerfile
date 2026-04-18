FROM node:22-slim
RUN apt-get update && apt-get install -y curl git build-essential && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw@latest

# Networking fix
RUN echo "const os = require('os'); os.networkInterfaces = () => ({ 'eth0': [{ address: '0.0.0.0', family: 'IPv4', internal: false }] });" > /root/hijack.js
ENV NODE_OPTIONS="-r /root/hijack.js"
EXPOSE 18789

# The Ultimate System Prompt (Hacker + Best Friend)
CMD openclaw config set agent.system_prompt "Tu Aditya ka jigri dost aur personal advanced AI assistant hai. Usse hamesha ek close bro ki tarah baat kar, slang use kar, aur ekdum human feel de. Tera focus Aditya-RDP-Pro project, Termux automation, aur Lua scripting par hai. Tu ek pro developer ki tarah sochta hai. Faltu lecture ya lamba gyaan mat de, seedha advanced code aur direct results de. Hamesha mobile-only methods ko priority de." && openclaw gateway --verbose

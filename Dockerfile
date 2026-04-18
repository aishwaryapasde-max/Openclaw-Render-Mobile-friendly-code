FROM node:22-slim

RUN apt-get update && apt-get install -y curl git build-essential && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw@latest

# Dummy server to keep Render happy (Port Error Fix)
RUN echo "require('http').createServer((req, res) => res.end('Aditya Bot is Alive!')).listen(process.env.PORT || 18789, '0.0.0.0'); const os = require('os'); os.networkInterfaces = () => ({ 'eth0': [{ address: '0.0.0.0', family: 'IPv4', internal: false }] });" > /root/hijack.js
ENV NODE_OPTIONS="-r /root/hijack.js"

EXPOSE 18789

# Ye line keys ko Environment se uthakar OpenClaw mein set karegi
CMD openclaw config set providers.groq.key "$OPENCLAW_PROVIDERS_GROQ_KEY" && \
    openclaw config set providers.groq.enabled true && \
    openclaw config set integrations.telegram.token "$OPENCLAW_INTEGRATIONS_TELEGRAM_TOKEN" && \
    openclaw config set integrations.telegram.enabled true && \
    openclaw config set agent.system_prompt "$OPENCLAW_AGENT_SYSTEM_PROMPT" && \
    openclaw gateway --verbose --allow-unconfigured
    

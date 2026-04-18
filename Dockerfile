FROM node:22-slim

RUN apt-get update && apt-get install -y curl git build-essential && rm -rf /var/lib/apt/lists/*
RUN npm install -g openclaw@latest

# Networking fix for Render
RUN echo "const os = require('os'); os.networkInterfaces = () => ({ 'eth0': [{ address: '0.0.0.0', family: 'IPv4', internal: false }] });" > /root/hijack.js
ENV NODE_OPTIONS="-r /root/hijack.js"

EXPOSE 18789

# Bypass unconfigured error and start
CMD ["openclaw", "gateway", "--verbose", "--allow-unconfigured"]

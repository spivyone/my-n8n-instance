FROM n8nio/n8n:latest
USER root
RUN npm install -g @tavily/n8n-nodes-tavily
USER node
ENV N8N_COMMUNITY_PACKAGES=@tavily/n8n-nodes-tavily
EXPOSE 5678
CMD ["n8n", "start"]

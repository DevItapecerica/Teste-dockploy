# Usa uma imagem base leve com Nginx
FROM nginx:alpine

# Remove a configuração padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos HTML/CSS/JS para o diretório público do Nginx
COPY ./public /usr/share/nginx/html

# Copia uma configuração customizada (opcional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expõe a porta padrão do Nginx
EXPOSE 3333

# Inicia o Nginx em modo foreground
CMD ["nginx", "-g", "daemon off;"]

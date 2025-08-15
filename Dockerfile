# Usa uma imagem leve com Nginx
FROM nginx:alpine

# Copia todos os arquivos da raiz do projeto para o diretório público do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta padrão
EXPOSE 80

# Mantém o Nginx rodando em foreground
CMD ["nginx", "-g", "daemon off;"]

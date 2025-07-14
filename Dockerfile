# 1. Menggunakan base image Node.js versi 14
FROM node:14

# 2. Menentukan working directory dalam container
WORKDIR /app

# 3. Menyalin semua source code ke dalam working directory container
COPY . .

# 4. Menetapkan environment variable untuk production dan host database
ENV NODE_ENV=production DB_HOST=item-db

# 5. Menginstal dependency production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# 6. Mengekspos port 8080
EXPOSE 8080

# 7. Menjalankan aplikasi saat container diluncurkan
CMD ["npm", "start"]

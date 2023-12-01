# Menggunakan node:18-alpine sebagai base image
FROM node:18-alpine

# Menentukan /src sebagai direktori kerja
WORKDIR /src

# Menyalin package.json dan package-lock.json
COPY package*.json ./

# Mengubah environment menjadi production
ENV NODE_ENV=production

# Menginstall semua dependensi
RUN npm ci

# Menyalin seluruh file javascript ke direktori kerja
COPY ./*.js ./

# Menjalankan aplikasi
CMD ["node", "index.js"]
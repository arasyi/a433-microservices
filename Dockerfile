# Menggunakan base image Node.js versi 14
FROM node:14

# Mengubah working directory untuk container menjadi /app
WORKDIR /app

# Menyalin source code ke working directory container
COPY . .

# Menentukan environment variable container
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependency dan membangun aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspose port aplikasi
EXPOSE 8080

# Menjalankan aplikasi
CMD ["npm", "start"]

# Tambahan: Menghubungkan Container Image (Package) ke Github Repository
LABEL org.opencontainers.image.source=https://github.com/arasyi/a433-microservices

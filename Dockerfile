# Dockerfile

# Menggunakan base image Python yang sesuai dengan versi Anda (3.10)
FROM python:3.10-slim

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin file dependensi terlebih dahulu untuk efisiensi cache
COPY app/requirements.txt .

# Menginstal semua library Python yang dibutuhkan
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin semua kode dari folder 'app' lokal ke dalam container
COPY ./app .

# Perintah untuk menjalankan aplikasi web saat container dimulai
CMD ["python", "app.py"]
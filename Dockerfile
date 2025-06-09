# Gunakan Python image ringan
FROM python:3.11-slim

# Tentukan direktori kerja
WORKDIR /app

# Copy semua file ke container
COPY . .

# Upgrade pip dan install semua dependensi
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 10000
EXPOSE 10000

# Jalankan aplikasi dengan gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:10000", "app:app"]

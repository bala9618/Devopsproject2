from python:3.10-slim
env PYTHONUNBUFFERED=1
workdir /app
copy requirements.txt /app/
run pip install --no-cache-dir -r requirements.txt
copy . /app/
expose 8000
cmd ["gunicorn", "--bind", "0.0.0.0:8000", "interapp.wsgi:application"]


echo "BUILD START"
python3 -m pip install -r requirements.txt
python manage.py collectstatic --noinput
docker build -t mydjangoapp .

echo "BUILD END"

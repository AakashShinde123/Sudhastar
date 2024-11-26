echo "BUILD START"
python 3.12.6 pip install -r requirements.txt
python 3.12.6 manage.py collectstatic --noinput
echo "BUILD END"

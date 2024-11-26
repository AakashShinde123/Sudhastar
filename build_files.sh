echo="BUILD START"
Python 3.13.0 -m pip install -r requirements.txt
Python 3.13.0 manage.py collectstatic  --noinput  --clear
echo="BUILD END"
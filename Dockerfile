FROM python:3.7              # FROM UBUNTU LINUX MINI o/s BASED ON PYTHON 3.7
COPY . /app                  # COPY . (ALL FILES) TO /app directory
WORKDIR /app                 # Make /app as working directory
RUN pip install -r requirements.txt # install dependencies in /app as per requirements .txt
EXPOSE $PORT                        # Expose the default PORT (allocated dynamically by Heroku). So can not hard-code a number. 
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app     # Equivalent to python app.py but for remote server. Will run the app on Heroku






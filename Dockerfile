FROM python:3.9-slim-bookworm

WORKDIR /usr/src/superlists

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src ./src

# Build the container (must be in Dockerfile dir):
    # docker build -t superlists .
# Run the container ( OUTSIDE:INSIDE, IP mandatory, you need to map between inside and outside network):
    # docker run -p 8888:8888 -it superlists
# Run the container and mount external FS:
    # docker build -t superlists . && docker run `
    # -p 8888:8888 `
    # --mount type=bind,source=D:\playground\tdd_goat\superlists\src\db.sqlite3,target=/usr/src/superlists/src/db.sqlite3 `
    # -it superlists

CMD ["python", "./src/manage.py", "runserver", "0.0.0.0:8888"]
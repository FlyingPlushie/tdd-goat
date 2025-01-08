docker run `
-p 8888:8888 `
--mount type=bind,source=D:\playground\tdd_goat\superlists\src\db.sqlite3,target=/usr/src/superlists/src/db.sqlite3 `
-it superlists
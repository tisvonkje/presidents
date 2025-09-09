# Presidents
------------
This repository contains a docker file to create a MySQL database with information about the Presidents of the United States. The database includes figures about States, Hobbies and Spouses, ideal to learn how to formulate simple and complex SQL queries. A learning document with exercises (in PDF) is provided as well.

# Building
----------
Use the following command to create the container:
```
docker build -t mysql .
```
For MacOS (Apple hardware) add ```--platform linux/amd64```

# Running
---------
You can run the container using:
```
docker run -p 3306:3306 -d mysql
```
The server will be visible on port 3306. Use your favorite mysql client to connect. For example:
```
mysql -h 127.0.0.1 -u presidents -p
```
Make sure you specify the host as ```127.0.0.1``` and not as ```localhost``` which causes mysql to try to use a socket.
The database name is ```presidents```. Table names are lowercase, column names are case insensitive. Both the username as well as the
password is ```presidents```. The mysql root user has password ```my-secret```.
Have fun!

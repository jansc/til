# Create a self-signed certificate with OpenSSL

Technically not a thing I learned today, but I never can remember the command
when I need it. Create a cert/key file like this:

openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365

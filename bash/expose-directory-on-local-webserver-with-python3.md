# Expose a directory on a local webserver with Python 3

Sometimes I want to view some html files from my file system in the browser. With Python 2,
you could use the SimpleHTTP-module to start a web server with the current directory as
document root like so:

```bash
$ ls .
foo.html
$ python -m SimpleHTTPServer
Serving HTTP on 0.0.0.0 port 8000 ...
```

On my new Linux installation [Manjaro linux](https://manjaro.org) the Python defaults to Python 3.
Today I learned how to start a web server with Python 3:

```bash
$ ls .
foo.html
$ python -m http.server 8080
Serving HTTP on 0.0.0.0 port 8080 (http://0.0.0.0:8080/) ...
```

The port number is optional. Open `http://localhost:8080/foo.html` in your web browser to view `foo.html`.

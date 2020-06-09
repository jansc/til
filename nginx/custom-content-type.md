# Custom content type

I found out by accident that the atom feed on my personal site
is served with the wrong content type, that is text/xml instead
of application/atom+xml.

I was able to override the content type (and encoding) in my `nginx.conf`:

    location = /atom/atom.xml {
      types { } default_type "application/atom+xml; charset=utf-8";

      add_header x-robots-tag "noindex, follow";
    }

While I had the file in my editor, I also added an `x-robot-tag` as 
specified in [1]

[1](https://developers.google.com/search/reference/robots_meta_tag)

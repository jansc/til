# Upgrading installed npm packages

There is an npm package to upgrade npm packages!

    npm install -g npm-check-updates

Now you can run

    ncu
    
to check for available updates and

    ncu -u
    
to update your package.json. Remember to run `npm install` afterwards.

To update your globally installed packages, use

    ncu -g


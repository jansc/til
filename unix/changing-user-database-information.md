# Changing user database information

While trying to setup a finger server on my VPS, I was faced with the 
problem of updating information associated with my user account, like
office location and phone number.

It turns out that there is a utility for doing that: `chfn`.

Just call `chfn` as the user you want to edit (root can access the whole
user database, see man-page for details), and it will fire up an editor
where you can edit the following information - at least on FreeBSD:

    Login:              user's login name
    Password:           user's encrypted password
    Uid:                user's login
    Gid:                user's login group
    Class:              user's general classification
    Change:             password change time
    Expire:             account expiration time
    Full Name:          user's real name
    Office Location:    user's office location
    Office Phone:       user's office phone
    Home Phone:         user's home phone
    Other Information:  any locally defined parameters for user
    Home Directory:     user's home directory
    Shell:              user's login shell

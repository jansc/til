# Using p12 certificates for VPN in Gnome NetworkManager

My employee uses p12 certifcates for OpenVPN. On Manjaro Linux, the Network Manager does not
support these directly, so I had to extract the CA certificate, User certificate and private
key to be able to configure the VPN.

```bash
$ openssl pkcs12 -in cert.p12 -out userca.pem -cacerts -nokeys
$ openssl pkcs12 -in $pfx -out usercert.pem -clcerts -nokeys
$ openssl pkcs12 -in $pfx -out userkey.pem -nocerts
```

For the userkey I also had to set a password and supply it to the "User key password" option in
the Edit connection dialog.


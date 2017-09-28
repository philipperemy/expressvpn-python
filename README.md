# ExpressVPN - Python Wrapper (LINUX)

<div align="center">
  <img src="https://smhttp-ssl-23575.nexcesscdn.net/80ABE1/sflashrouters/media/catalog/category/expressvpn-700px2.png" width="300"><br><br>
</div>

Full bash documentation: [https://www.expressvpn.com/support/vpn-setup/app-for-linux/](https://www.expressvpn.com/support/vpn-setup/app-for-linux/)

## Download the package on the official website

The package DEB for Ubuntu 64bits 1.2.0 is already part of the repository. For the other OS, please refer to:
[https://www.expressvpn.com/support/vpn-setup/app-for-linux/#download](https://www.expressvpn.com/support/vpn-setup/app-for-linux/#download)
```
git clone git@github.com:philipperemy/expressvpn-python.git evpn
cd evpn
sudo dpkg -i expressvpn_1.2.0_amd64.deb # will install the binaries provided by ExpressVPN
sudo pip install . # will install it as a package
```

## Set up expressvpn

You can find your activation key here: [https://www.expressvpn.com/setup](https://www.expressvpn.com/setup).

```
expressvpn activate # paste your activate key and press ENTER.
expressvpn preferences set send_diagnostics false
```

To logout, simply run:

```
expressvpn logout
```

NOTE that you will have to activate `expressvpn` again if you logout.

## Python bindings

```
expressvpn connect
```
Binding is `connect()`.
```
expressvpn connect [ALIAS]
```
Binding is `connect_alias(alias)`.

```
expressvpn disconnect
```
Binding is `disconnect()`.

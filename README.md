# ExpressVPN - Python Wrapper (LINUX)

Full bash documentation: [https://www.expressvpn.com/support/vpn-setup/app-for-linux/](https://www.expressvpn.com/support/vpn-setup/app-for-linux/)

## Download the package on the official website

The package DEB for Ubuntu 64bits 1.2.0 is already part of the repository. For the other OS, please refer to:
[https://www.expressvpn.com/support/vpn-setup/app-for-linux/#download](https://www.expressvpn.com/support/vpn-setup/app-for-linux/#download)
```
sudo dpkg -i expressvpn_1.2.0_amd64.deb
```

## Set up expressvpn

You can find your activation key here: [https://www.expressvpn.com/setup](https://www.expressvpn.com/setup).

```
expressvpn preferences set send_diagnostics false
expressvpn activate # paste your activate key and press ENTER.
```

To logout, simply run:

```
expressvpn logout
```

NOTE that you will have to activate `expressvpn` again if you logout.

## Python bindings

```
expressvpn connect
expressvpn connect [ALIAS]
```

```
expressvpn list
```

```
expressvpn disconnect
```

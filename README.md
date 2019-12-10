# S⁴P - The Simple Self-Signed SSL-Proxy

German 🇩🇪: [README_DE.md](README_DE.md)

## Installation

Download this repository as a ZIP-File or clone it to your Device and place the files in any directory you want

**Note:** The target directory has to be writeable by your user

## Usage

1. Run `StartProxy.bat`
2. Enter Target-URL
3. Profit

## Install certificate to trust store

1. Run `mkcert -install` in a terminal (Note: You might have to run it as an administrator)
2. Start proxy as described above

### Configure Firefox to trust the certificate

Firefox does not trust certificates installed to the windows certificate store by default. To trust the installed certificate you have to

1. Open [about:config](about:config)
2. Search for the `security.enterprise_roots.enabled` key
3. Set it to `true`

### Install certificate on iOS

1. Mail the certificate to your iOS device (or get it into your "Files" App)
2. Open the certificate and install it
3. Open the Settings app and go to the Profiles section
4. Install the new profile
5. Switch to the "General">"About">"Certificate Trust Settings" Page
6. Activate the "mkcert ..." certificate

## About this tool

This tool is just a wrapper for the following two awesome windows programs

- [mkcert](https://mkcert.dev)
- [ssl-proxy](https://github.com/suyashkumar/ssl-proxy)

## Contributing

If you want you can add support for more platforms or localize this README file. When you are done just open a pull request!

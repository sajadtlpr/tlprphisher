<!-- tlprphisher -->



<p align="center">
  <img src="https://img.shields.io/badge/Version-2.1.1-green?style=for-the-badge">
  <img src="https://img.shields.io/github/license/sajadtlpr/tlprphisher?style=for-the-badge">
  <img src="https://img.shields.io/github/stars/sajadtlpr/tlprphisher?style=for-the-badge">
  <img src="https://img.shields.io/github/issues/sajadtlpr/tlprphisher?color=red&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/sajadtlpr/tlprphisher?color=teal&style=for-the-badge">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Developer-sajad--tlpr-blue?style=flat-square">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Bash-darkcyan?style=flat-square">
  <img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fsajadtlpr%2Ftlprphisher&title=Visitors&edge_flat=false"/></a>
</p>

<p align="center"><b>A beginners friendly, Automated phishing tool with 30+ templates.</b></p>

##

<h3><p align="center">Disclaimer</p></h3>

<i>Any actions and or activities related to <b>tlprphisher</b> is solely your responsibility. The misuse of this toolkit can result in <b>criminal charges</b> brought against the persons in question. <b>The contributors will not be held responsible</b> in the event any criminal charges be brought against any individuals misusing this toolkit to break the law.

<b>This toolkit contains materials that can be potentially damaging or dangerous for social media</b>. Refer to the laws in your province/country before accessing, using,or in any other way utilizing this in a wrong way.

<b>This Tool is made for educational purposes only</b>. Do not attempt to violate the law with anything contained here. <b>If this is your intention, then Get the hell out of here</b>!

It only demonstrates "how phishing works". <b>You shall not misuse the information to gain unauthorized access to someones social media</b>. However you may try out this at your own risk.</i>

##

### Features

- Latest and updated login pages.
- Beginners friendly
- Multiple tunneling options
  - Localhost
  - Cloudflared
  - LocalXpose
- Mask URL support 
- Docker support

##

### Installation

- Just, Clone this repository -
  ```
  git clone --depth=1 https://github.com/sajadtlpr/tlprphisher.git
  ```

- Now go to cloned directory and run `tlprphisher.sh` -
  ```
  $ cd tlprphisher
  $ bash tlprphisher.sh
  ```

- On first launch, It'll install the dependencies and that's it. ***tlprphisher*** is installed.

##

### Installation (Termux)
You can easily install tlprphisher in Termux by using tur-repo
```
$ pkg install tur-repo
$ pkg install tlprphisher
$ tlprphisher
```
### A Note : 
use this tool wisely 
##



##

### Installation via ".deb" file

- Download `.deb` files from the [**Latest Release**](https://github.com/sajadtlpr/tlprphisher/releases/latest)
- If you are using ***termux*** then download the `*_termux.deb`

- Install the `.deb` file by executing
  ```
  apt install <your path to deb file>
  ```
  Or
  ```
  $ dpkg -i <your path to deb file>
  $ apt install -f
  ```

##

### Run on Docker

- Docker Image Mirror:
  - **DockerHub** : 
    ```
    docker pull htrtech/tlprphisher
    ```
  - **GHCR** : 
    ```
    docker pull ghcr.io/sajadtlpr/tlprphisher:latest
    ```

- By using the wrapper script [**run-docker.sh**](https://raw.githubusercontent.com/sajadtlpr/tlprphisher/master/run-docker.sh)

  ```
  $ curl -LO https://raw.githubusercontent.com/sajadtlpr/tlprphisher/master/run-docker.sh
  $ bash run-docker.sh
  ```
- Temporary Container

  ```
  docker run --rm -ti sajadtlpr/tlprphisher
  ```
  - Remember to mount the `auth` directory.

##




##



### *This tool is developed and maintained by sajadtlpr(founder of tlprORG)*:



<!-- // -->

# buildroot-external tree for STM32MP157
External Buildroot tree dedicated to supporting the module boards [EV-STM32MP157-SODIMM](http://otladka.com.ua/index.php?option=com_virtuemart&page=shop.product_details&flypage=vmj_naru.tpl&category_id=41&product_id=284&Itemid=71)

<p align="center">
  <img width="500" alt="EV-STM32MP157-SODIMM" src="https://github.com/cvetaevvitaliy/buildroot-external/blob/master/ev-stm32mp157-sodimm.png">




# Getting started

### Pre-requisites
In order to use Buildroot, you need to have a Linux distribution installed on your workstation. Any reasonably recent Linux distribution (Ubuntu, Debian, Fedora, Redhat, OpenSuse, etc.) will work fine.

Then, you need to install a small set of packages, as described in the [Buildroot manual System requirements section.](https://buildroot.org/downloads/manual/manual.html#requirement)

For Debian/Ubuntu distributions, the following command allows to install the necessary packages:

```bash
$ sudo apt install debianutils sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio unzip rsync file bc git
```

### Getting the Buildroot

```
git clone https://github.com/cvetaevvitaliy/buildroot
```

Now, clone the matching branch of the BR2_EXTERNAL tree:

```
$ git clone https://github.com/cvetaevvitaliy/buildroot-external
```

You now have side-by-side a `buildroot` directory and a `buildroot-external` directory.

### Configure and build

Go to the Buildroot directory:

```
$ cd buildroot/
```

And then, configure the system for build

```
buildroot/ $ make BR2_EXTERNAL=../buildroot-external st_stm32mp157a_sodimm2_mx_defconfig
```

If you want to further customize the Buildroot configuration, you can now run make menuconfig, but for your first build, we recommend you to keep the configuration unchanged so that you can verify that everything is working for you.

Start the build:

```
buildroot/ $ make
```

This will automaticaly download and build the entire Linux system for your STM32MP1 platform: cross-compilation toolchain, firmware, bootloader, Linux kernel, root filesystem. It might take between 30 and 60 minutes depending on the configuration you have chosen and how powerful your machine is.





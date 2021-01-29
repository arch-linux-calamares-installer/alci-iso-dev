# DEVELOPMENT

# Arch Linux Calamares Installer or ALCI

Use the correct version for building the iso.

**Read the archiso.readme.**

Download the content of the github with (use the terminal)

`git clone https://github.com/arcolinuxiso/alci-iso`

# Pacman.conf

Only the archiso/pacman.conf will be used to download your packages.

We created several versions of pacman.conf to be able to switch fast.

In order to avoid future questions we activated multilib by default on all except no-extra-pacman.conf.

In order to switch fast we copy/paste the content of the other files in archiso/pacman.conf.

    arcolinux-chaotic-pacman.conf
        contains both ArcoLinux and chaotic-aur
        needs extra packages - mirrorlist and keys

    arcolinux-pacman.conf
        contains only ArcoLinux
        needs extra packages - mirrorlist and keys

    chaotic-pacman.conf
        contains only chaotic-aur
        needs extra packages - mirrorlist and keys

    no-extra-pacman.conf
        as vanilla as Arch Linux
        needs NO extra packages - mirrorlist and keys - no multilib



# ArcoLinux keys and mirror

Since this is an ArcoLinux project after all, the ArcoLinux keys are in by default.
Want a vanilla Arch Linux without any ArcoLinux packages then you do not need our keys.
Delete the ArcoLinux line in /archiso/airootfs/etc/systemd/system/pacman-init.service and they will not be installed.

# Chaotic keys and mirror

If you want to include packages from the Chaotic-aur repo then add its packages to archiso/packages.x86-64.


# Archiso/packages.x86_64

Check the bottom of the file and install the necessary packages

If you plan to use ArcoLinux packages

* arcolinux-keyring

* arcolinux-mirror

If you plan to use Chaotic packages

* chaotic-keyring

* chaotic-mirror


Now you can add the packagename from the repo.

# Build process

After editing the necessary files you can start building.

Start building your own ALCI version with the scripts in the folder

<b>installation-scripts</b>

Use 30 will clean your pacman cache and redownload every package

Use 40 to use your current pacman cache - only downloads what is needed

You will get an iso in the ~/Alci-Out.

Burn it and use it.

Still not sure what to do.

Check out the playlist on Youtube

https://www.youtube.com/playlist?list=PLlloYVGq5pS4vhYQuLikS8dhDjk6xaiXH

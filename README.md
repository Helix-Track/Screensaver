# HelixTrack Screensaver

The HelixTrack screensaver for the [Mate](https://mate-desktop.org/) desktop environment.

## How to install

Follow these installation instructions:

- Clone the [Software Toolkit](git@github.com:red-elf/Software-Toolkit.git) into the desired directory and `cd` into it
- Execute the `initialize.sh`:

  ```shell
  initialize.sh ~/Documents/Project_Directory "My project name"
  ```

  Where 1st parameter is path for the installation and the 2nd one is the name of the toolkit project to assign,

- Once all Git submodules are initialized and cloned add the `Installable` module's directory into the system path
- Reload your .bashrc or .zasrc configuration
- Download or clone the [Screensaver](git@github.com:Helix-Track/Screensaver.git) into the desired directory and `cd` into it
- Execute: `install.sh`, this will execute the `prepare.sh` and `install.sh` scripts from the Recipses directory.

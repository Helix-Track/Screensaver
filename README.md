# HelixTrack Screensaver

The HelixTrack screensaver for the [Mate](https://mate-desktop.org/) desktop environment.

## How to install

Follow these installation instructions:

- Clone the [Software Toolkit](https://github.com/red-elf/Software-Toolkit) into the desired directory and `cd` into it
- Execute the `initialize.sh`:

  ```shell
  initialize.sh ~/Documents/Project_Directory "My project name"
  ```

  Where 1st parameter is path for the installation and the 2nd one is the name of the toolkit project to assign,

- Once all Git submodules are initialized and cloned add the `Installable` module's directory into the system path
- Reload your .bashrc or .zasrc configuration
- Download or clone the Screensaver into the desired directory and `cd` into it
- Execute: `install.sh`, this will execute the `prepare.sh` and `install.sh` scripts from the `Recipes` directory.

Installation will be performed by default into the `/usr/share/applications/screensavers` directory.
To override this, export the environment variable `HELIX_TRACK_SCREENSAVER_DIR` with the value of desired path.
For example:

```shell
export HELIX_TRACK_SCREENSAVER_DIR="/home/user/somewehere/to/install"
```

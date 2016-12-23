## SteamCMD

A Docker container for running [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD).

## Usage

Build the image:

```sh
docker buld --rm -t steamcmd .
```

Run the image as an executable:

```sh
docker run --rm --interactive --tty steamcmd
```
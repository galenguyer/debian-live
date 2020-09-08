# debian-live

Scripts and files to build a custom debian live image with support for ZFS

### Building the ISO

The command used to generate base configs is

```
lb config \
    --distribution buster \
    --architectures amd64 \
    --binary-images iso-hybrid \
    --iso-volume "Debian Buster" \
    --archive-areas "main contrib" \
    --linux-packages "linux-image linux-headers" \
    --backports true
```

If you want to customize the image beyond the modifications for ZFS, the following is a good guide: https://live-team.pages.debian.net/live-manual/html/live-manual/customizing-contents.en.html

Run `sudo lb build` after making any edits to the configs to generate an ISO, which will be located at `./live-image-amd64.hybrid.iso`

ZFS packages will be installed, but you can run the script provided at `/root/install-zfs-packages.sh` to ensure they are present and loaded
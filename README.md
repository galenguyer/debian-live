# debian-live
scripts and files to build a custom debian live image

command used to generate base configs

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

Run `sudo lb build` after making any edits to the configs to generate an ISO, which will be located at `./live-image-amd64.hybrid.iso`

ZFS packages will be installed, but you can run the script provided in /root to ensure they are present and loaded

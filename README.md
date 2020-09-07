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

# Windows docker uses /c/aa/bbb paths instead of /mnt/c/aa/bbb
# Fix this by adding symlink to /c
sudo mkdir -p /c
sudo mount --bind /mnt/c /c

# Install package from supplied URL ($1)
install_from_url () {
    echo "Installing .deb from url $1..."
    TEMP_DEB="$(mktemp)" && wget -O "$TEMP_DEB" $1 && sudo dpkg -i "$TEMP_DEB"
    rm -f "$TEMP_DEB"
}

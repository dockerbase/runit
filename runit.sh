# Update
apt-get update

# Install runit.
apt-get install -y --no-install-recommends runit

# Clean up
apt-get clean
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*

# Use a specific stable Ubuntu base image
FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    openscad \
    xvfb \
    libxcb-xinerama0 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-randr0 \
    libxcb-render-util0 \
    libxcb-shape0 \
    libxcb-xfixes0 \
    mesa-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Set the DISPLAY environment variable for Xvfb
ENV DISPLAY=:99

# Default command to run OpenSCAD in a headless mode
CMD ["xvfb-run", "--server-args='-screen 0 1024x768x24'", "openscad", "--help"]

# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set environment variables for non-interactive installations and locale settings
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# Update the package list and install common utilities
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    git \
    ca-certificates \
    vim \
    nano \
    net-tools \
    iputils-ping \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the application code (if needed)
# COPY . .

# Expose any required port (optional)
# EXPOSE 8080

# Default command (optional, can just open a shell)
CMD ["bash"]
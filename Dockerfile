# Use an official Ubuntu as a base image
FROM ubuntu:latest

# Set environment variables (optional, for non-interactive installation)
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install essential packages
RUN apt update 
RUN apt upgrade -y 
RUN apt install -y build-essential 
RUN apt install curl  -y
RUN apt install  -y git 

# Set working directory
WORKDIR /app

# Copy files from your local system to the container
COPY . /app

# Create directories and clone the repositories in one RUN instruction
RUN mkdir -p /root/.config/nvim 
RUN git clone https://github.com/MCvanderBerg/nvim.git ~/.config/nvim 
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

RUN apt install neovim -y

# Run PackerInstall after sourcing the packer.lua
RUN nvim -c "source /root/.config/nvim/packer.lua" -c "PackerInstall" -c "qa!"

# Command to run when the container starts
CMD [ bash ]


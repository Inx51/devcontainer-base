# DevContainer Base

A comprehensive development container configuration designed for modern development workflows. This repository provides a ready-to-use devcontainer setup with essential development tools and a customized terminal environment.

## Overview

This devcontainer is built on top of Microsoft's official .NET 9.0 Bookworm image and includes a curated set of development tools to provide a consistent and productive development environment across different machines and platforms.

## Base Image

- **Base**: `mcr.microsoft.com/devcontainers/dotnet:9.0-bookworm`
- **OS**: Debian Bookworm
- **Runtime**: .NET 9.0

## Pre-installed Features

### Core Features
- **Node.js (via ASDF)** - Node.js version manager for flexible Node.js version management
  - Feature: `ghcr.io/devcontainers-extra/features/node-asdf:0`
- **.NET Aspire** - Cloud-native development framework for building distributed applications
  - Feature: `ghcr.io/dotnet/aspire-devcontainer-feature/dotnetaspire:1`

### Shell and Terminal Tools

#### Nushell
A modern shell with structured data support, installed during container post-creation:
- Cross-platform shell with powerful data manipulation capabilities
- Configured with disabled welcome banner for clean startup
- Set as the default terminal profile in VS Code

#### Oh My Posh
Advanced prompt theme engine providing:
- Beautiful and informative terminal prompts
- Git status integration
- Customizable themes and segments

#### Fonts
- **CascadiaCode Nerd Font** - Installed via Oh My Posh
- **CaskaydiaCove Nerd Font** - Configured as VS Code terminal font
- Optimized for development with ligatures and icon support

## VS Code Integration

### Terminal Configuration
- **Default Profile**: Nushell (`nu`)
- **Font Family**: CaskaydiaCove Nerd Font for enhanced readability and icon support
- Pre-configured terminal profiles for seamless shell switching

### Workspace Setup
- **Workspace Folder**: `/workspaces/current`
- **User**: Root access for system-level operations
- **Volume Mounting**: Source code mounted with cache optimization

## Directory Structure

```
.
├── .devcontainer/
│   ├── devcontainer.json     # Main devcontainer configuration
│   ├── docker-compose.yaml   # Docker Compose service definition
│   └── post-create.sh       # Post-creation setup script
└── README.md               # This file
```

## Usage

### Getting Started

1. **Prerequisites**:
   - VS Code with Dev Containers extension
   - Docker Desktop or compatible container runtime

2. **Open in Dev Container**:
   - Clone this repository
   - Open in VS Code
   - When prompted, click "Reopen in Container"
   - Or use Command Palette: "Dev Containers: Reopen in Container"

3. **First Launch**:
   - The container will automatically run post-creation setup
   - Nushell and Oh My Posh will be installed and configured
   - CascadiaCode font will be downloaded and set up

### Available Tools

After the container is built and configured, you'll have access to:

- **.NET 9.0 SDK** - For .NET application development
- **Node.js** - JavaScript/TypeScript development (managed via ASDF)
- **Nushell** - Modern shell with data manipulation capabilities
- **Oh My Posh** - Enhanced terminal prompt
- **Git** - Version control (inherited from base image)
- **CascadiaCode Font** - Optimized developer font with ligatures

### Terminal Experience

The devcontainer is configured to provide an enhanced terminal experience:
- Nushell as the default shell for powerful data manipulation
- Oh My Posh for beautiful and informative prompts
- CaskaydiaCove Nerd Font for optimal readability and icon support

## Customization

### Adding New Tools

To add additional tools, modify the post-creation script:

```bash
# Edit .devcontainer/post-create.sh
# Add your installation commands
```

### VS Code Settings

Customize VS Code behavior by editing the `customizations.vscode.settings` section in `devcontainer.json`.

### Docker Services

Additional services can be added to the `docker-compose.yaml` file for databases, caches, or other development dependencies.

## Container Lifecycle

1. **Build**: Docker Compose builds the container using the specified base image
2. **Feature Installation**: Dev Container features are installed (Node.js, .NET Aspire)
3. **Post-Create**: Custom setup script runs (Nushell, Oh My Posh, fonts)
4. **Ready**: Development environment is fully configured and ready for use

## Use Cases

This devcontainer is ideal for:

- **.NET Development** - Full .NET 9.0 SDK with Aspire support
- **Full-Stack Development** - Node.js + .NET combination
- **Cloud-Native Applications** - .NET Aspire for distributed systems
- **Cross-Platform Development** - Consistent environment across different host systems
- **Team Collaboration** - Standardized development environment

## Contributing

To contribute improvements to this devcontainer configuration:

1. Fork the repository
2. Create a feature branch
3. Make your changes to the devcontainer configuration
4. Test the changes by rebuilding the container
5. Submit a pull request

## License

This devcontainer configuration is provided as-is for development purposes. Please check the licenses of individual tools and base images used.
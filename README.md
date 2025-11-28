# VooStack Homebrew Tap

Official Homebrew tap for VooStack tools.

## Quick Links

- [FlightStack Website](https://flightstack.dev)
- [FlightStack Documentation](https://flightstack.dev/docs)
- [Release Notes](https://github.com/VooStack/flightstack-releases/releases)
- [Report an Issue](https://github.com/VooStack/FlightStack/issues)

## Quick Start

```bash
brew tap voostack/tap
brew install flightstack
```

Verify installation:

```bash
flightstack --version
```

## Available Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| `flightstack` | CLI for FlightStack - Self-hosted CI/CD for Flutter | 1.1.0 |

## Installation

### One-liner

```bash
brew tap voostack/tap && brew install flightstack
```

### Step by step

```bash
# Add the tap
brew tap voostack/tap

# Install FlightStack CLI
brew install flightstack

# Verify installation
flightstack doctor
```

## Updating

```bash
# Update Homebrew and all taps
brew update

# Upgrade FlightStack
brew upgrade flightstack
```

## Uninstalling

```bash
# Remove FlightStack
brew uninstall flightstack

# Remove the tap (optional)
brew untap voostack/tap
```

## Troubleshooting

### Formula not found

```bash
# Re-tap to get the latest formulae
brew untap voostack/tap
brew tap voostack/tap
```

### Permission issues

```bash
# Fix Homebrew permissions
sudo chown -R $(whoami) $(brew --prefix)/*
```

### Check formula info

```bash
brew info voostack/tap/flightstack
```

## Supported Platforms

| Platform | Architecture | Status |
|----------|--------------|--------|
| macOS | Apple Silicon (arm64) | Supported |
| macOS | Intel (x64) | Supported |
| Linux | x64 | Available via releases |

## About FlightStack

FlightStack is a self-hosted CI/CD platform designed specifically for Flutter applications. It provides:

- Automated builds for iOS, Android, and Web
- Real-time build logs and notifications
- Integration with GitHub repositories
- Custom build pipelines

## License

MIT License - see [LICENSE](https://github.com/VooStack/FlightStack/blob/main/LICENSE) for details.

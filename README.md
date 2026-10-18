# homebrew-astraplay

Official Homebrew tap for [AstraPlay](https://github.com/nileshchakraborty/AstraPlay) — Next-generation PlayStation Remote Play and Cloud Streaming Client.

## Installation

### One-line Install (Recommended)

To install AstraPlay using Homebrew Cask, simply run:

```bash
brew install --cask nileshchakraborty/astraplay/astraplay
```

Or tap the repository first and install:

```bash
brew tap nileshchakraborty/astraplay
brew install --cask astraplay
```

### In a Brewfile

If you manage your software with [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle), add the following to your `Brewfile`:

```ruby
tap "nileshchakraborty/astraplay"
cask "astraplay"
```

## Upgrading

To upgrade AstraPlay to the latest release:

```bash
brew upgrade --cask astraplay
```

## macOS Gatekeeper & Out-of-the-Box Execution

> [!NOTE]
> AstraPlay is open-source software built transparently via GitHub Actions. Because it is distributed directly from open-source releases without a paid Apple Developer subscription notarization ticket, macOS Sequoia, Sonoma, and earlier versions would normally trigger Gatekeeper quarantine dialogs (*"Apple cannot check AstraPlay for malicious software"*).
>
> The [Homebrew Cask definition](https://github.com/nileshchakraborty/homebrew-astraplay/blob/main/Casks/astraplay.rb) includes automated postflight quarantine removal (`xattr -d com.apple.quarantine`) so AstraPlay launches **out-of-the-box seamlessly** without requiring manual quarantine bypass or security prompts!

## Troubleshooting

If you previously downloaded AstraPlay manually or installed an older version that exhibits Gatekeeper block warnings, you can reinstall cleanly via this tap:

```bash
brew reinstall --cask nileshchakraborty/astraplay/astraplay
```

## Documentation & Upstream Project

- **AstraPlay Repository**: [https://github.com/nileshchakraborty/AstraPlay](https://github.com/nileshchakraborty/AstraPlay)
- **Homebrew Documentation**: [https://docs.brew.sh](https://docs.brew.sh)

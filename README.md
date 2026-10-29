# Querywren Homebrew Tap

Install Querywren with Homebrew:

```sh
brew tap ck-web-development/querywren && brew trust ck-web-development/querywren && brew install --cask querywren
```

On Homebrew versions before 7, the `brew trust` step does not exist and can be skipped.

Update the cask with:

```sh
brew upgrade --cask querywren
```

Querywren also updates itself through Sparkle, so `auto_updates` is enabled for this cask.

This is a personal tap, not an official Homebrew cask. Querywren is ad-hoc signed and
not notarized, so macOS may show a Gatekeeper warning on first launch. Right-click the app
and choose **Open** if needed.

- Website: [querywren.nl](https://querywren.nl)
- Developer: [Casper Kizewski](https://github.com/Ssionn)

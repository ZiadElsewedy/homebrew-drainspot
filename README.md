# Drainspot for Homebrew

Install [Drainspot](https://drainspot.app), the battery monitor for MacBook Air and MacBook Pro, from the Terminal:

```sh
brew install --cask ziadelsewedy/drainspot/drainspot
```

Drainspot shows which apps drain your MacBook battery, how much charge was lost overnight and what woke the Mac,
which background apps keep running, heat, the charger, and battery health and cycle count over months, in plain
words and compared with what is normal for your own Mac. English and Arabic.

- Requires a MacBook Air or MacBook Pro with macOS 14 Sonoma or later (Apple silicon gets every reading; Intel the basics).
- Free forever, with an optional Pro plan ($4.99 a month or $19.99 once). Every Mac gets 7 days of Pro free.
- Signed with Developer ID and notarized by Apple. No account; your history stays on your Mac.
- Updates install inside the app, so `brew upgrade` is only needed for a new version number.

## Uninstall

```sh
brew uninstall --cask drainspot          # removes the app and stops its background recorder
brew uninstall --zap --cask drainspot    # also deletes your battery history and settings
```

## Links

- Website and direct download: https://drainspot.app
- Guides to MacBook battery problems: https://drainspot.app/guides/
- Support: https://drainspot.app/support/ · support@drainspot.app

This repository holds only the Homebrew cask. The app itself is downloaded from drainspot.app.

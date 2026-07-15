# Panini House Tools

Home of all the PH series tools.

## Install

```sh
brew tap paninihouse/tools
```

> [!IMPORTANT]  
> Since Homebrew v6.0.0 you're required to [trust a repository](https://docs.brew.sh/Tap-Trust) before you can use it.
> You can trust the individual formulas you plan to use, but we recommend trusting the entire repository for convenience.
>
> ```sh
> brew trust paninihouse/tools
> ```

## Available formulas

### `phservices`

Friendly launchctl wrapper for your personal services.

phservices helps you keep an eye on and manage all your personal background services.
The cli wraps the standard macOS launchctl utility, exposing just enough functionalities to be dangerous.

Enjoy a unified API to start, stop, and restart the services and use the overview commands to check the current status in a beautifully formatted table.
By design phservices will let you see and operate only on user defined services (the ones that you really care about).

If you ever had to deal with launchctl, you'd probably be really pissed by always having to specify the full .plist file path.
Forget it!
phservices is built around fuzzy search.
If just one result is found the command is executed right away, otherwise it will ask you to choose the correct one.

Source: [paninihouse/services](https://github.com/paninihouse/services).

```sh
brew install paninihouse/tools/phservices
```

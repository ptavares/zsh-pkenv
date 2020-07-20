# zsh-pkenv

![GitHub](https://img.shields.io/github/license/ptavares/zsh-pkenv)

zsh plugin for installing and loading [pkenv](https://github.com/iamhsa/pkenv.git)
>Inpired by [zsh-pyenv](https://github.com/mattberther/zsh-pyenv)

## Table of content

- [zsh-pkenv](#zsh-pkenv)
  - [Usage](#usage)
  - [Updating pkenv](#updating-pkenv)
  - [License](#license)

## Usage

Once the plugin installed, `pkenv` will be available

- Using [Antigen](https://github.com/zsh-users/antigen)

Bundle `zsh-pkenv` in your `.zshrc`

```shell
antigen bundle ptavares/zsh-pkenv
```

- Using [zplug](https://github.com/b4b4r07/zplug)

Load `zsh-pkenv` as a plugin in your `.zshrc`

```shell
zplug "ptavares/zsh-pkenv"
```

- Using [zgen](https://github.com/tarjoilija/zgen)

Include the load command in your `.zshrc`

```shell
zget load ptavares/zsh-pkenv
```

- As an [Oh My ZSH!](https://github.com/robbyrussell/oh-my-zsh) custom plugin

Clone `zsh-pkenv` into your custom plugins repo and load as a plugin in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-pkenv.git ~/.oh-my-zsh/custom/plugins/zsh-pkenv
```

```shell
plugins+=(zsh-pkenv)
```

Keep in mind that plugins need to be added before `oh-my-zsh.sh` is sourced.

- Manually

Clone this repository somewhere (`~/.zsh-pkenv` for example) and source it in your `.zshrc`

```shell
git clone https://github.com/ptavares/zsh-pkenv ~/.zsh-pkenv
```

```shell
source ~/.zsh-pkenv/zsh-pkenv.plugin.zsh
```

## Updating pkenv

The plugin comes with a zsh function to update [pkenv](https://github.com/tfutils/pkenv.git) manually

```shell
# From zsh shell
update_zsh_pkenv
```

## License

[MIT](LICENCE)

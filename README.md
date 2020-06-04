# zsh-wsl-proxy-plugin

An [`zsh`](http://www.zsh.org/) plugin to configure use [`WSL`](https://github.com/microsoft/WSL) host proxy for some tools.

# Installation

### Manual

Clone the Repository.

```zsh
git clone https://github.com/blackspiderx/zsh-wsl-proxy-plugin.git ~/path/to/fsh
```

And add the following to your `zshrc` file.
```zsh
source ~/path/to/fsh/zsh-wsl-proxy.plugin.zsh
```

### Zinit

Add the following to your `zshrc` file.

```zsh
zinit light blackspiderx/zsh-wsl-proxy-plugin
```

## Usage

### `wsl_proxy`

Try following command will enable proxy for supported package manager & software:

```zsh
$ wsl_proxy
```

### `wsl_noproxy`

If you want to disable proxy, you can run following command:

```zsh
$ wsl_noproxy
```
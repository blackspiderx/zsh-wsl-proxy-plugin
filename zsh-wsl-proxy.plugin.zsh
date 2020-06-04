0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

# Then ${0:h} to get plugin’s directory

WSL_HOST_IP=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
WSL_HOST_PROXY_PORT=1080
WSL_HOST_PROXY_SOCKS5="socks5://${WSL_HOST_IP}:${WSL_HOST_PROXY_PORT}"

enable_wsl_proxy_all() {
    export ALL_PROXY="${WSL_HOST_PROXY_SOCKS5}"
    export all_proxy="${WSL_HOST_PROXY_SOCKS5}"
}

disable_wsl_proxy_all() {
    unset ALL_PROXY
	unset all_proxy
}

# Aliases for backward compatibility
alias wsl_proxy=enable_wsl_proxy_all
alias wsl_noproxy=disable_wsl_proxy_all
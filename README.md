# Docker image for rbw Unofficial Bitwarden Client

This repo provides for running `rbw` from a Docker container.

## tl;dr 

### Installation

1. Clone repository

    ```bash
    git clone git@github.com:mtak/docker-rbw.git
    ```

2. Add `bin/` directory to PATH, and persist to `.bashrc` (or whatever your shell prefers)

    ```bash
    PATH="~/dev/docker-rbw/bin:$PATH"
    cat <<EOF >>~/.bashrc
    export PATH="~/dev/docker-rbw/bin:$PATH"
    EOF
    ```

3. Setup the agent, and follow the instructions

    ```bash
    rbw-setup.sh
    ```

### Usage

4. Start the agent. The agent will run in the background and cache your session

    ```bash
    rbw-agent
    ```

5. Use rbw like you normally would

    ```bash
    rbw ls
    ```

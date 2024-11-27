## Requirements

 * `docker`
 * `devcontainer` cli -- insstall with node
 * `just`
 * `atuin` to leverage the command syncing across containers

## Usage

 1. Build the image with `docker build -t base-python .`
 2. Copy the sample devcontainer as needed, which uses the image and setsup users.
 3. Use (or globally install) the `just` commands to standup the devcontainer without vscode.

## Future

 * variations for other languages
 * add other 'standard' tools that I want available -- `aider` comes to mind!
 * more fixes to git workflow -- namely setting SSH_AUTH_SOCK inside the container so I can interact with remotes from inside the container
 * maybe ideas like this (https://gist.github.com/frenata/f0ce0f0d9cf450ce5ebf637b6fc698ca) to allow `just` to be ignorant of whether its running in a container or not
   * AJ has a similar technique -- ask
 * figure out why installing neovim via *Dockerfile* rather than devcontainer feature breaks random stuff -- it otherwise makes first build pretty slow!

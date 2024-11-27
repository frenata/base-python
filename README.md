## Requirements

 * `docker`
 * `devcontainer` cli -- insstall with node
 * `just`
 * `atuin` to leverage the command syncing across containers

## Usage

 1. Build the image with `docker build -t base-python .`
 2. Copy the sample devcontainer as needed, which uses the image and setsup users.
 3. Use (or globally install) the `just` commands to standup the devcontainer without vscode.

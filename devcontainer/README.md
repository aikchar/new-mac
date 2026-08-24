Copy devcontainer.json and Dockerfile to any .devcontainer directory where you want to use the [Development Containers](https://containers.dev/).

Notice that devcontainer.json is adding Claude OAuth token to environment variables. Generate the token with,

    $ make claude-token

Use the value of the token in devcontainer.json.

# docker-ollama-deepseek-chatui

This repo contains a simple docker compose configuration to run HuggingFace's
[ChatUI](https://github.com/huggingface/chat-ui), backed by an ollama model, in
particular here we are using
[deepseek-r1:1.5b](https://ollama.com/library/deepseek-r1:1.5b), but you can
easily change it in [.env](.env) using another one from the
[library](https://ollama.com/library).

## Prerequisites

* [docker](https://docs.docker.com/get-started/get-docker/).

## Usage

To start the containers:

```shell
make compose-up
```

Wait until the images and the model is downloaded, as it will take some time
given the size, then you can access the [web-ui](http://localhost:3000).

To stop the containers:

```shell
make compose-down
```

# Pandocker

Academic markdown with Pandoc and PDF auto generation via Docker container with npm-watch as entrypoint.

## Usage

### docker-compose

`docker-compose up` will bring up the container based on the image `schoolcraft/pandocker`.

The default entrypoint runs a file watcher and auto-converts to pdf on `$(pwd)/data/index.md` file change.

### docker run

The Docker image can also be started directly:

```shell
docker run \
    -it \
    -u `id -u`:`id -g` \
    --mount type=bind,src=`pwd`,dst=/app/data \
    schoolcraft/pandocker
```

In this case, `index.md` file in current host directory is being watched.

The container can also be used in headless mode without the watcher. Call `pandoc` directly with the command below:

#### generate pdf with template eisvogel

```shell
docker run \
    --rm \
    -u `id -u`:`id -g` \
    -v `pwd`:/pandoc \
    -w /pandoc \
    --entrypoint pandoc \
    schoolcraft/pandocker \
    README.md -o README.pdf \
    --number-sections \
    --listings \
    --citeproc \
    --pdf-engine=xelatex \
    --template=eisvogel
```

#### generate pdf with standard template

```shell
docker run \
    --rm \
    -u `id -u`:`id -g` \
    -v `pwd`:/pandoc \
    -w /pandoc \
    --entrypoint pandoc \
    schoolcraft/pandocker \
    README.md -o README.pdf \
    --number-sections \
    --listings \
    --citeproc \
    --pdf-engine=xelatex
```

#### generate pdf with template letter

```shell
docker run \
    --rm \
    -u `id -u`:`id -g` \
    -v `pwd`:/pandoc \
    -w /pandoc \
    --entrypoint pandoc \
    schoolcraft/pandocker \
    README.md -o README.pdf \
    --number-sections \
    --listings \
    --citeproc \
    --pdf-engine=xelatex \
    --template=letter
```

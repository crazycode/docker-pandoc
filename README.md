# Pandoc Docker Image

A docker image for running the latest version of [Pandoc](https://github.com/jgm/pandoc) built from source.

## Usage

A `/srv` directory is created in the container, which can be mapped for use with relative file paths. Pandoc will always be run from the `/source` directory in the container.

```bash
docker run -v $(pwd):/srv crazycode/pandoc <... options ...>
```

# Docker image jozefhajnala/devr

This is a very heavy (~4.1 GB) image to enable fast iterative R development. Built on top of rocker/verse, it also has data.table, sparklyr and Spark and packages needed for using R with VS Code. Other useful utities are also present.

## Running it

```bash
# RStudio will be at http://127.0.0.1:8787, user = rstudio, password = pass.
# The directory ~/docker_data is mounted to /home/rstudio/docker_data for easy work with files in and out of the container
docker run --rm -it -e PASSWORD=pass -v ~/docker_data:/home/rstudio/docker_data -p 8787:8787 jozefhajnala/devr
```

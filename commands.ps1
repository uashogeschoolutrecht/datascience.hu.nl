# copy past this command in a powershell window to start a docker container where to run the jekyll command `jekyll serve` for building and debugging
docker run -it --rm --volume="${PWD}:/srv/jekyll:Z" -p 4000:4000 jekyll/jekyll bash

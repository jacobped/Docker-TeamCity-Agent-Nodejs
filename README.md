# Docker-TeamCity-Agent-Nodejs
Based on the official TeamCity Agent image with Nodejs added on top.

This image will automatically be updated when the official base image gets updated.

**Based on:**
https://hub.docker.com/r/jetbrains/teamcity-agent/

**Part of my Unraid repository:**
https://github.com/jacobped/unraid-docker-templates

## Build
```docker build -t tc-agent-nodejs .```

## Example command for running
This will start it up with docker build support and remove the container when you exit.

**Remember to replace Server address that will point it to your TeamCity server.**
  
```docker run -it -e SERVER_URL="<Server address>" --privileged -e DOCKER_IN_DOCKER=start -e AGENT_NAME="DockerNodejs-Agent" --name tc-agent-nodejs --rm tc-agent-nodejs```

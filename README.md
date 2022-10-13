# jdk-workspace
Example workspace for building custom JDK images

This repo is just to demonstrate how you can inject archived / out of data versions of openjdk libraries into the sdk list used by the gitpod workspace image.

This is an application of Gitpod's [custom dockerfile support](https://www.gitpod.io/docs/configure/workspaces/workspace-image#configure-a-custom-dockerfile), where the `.gitpod.yml` points to the `.gitpod.Dockerfile` as the base image to be built and then used for this repository.

If you have multiple repositories that need these versions of java (14 & 17), it would be more efficient to build an image from this Dockerfile and push it to a (public) repository for gitpod to use. Then each java repository would only require a `.gitpod.yml` listing that image:
```yaml
---
image: docker.io/mydocker/workspace-old-java:2022-10-13
```
## Try it out!

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/mrzarquon/jdk-workspace)

```bash
gitpod /workspace/jdk-workspace (main) $ sdk list java | grep 14
               |     | 14.0.2       | open    | local only | 14.0.2-open         
gitpod /workspace/jdk-workspace (main) $ sdk use java 14.0.2-open 
We periodically need to update the local cache. Please run:

  $ sdk update


Using java version 14.0.2-open in this shell.
gitpod /workspace/jdk-workspace (main) $ java --version
Picked up JAVA_TOOL_OPTIONS:  -Xmx12884m
openjdk 14.0.2 2020-07-14
OpenJDK Runtime Environment (build 14.0.2+12-46)
OpenJDK 64-Bit Server VM (build 14.0.2+12-46, mixed mode, sharing)
```
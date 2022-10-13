FROM docker.io/gitpod/workspace-java-17:2022-10-13-11-22-45

USER gitpod

WORKDIR  /home/gitpod

RUN curl -OL https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz &&\
    tar xzf openjdk-17.0.2_linux-x64_bin.tar.gz &&\
    rm openjdk-17.0.2_linux-x64_bin.tar.gz && mv jdk-17.0.2 /home/gitpod/.sdkman/candidates/java/17.0.2-open

RUN curl -OL https://download.java.net/java/GA/jdk14.0.2/205943a0976c4ed48cb16f1043c5c647/12/GPL/openjdk-14.0.2_linux-x64_bin.tar.gz &&\
    tar xzf openjdk-14.0.2_linux-x64_bin.tar.gz &&\
    rm openjdk-14.0.2_linux-x64_bin.tar.gz && mv jdk-14.0.2 /home/gitpod/.sdkman/candidates/java/14.0.2-open
FROM microsoft/dotnet
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install nodejs zip -y
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

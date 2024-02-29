FROM mcr.microsoft.com/dotnet/sdk
RUN apt-get update && apt-get install -y openssh-client nodejs npm zip
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

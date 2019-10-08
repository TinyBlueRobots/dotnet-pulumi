FROM mcr.microsoft.com/dotnet/core/sdk:3.0
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install apt-transport-https dotnet-sdk-2.2 nodejs zip -y
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

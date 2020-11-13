FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update && apt-get install apt-transport-https nodejs zip dotnet-sdk-3.1 ssh-client -y
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

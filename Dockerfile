FROM mcr.microsoft.com/dotnet/sdk:7.0
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

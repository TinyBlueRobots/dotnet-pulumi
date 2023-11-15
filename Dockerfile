FROM mcr.microsoft.com/dotnet/sdk
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN curl -fsSL https://get.pulumi.com | bash -
ENV PATH=$PATH:$HOME/.pulumi/bin

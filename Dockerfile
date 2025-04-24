FROM mcr.microsoft.com/dotnet/sdk:8.0

# Install DAB CLI
RUN dotnet tool install --global Microsoft.DataApiBuilder

# Add .NET tools to PATH
ENV PATH="$PATH:/root/.dotnet/tools"

# Set ASP.NET Core to bind to all interfaces
ENV ASPNETCORE_URLS=http://0.0.0.0:8080

# Set workdir and copy config
WORKDIR /app
COPY dab-config-is360.json .

# Start DAB using the config
CMD ["dab", "start", "--config", "dab-config-is360.json"]

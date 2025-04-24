FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN dotnet tool install --global Microsoft.DataApiBuilder
ENV PATH="${PATH}:/root/.dotnet/tools"
ENV ASPNETCORE_URLS=http://0.0.0.0:8080

WORKDIR /app
COPY dab-config-is360.json .

# Let shell resolve the env variable at runtime
CMD ["/bin/sh", "-c", "dab start --config dab-config-is360.json"]

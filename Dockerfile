FROM microsoft/dotnet:1.0.9-runtime

ADD . .
RUN npm install web/
RUN dotnet build

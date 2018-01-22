FROM microsoft/aspnetcore-build:2.0.5-2.1.4

RUN mkdir -p /usr/app/src/web
WORKDIR /usr/app/src/web
ADD . ..

RUN dotnet restore && npm install && dotnet build

ENTRYPOINT [ "dotnet" ]
CMD [ "run" ]
EXPOSE 5000

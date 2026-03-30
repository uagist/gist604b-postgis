FROM mcr.microsoft.com/devcontainers/python:3.11-bookworm

RUN apt-get update && apt-get install -y \
    postgresql-client \
    postgis \
    postgis-bin \
    && rm -rf /var/lib/apt/lists/*

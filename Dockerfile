# syntax=docker/dockerfile:1
FROM ubuntu:26.04

# Install dependencies, denk dran alle neu hinzufügen sobald neue da sind
RUN apt update && apt install -y ninja-build cmake g++ 

#Basis ordner namens app im image
WORKDIR /app

#Kopiert alles im oberen ordner(NexusKV) in den basis ordner von dem Image
COPY . .

RUN cmake -S . -B build -G Ninja
RUN cmake --build build

CMD ["./build/nexuskv"]
# Spring Boot Docker Basics

This repository contains a minimal Spring Boot application built with Java 21 and containerized using Docker. It's the first step in my DevOps learning journey, aimed at understanding the fundamentals of containerizing backend applications.

---

## 🛠️ What This Project Includes

- A barebones Spring Boot application (Java 21)
- Dockerfile to containerize the application
- Steps to build and run the Docker image
- Tested locally on a Docker Engine running on my Proxmox homelab setup

---

## 📦 Requirements

- Java 21
- Docker

---

## 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/<your-username>/springboot-docker-basics.git
cd springboot-docker-basics
```

### Build the Spring Boot Application
```bash
./mvnw clean package
```

This will generate a `.jar` file in the target directory.

### Build the Docker Image

```bash
docker build -t springboot-docker-app .
```
### Run the Docker Container

```bash
docker run -p 8080:8080 springboot-docker-app
```

### Access the Application
```bash
curl http://localhost:8080/hello
```

## 🧠 Learning Goals
- Understand the basics of Dockerizing Java backend services
- Write minimal Dockerfiles for Spring Boot apps
- Run and verify containers locally using Docker CLI

## 📄 License
This project is licensed under the MIT License.
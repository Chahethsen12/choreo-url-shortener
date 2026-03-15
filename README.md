# choreo-url-shortener

A simple URL shortener REST API built with [Ballerina](https://ballerina.io/) and deployed on [WSO2 Choreo](https://choreo.dev/).

## What it does

- Accepts a long URL and returns a shortened key
- Resolves a short key back to the original URL
- Built as a lightweight REST API with in-memory storage

## Tech Stack

- **Language:** Ballerina
- **Platform:** WSO2 Choreo (Cloud Data Plane)
- **Type:** REST API / Microservice

## Endpoints

| Method | Path | Description |
|--------|------|-------------|
| POST | `/shorten` | Submit a long URL, get a short key back |
| GET | `/resolve/{key}` | Resolve a short key to the original URL |

## Getting Started

### Prerequisites

- [Ballerina](https://ballerina.io/downloads/) installed locally
- A [Choreo](https://choreo.dev/) account

### Run Locally

```bash
git clone https://github.com/Chahethsen12/choreo-url-shortener.git
cd choreo-url-shortener
bal run
```

### Deploy on Choreo

1. Fork or connect this repository to your Choreo project
2. Create a new **Service** component
3. Select this repository and the `main` branch
4. Deploy via the Choreo dashboard

## Project Structure

```
choreo-url-shortener/
├── service.bal       # Main Ballerina service
├── Ballerina.toml    # Project config
└── README.md
```

## Author

**Chaheth Senevirathne**  
BSc (Hons) Computer Science — University of Bedfordshire  
[GitHub](https://github.com/Chahethsen12) · [LinkedIn](https://www.linkedin.com/in/chahethsenevirathne)
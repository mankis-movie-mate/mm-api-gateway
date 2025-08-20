# mm-api-gateway

The **API Gateway** acts as the single entry point for all client requests in the MovieMate system.  
It routes, secures, and manages access to all backend services.

---

## 🚦 Traefik Dashboard

To monitor and manage routing rules, access the Traefik dashboard:


---

## ⚙️ Configuration

All important settings are handled via environment variables.

- See `.env.example` for all available options and documentation.
- Copy `.env.example` to `.env` and edit values to fit your setup.

---

## 🐳 Build Locally from Dockerfile

To build the API Gateway Docker image locally:

```bash
docker build -t mm-api-gateway .
docker run --env-file .env -p 8080:8080 mm-api-gateway

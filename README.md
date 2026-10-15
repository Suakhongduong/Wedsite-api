# Valorant Character REST API

A Spring Boot REST API for managing Valorant characters. Built with Spring Data JPA, connected to a PostgreSQL database on Neon, and deployed via Docker on Render.

## Live API URL
* Base URL: https://wedsite-api.onrender.com/api/characters
* Note: Hosted on Render's free tier, so the first request might take ~50 seconds to wake up the server (cold start).

---

## Entity Structure

Class: `ValorantCharacter` (mapped to `characters` table)

- `characterId` (Long): Primary key, auto-generated.
- `name` (String): Required (`@NotBlank`).
- `description` (String): Required (`@NotBlank`).
- `role` (String): Character role (Duelist, Initiator, Sentinel, Controller).
- `origin` (String): Country of origin.

---

## API Endpoints

Base Path: `/api/characters`

### 1. Get All Characters
- Method: `GET /api/characters`
- Response: `200 OK`

### 2. Get Character by ID
- Method: `GET /api/characters/{id}`
- Response: `200 OK` (returns `404 Not Found` if ID doesn't exist)

### 3. Add a Character
- Method: `POST /api/characters`
- Response: `201 Created` (returns `400 Bad Request` if `name` or `description` is missing/blank)
- Body Example:
```json
{
  "name": "Jett",
  "description": "Agile duelist from South Korea.",
  "role": "Duelist",
  "origin": "South Korea"
}
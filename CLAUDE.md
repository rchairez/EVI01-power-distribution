# EVI01 Power Distribution — Team Instructions

## Project Overview
Interactive power distribution map for CoreWeave EVI01 data halls. Visualizes rack-level power allocation, RPP feeds, and capacity across pods.

## Stack
- Single-page HTML/CSS/JS (no build tools)
- Proxy servers: `netbox-proxy.py` (NetBox API), `jira-proxy.py` (Jira tickets)
- Data source: CoreWeave NetBox (live rack/power data)

## Architecture
- `EVI01-dh1.html` — Main app (floor plan, sidebar, detail panel, zoom controls)
- `netbox-proxy.py` — Python proxy to NetBox API (avoids CORS, injects auth)
- `jira-proxy.py` — Python proxy to Jira API for ticket lookups
- `start-power-atlas.sh` — Launches both proxies + serves the HTML

## Conventions
- All styles are inline in `<style>` blocks — no external CSS
- Rack colors map to power source type (RPP, PDU, UPS)
- Keep the UI fast — no heavy frameworks, no npm
- NetBox is the single source of truth for rack data

## Running Locally
```bash
./start-power-atlas.sh
```

## Key Rules
- Never hardcode NetBox or Jira credentials — always use environment variables
- Keep HTML under 2000 lines — split into modules if it grows
- Test with real NetBox data before pushing
- Coordinate with Robert Chairez on floor plan layout changes

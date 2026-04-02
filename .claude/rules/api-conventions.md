# API Conventions

- All external API calls go through proxy scripts (never call NetBox/Jira directly from frontend)
- NetBox proxy: `netbox-proxy.py` on localhost, injects $NETBOX_API_TOKEN
- Jira proxy: `jira-proxy.py` on localhost, injects $JIRA_API_TOKEN
- Frontend fetches use relative URLs to proxy endpoints
- Handle API errors gracefully — show fallback UI, never blank screen
- Cache NetBox responses client-side for 5 minutes to reduce API load

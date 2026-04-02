# Security Review Skill

Auto-invoked before any deploy or PR.

## Checks
1. Scan all files for hardcoded tokens, API keys, or credentials
2. Verify environment variables are used for all secrets
3. Check proxy scripts don't expose auth headers to frontend
4. Ensure .gitignore covers sensitive files (.env, settings.local.json, CLAUDE.local.md)
5. Verify no internal CoreWeave URLs are exposed in client-side code

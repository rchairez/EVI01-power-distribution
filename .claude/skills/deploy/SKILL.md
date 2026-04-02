# Deploy Skill

Auto-invoked on push to main.

## Workflow
1. Run security review skill first
2. Validate HTML (no broken tags, no console errors)
3. Check that static deploy works without proxy (graceful degradation)
4. Push to main → GitHub Pages auto-deploys
5. Verify live URL returns 200

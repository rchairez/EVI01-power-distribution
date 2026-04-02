# /project:review

Review the current state of the power distribution app for correctness and quality.

## Steps
1. Read `EVI01-dh1.html` and check for:
   - Hardcoded credentials or tokens
   - Broken rack color mappings
   - Missing error handling on API calls
2. Verify proxy scripts handle NetBox/Jira auth correctly
3. Check that rack data matches NetBox schema expectations
4. Report issues with file:line references

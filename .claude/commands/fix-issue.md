# /project:fix-issue

Fix a reported issue with the power distribution map.

## Input
Describe the issue: $ARGUMENTS

## Steps
1. Reproduce the issue by reading the relevant code
2. Identify root cause — check data flow: NetBox API → proxy → frontend
3. Fix with minimal changes
4. Verify the fix doesn't break rack rendering or sidebar data

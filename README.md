#hubot-gitolite

A hubot script for git / gitolite commit hooks

## Installation

Add **hubot-gitolite** to your `package.json` file:

```json
"dependencies": {
  "hubot": ">= 2.5.1",
  "hubot-scripts": ">= 2.4.2",
  "hubot-gitolite": ">= 0.0.0"
}
```

Add **hubot-gitolite** to your `external-scripts.json`:

```json
["hubot-gitolite"]
```

Run `npm install hubot-gitolite`

Add the hubot-post-commit-hook.py to your git / gitolite repo.

curl -vvvvv -X POST -H "Content-Type: application/json" -d '{"commit":{"repo":"test","id":"234432234","branch":"master
","author":"hellomang","message":"hi this is a test commit"}}' http://127.0.0.1:8080/hubot/gitolite/test


# Evergreen patch docker action

This action submits an Evergreen patch.

This action is not published, so you must check it out to use it. See the example below.

## Auth

You must get the 4-line authentication file from
https://spruce.mongodb.com/preferences/cli, base64 encode it, set it as a
secret in your repository's settings page in the GitHub UI, and pass it as
EVERGREEN_AUTH. See example usage below.

To base64 encode your ~/.evergreen.yml, run `base64 ~/.evergreen.yml`. On
macOS, you can copy it directly to your clipboard by `base64 ~/.evergreen.yml | pbcopy`.

## Inputs

### `project`

**Required** The project to patch against.

### `variant_regex`

A regex of variants to patch against.

### `task_regex`

A regex of tasks to patch against.

## Example usage

This action is not published. The example below demonstrates checking it out to use it.

```
on: [push]

jobs:
  evergreen_patch_job:
    runs-on: ubuntu-latest
    name: evergreen patch
    environment: test
    steps:
      - name: checkout
        uses: actions/checkout@v3
      - name: patch
        uses: ./
        id: patch
        with:
          project: evergreen-action
        env:
          EVERGREEN_AUTH: ${{ secrets.EVERGREEN_AUTH }}
```

# Renovate Monorepo Reproduction

There's one Dockerized "app" in `apps/greeting` which depends on the greeting library in `packages/greeting`.

There are two versions of the greeting package, `1.0.0` and `1.0.1`, tagged `packages/greeting/1.0.0` and
`packages/greeting/1.0.1` respectively.

The app's Dockerfile fetches the source of the package from GitHub using a pinned tag. The goal of this repository
is to get Renovate to keep the version up to date with published versions, that is, `apps/greeting/Dockerfile` should
see the following modification:

```diff
-ARG GREETING_REF=packages/greeting/v1.0.0
+ARG GREETING_REF=packages/greeting/v1.0.1
```

## Building

The greeting package is versioned using the `packages/greeting/version` file. To release a version of the package, run
`./packages/greeting/release.sh`. It creates a tag and pushes it.

To build the app, simply enter `apps/greeting` and run `docker build .`.

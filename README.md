# Helm Charts

A barebone Helm Charts repository. See [Chart Repository
Guide](https://github.com/helm/helm/blob/master/docs/chart_repository.md).

## How to use

Here's an example:
```
helm repo add containersolutions https://containersolutions.github.io/helm-charts/
helm install --name emu containersolutions/kafka-pubsub-emulator
```

## How to update

Ideally we should have a minimal CI step at each commit like the [official
repository](https://github.com/helm/charts). For now, just use the provided
script:

```
./update.sh
```

This will package the charts and generate the index. Just commit and push the
changes once you're done.

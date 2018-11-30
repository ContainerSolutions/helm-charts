#!/bin/bash

set -ex

DEST_DIR="${HELM_PACKAGE_DEST_DIR:-./docs}"
CHARTS_DIR="${HELM_CHARTS_DIR:-./charts}"

# Package all charts in $CHARTS_DIR and store them in $DEST_DIR
for chart_dir in $(find "${CHARTS_DIR}" -maxdepth 2 -name Chart.yaml -printf "%h\n") ; do
    helm package --destination $DEST_DIR $chart_dir
done

# Generate index.yaml
helm repo index $DEST_DIR

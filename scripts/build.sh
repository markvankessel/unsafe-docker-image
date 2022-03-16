IMAGE=mvkessel/unsafe-image

echo "Building image ${IMAGE}"
docker build -t ${IMAGE} .

echo "Testing image ${IMAGE} with snyk"
snyk container test --severity-threshold=medium --fail-on=upgradable ${IMAGE}

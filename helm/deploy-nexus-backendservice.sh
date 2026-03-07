HELM_NEXUS_URL="https://nexus.galluman.com/repository/helm-homelab/"
VERSION="`helm show chart backendservice | yq -r ".version"`"

helm package backendservice
curl -k -u $NEXUS_USERNAME:$NEXUS_PASSWORD $HELM_NEXUS_URL --upload-file backendservice-$VERSION.tgz
rm -f backendservice-$VERSION.tgz

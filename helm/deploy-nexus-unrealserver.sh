HELM_NEXUS_URL="https://nexus.galluman.com/repository/helm-homelab/"
VERSION="`helm show chart unrealserver | yq -r ".version"`"

helm package unrealserver
curl -k -u $NEXUS_USERNAME:$NEXUS_PASSWORD $HELM_NEXUS_URL --upload-file unrealserver-$VERSION.tgz
rm -f unrealserver-$VERSION.tgz

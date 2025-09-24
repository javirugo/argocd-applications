{{/*
Common labels
*/}}
{{- define "unrealserver.labels" -}}
app.kubernetes.io/created-by: unrealserver-helm
app.kubernetes.io/instance: {{ .Values.name }}
app.kubernetes.io/name: UnrealServer
app.kubernetes.io/version: "{{ .Values.image.tag }}"
lab.home/environment: {{ .Values.environmentName }}
app: unrealserver-{{ .Values.name }}
version: "{{ .Values.image.tag }}"
{{- end }}

{{/*
Selector labels
*/}}
{{- define "unrealserver.selectorLabels" -}}
app.kubernetes.io/instance: {{ .Values.name }}
app.kubernetes.io/name: UnrealServer
{{- end }}

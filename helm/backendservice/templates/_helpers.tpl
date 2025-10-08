{{/*
Common labels
*/}}
{{- define "backendservice.labels" -}}
app.kubernetes.io/created-by: backendservice-helm
app.kubernetes.io/instance: "backendservice-{{ .Values.name }}"
app.kubernetes.io/name: BackendService
app.kubernetes.io/version: {{ .Values.image.tag }}
lab.home/environment: {{ .Values.environmentName }}
app: {{ .Values.name }}
version: {{ .Values.image.tag }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "backendservice.selectorLabels" -}}
app.kubernetes.io/instance: "backendservice-{{ .Values.name }}"
app.kubernetes.io/name: BackendService
{{- end }}

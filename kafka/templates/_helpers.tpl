{{- define "kafka.fullname" -}}
{{- printf "%s-%s" .Release.Name "kafka" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "kafka.labels" -}}
app.kubernetes.io/name: {{ include "kafka.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "kafka.selectorLabels" -}}
app.kubernetes.io/name: "kafka"
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
{{- define "postgres.fullname" -}}
{{- printf "%s-postgres" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "postgres.configmap" -}}
{{- printf "%s-postgres-config" .Release.Name -}}
{{- end -}}
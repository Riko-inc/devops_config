{{- define "redis.fullname" -}}
{{- printf "%s-redis" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "redis.configmap" -}}
{{- printf "%s-redis-config" .Release.Name -}}
{{- end -}}
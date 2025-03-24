{{/*
Возвращает полное имя релиза с суффиксом auth-service
*/}}
{{- define "auth-service.fullname" -}}
{{- printf "%s-auth-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "auth-service.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

{{/*
Возвращает полное имя релиза с суффиксом space-service
*/}}
{{- define "space-service.fullname" -}}
{{- printf "%s-space-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "space-service.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

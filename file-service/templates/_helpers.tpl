{{/*
Возвращает полное имя релиза с суффиксом file-service
*/}}
{{- define "file-service.fullname" -}}
{{- printf "%s-file-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "file-service.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

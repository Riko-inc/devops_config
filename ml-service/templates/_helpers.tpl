{{/*
Возвращает полное имя релиза с суффиксом ml-service
*/}}
{{- define "ml-service.fullname" -}}
{{- printf "%s-ml-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "ml-service.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

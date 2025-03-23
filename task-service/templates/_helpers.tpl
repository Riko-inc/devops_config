{{/*
Возвращает полное имя релиза с суффиксом task-service
*/}}
{{- define "task-service.fullname" -}}
{{- printf "%s-task-service" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "task-service.name" -}}
{{- default .Chart.Name "task-service" -}}
{{- end -}}

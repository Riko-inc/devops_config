{{/*
Возвращает полное имя релиза с суффиксом frontend
*/}}
{{- define "frontend.fullname" -}}
{{- printf "%s-frontend" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает базовое имя сервиса
*/}}
{{- define "frontend.name" -}}
{{- default .Chart.Name -}}
{{- end -}}

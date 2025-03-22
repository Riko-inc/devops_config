{{/*
Возвращает полное имя релиза с суффиксом chart-а
*/}}
{{- define "myservice.fullname" -}}
{{- printf "%s-%s" .Release.Name "myservice" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Возвращает имя chart-а
*/}}
{{- define "myservice.name" -}}
{{- default .Chart.Name "myservice" -}}
{{- end -}}

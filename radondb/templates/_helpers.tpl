{{/*
radon name
*/}}
{{- define "radon.fullname" -}}
{{- $name := default .Chart.Name -}}
{{- if contains $name .Release.Name -}}
{{- printf .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name "radon" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

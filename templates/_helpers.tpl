{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "keycloak.fullname" -}}
{{- $appName := (include "fullname" .) | trunc 54 | trimSuffix "-" -}}
{{- printf "%s-%s" $appName "keycloak" -}}
{{- end -}}

{{- define "mysql.fullname" -}}
{{- $appName := (include "fullname" .) | trunc 54 | trimSuffix "-" -}}
{{- printf "%s-%s" $appName "mysql" -}}
{{- end -}}

{{/*
default fully qualified nginx name
truncate at 63 chars
*/}}
{{- define "nginx.fullname" -}}
{{- $appName := (include "fullname" .) | trunc 54 | trimSuffix "-" -}}
{{- printf "%s-%s" $appName "nginx" -}}
{{- end -}}

{{/*
default fully qualified nginx_default backend name
truncate at 63 chars
*/}}
{{- define "nginx-default_backend.fullname" -}}
{{- $appName := (include "fullname" .) | trunc 54 | trimSuffix "-" -}}
{{- printf "%s-%s" $appName "nginx-defaultbackend" -}}
{{- end -}}

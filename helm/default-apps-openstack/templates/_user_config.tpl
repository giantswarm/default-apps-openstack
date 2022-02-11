{{- define "userConfig" -}}
{{- with .userConfig }}
{{- if .configMap }}
apiVersion: v1
kind: ConfigMap
metadata:
  labels:
    {{- include "labels.common" . | nindent 4 }}
  name: {{ .Values.clusterName }}-user-values
  namespace: {{ .Release.Namespace }}
data:
  {{ .configMap | indent 2 }}
{{- end }}
---
{{- if .secret }}
apiVersion: v1
kind: Secret
metadata:
  labels:
    {{- include "labels.common" . | nindent 4 }}
  name: {{ .Values.clusterName }}-user-values
  namespace: {{ .Release.Namespace }}
stringData:
  {{ .configMap | indent 2 }}
{{- end }}
{{- end }}
{{- end }}

{{- define "app" -}}
apiVersion: application.giantswarm.io/v1alpha1
kind: App
metadata:
  annotations:
    chart-operator.giantswarm.io/force-helm-upgrade: "{{ .forceUpgrade }}"
  labels:
    {{- include "labels.common" . | nindent 4 }}
  name: {{ .Values.clusterName }}-{{ .appName }}
  namespace: {{ .Release.Namespace }}
spec:
  catalog: {{ .catalog }}
  kubeConfig:
    context:
      name: {{ .Values.clusterName }}-admin@{{ .Values.clusterName }}
    inCluster: false
    secret:
      name: {{ .Values.clusterName }}-kubeconfig
      namespace: {{ .Release.Namespace }}
  {{- with .clusterValues }}
  {{- if or .configMap .secret }}
  config:
  {{- if .configMap }}
    configMap:
      name: {{ .Values.clusterName }}-cluster-values
      namespace: {{ .Release.Namespace }}
  {{- end }}
  {{- if .secret }}
    secret:
      name: {{ .Values.clusterName }}-cluster-values
      namespace: {{ .Release.Namespace }}
  {{- end }}
  {{- end }}
  {{- with .userConfig }}
  {{- if or .configMap .secret }}
  userConfig:
  {{- if .configMap }}
    configMap:
      name: {{ .Values.clusterName }}-user-values
      namespace: {{ .Release.Namespace }}
  {{- end }}
  {{- if .secret }}
    secret:
      name: {{ .Values.clusterName }}-user-values
      namespace: {{ .Release.Namespace }}
  {{- end }}
  {{- end }}
  name: {{ .chartName }}
  namespace: {{ .namespace }}
  version: {{ .version }}
{{- end -}}

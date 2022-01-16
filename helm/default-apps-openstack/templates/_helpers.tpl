{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
app-operator.giantswarm.io/version: {{ .Values.appOperator.version }}
app.kubernetes.io/name: {{ include "name" . }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
app.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
app.kubernetes.io/managed-by: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.Version | quote }}
helm.sh/chart: {{ include "chart" . | quote }}
giantswarm.io/cluster: {{ .Values.cluster.name | quote }}
giantswarm.io/organization: {{ .Values.organization.name | quote }}
giantswarm.io/service-type: managed
{{- end -}}

{{- define "kubeconfig" -}}
kubeConfig:
  context:
    name: {{ .Values.cluster.name }}-admin@{{ .Values.cluster.name }}
  inCluster: false
  secret:
    name: {{ .Values.cluster.name }}-kubeconfig
    namespace: {{ .Values.organization.namespace }}
{{- end -}}

{{- define "config" -}}
config:
  configMap:
    name: {{ .Values.cluster.name }}-cluster-values
    namespace: {{ .Values.cluster.namespace }}
{{- end -}}

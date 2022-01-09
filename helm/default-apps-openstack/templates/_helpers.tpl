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
app.kubernetes.io/name: {{ .Values.name }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.giantswarm.io/branch: {{ .Chart.Annotations.branch | replace "#" "-" | replace "/" "-" | replace "." "-" | trunc 63 | trimSuffix "-" | quote }}
app.giantswarm.io/commit: {{ .Chart.Annotations.commit | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ include "chart" . | quote }}
giantswarm.io/cluster: {{ .Values.cluster.name }}
giantswarm.io/organization: {{ .Values.organization }}
giantswarm.io/service-type: {{ .Values.serviceType }}
{{- end -}}

{{- define "kubeconfig" -}}
kubeConfig:
  context:
    name: {{ .Values.cluster.name }}-admin@{{ .Values.cluster.name }}
  inCluster: false
  secret:
    name: {{ .Values.cluster.name }}-kubeconfig
    namespace: {{ .Values.cluster.namespace }}
{{- end -}}

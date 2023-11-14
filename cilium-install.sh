# This file is not a script, rather it is some commands relevant to cilium

helm install cilium cilium/cilium --version 1.14.4 \
   --namespace kube-system \
   --set routingMode=native \
   --set bpf.masquerade=true \
   --set kubeProxyReplacement=true \
   --set bandwidthManager.enabled=true \
   --set bandwidthManager.bbr=true \
   --set prometheus.enabled=true \
   --set operator.prometheus.enabled=true \
   --set hubble.enabled=true \
   --set hubble.metrics.enabled="{dns,drop,tcp,flow,port-distribution,icmp,httpV2:exemplars=true;labelsContext=source_ip\,source_namespace\,source_workload\,destination_ip\,destination_namespace\,destination_workload\,traffic_direction}"

helm upgrade cilium cilium/cilium --version 1.14.4 \
   --namespace kube-system \
   --set prometheus.enabled=true \
   --set operator.prometheus.enabled=true \
   --set hubble.enabled=true \
   --set hubble.metrics.enableOpenMetrics=true \
   --set hubble.metrics.enabled="{dns,drop,tcp,flow,port-distribution,icmp,httpV2:exemplars=true;labelsContext=source_ip\,source_namespace\,source_workload\,destination_ip\,destination_namespace\,destination_workload\,traffic_direction}"
output "spans_metrics_id" {
  description = "Map of id values across all spans_metrics, keyed the same as var.spans_metrics except keys with no id are omitted"
  value       = { for k, v in datadog_spans_metric.spans_metrics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spans_metrics_compute" {
  description = "Map of compute values across all spans_metrics, keyed the same as var.spans_metrics except keys with no compute are omitted"
  value       = { for k, v in datadog_spans_metric.spans_metrics : k => v.compute if v.compute != null && length(v.compute) > 0 }
}
output "spans_metrics_filter" {
  description = "Map of filter values across all spans_metrics, keyed the same as var.spans_metrics except keys with no filter are omitted"
  value       = { for k, v in datadog_spans_metric.spans_metrics : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "spans_metrics_group_by" {
  description = "Map of group_by values across all spans_metrics, keyed the same as var.spans_metrics except keys with no group_by are omitted"
  value       = { for k, v in datadog_spans_metric.spans_metrics : k => v.group_by if v.group_by != null && length(v.group_by) > 0 }
}
output "spans_metrics_name" {
  description = "Map of name values across all spans_metrics, keyed the same as var.spans_metrics except keys with no name are omitted"
  value       = { for k, v in datadog_spans_metric.spans_metrics : k => v.name if v.name != null && length(v.name) > 0 }
}


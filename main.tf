resource "datadog_spans_metric" "spans_metrics" {
  for_each = var.spans_metrics

  name = each.value.name

  dynamic "compute" {
    for_each = each.value.compute != null ? each.value.compute : []
    content {
      aggregation_type    = compute.value.aggregation_type
      include_percentiles = compute.value.include_percentiles
      path                = compute.value.path
    }
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      query = filter.value.query
    }
  }

  dynamic "group_by" {
    for_each = each.value.group_by != null ? each.value.group_by : []
    content {
      path     = group_by.value.path
      tag_name = group_by.value.tag_name
    }
  }
}


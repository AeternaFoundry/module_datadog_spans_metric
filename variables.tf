variable "spans_metrics" {
  description = <<EOT
Map of spans_metrics, attributes below
Required:
    - name
Optional:
    - compute (block):
        - aggregation_type (required)
        - include_percentiles (optional)
        - path (optional)
    - filter (block):
        - query (optional)
    - group_by (block):
        - path (required)
        - tag_name (optional)
EOT

  type = map(object({
    name = string
    compute = optional(list(object({
      aggregation_type    = string
      include_percentiles = optional(bool)
      path                = optional(string)
    })))
    filter = optional(list(object({
      query = optional(string)
    })))
    group_by = optional(list(object({
      path     = string
      tag_name = optional(string)
    })))
  }))
}


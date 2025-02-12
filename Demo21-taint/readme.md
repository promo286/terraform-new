# Key Differences

| Feature                        | `terraform taint` (Deprecated)         | `terraform apply -replace` (New)      |
|--------------------------------|----------------------------------------|----------------------------------------|
| **Usage**                      | Marks a resource as tainted for replacement | Directly applies a replacement        |
| **Manual apply needed?**       | Yes, after tainting                    | No, replacement happens in the same step |
| **Available in?**              | Terraform <0.15                        | Terraform 0.15+                        |
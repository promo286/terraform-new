# Key Differences

| Feature                        | `terraform import`                     | `terraform apply -target`             |
|--------------------------------|----------------------------------------|----------------------------------------|
| **Purpose**                    | Brings existing resources under Terraform control | Applies changes to a specific resource |
| **When to Use**                | When you have manually created resources that need to be managed in Terraform | When you only want to modify or apply changes to a specific resource |
| **Affects Other Resources?**   | No, only updates the Terraform state   | No, only applies to the targeted resource |
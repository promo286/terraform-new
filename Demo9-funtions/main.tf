variable "environment" {
  default = "dev"
}

variable "instance_types" {
  default = ["t2.micro", "t3.small", "t3.medium"]
}

variable "tags" {
  default = {
    Name  = "MyServer"
    Owner = "Admin"
  }
}

output "lower_env" {
  value = lower(var.environment) # "dev"
}

output "upper_env" {
  value = upper(var.environment) # "DEV"
}

output "joined_string" {
  value = join("-", var.instance_types) # "t2.micro-t3.small-t3.medium"
}

output "first_instance" {
  value = element(var.instance_types, 0) # "t2.micro"
}

output "merged_map" {
  value = merge(var.tags, { Env = var.environment }) # { Name = "MyServer", Owner = "Admin", Env = "dev" }
}

output "timestamp_now" {
  value = timestamp()
}

output "subnet_calc" {
  value = cidrsubnet("192.168.1.0/24", 2, 1) # "192.168.1.64/26"
}

output "for_loop_example" {
  value = [for item in var.instance_types : upper(item)] # ["T2.MICRO", "T3.SMALL", "T3.MEDIUM"]
}


output "file_content" {
  value = file("example.txt") # Reads content from example.txt
}

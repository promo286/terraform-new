# Terraform Data Types

Terraform supports several data types for its variables. Here are some examples:

## String
A string is a sequence of characters.

```hcl
variable "example_string" {
    type    = string
    default = "Hello, World!"
}
```

## Number
A number can be an integer or a floating-point value.

```hcl
variable "example_number" {
    type    = number
    default = 42
}
```

## Boolean
A boolean is either `true` or `false`.

```hcl
variable "example_boolean" {
    type    = bool
    default = true
}
```

## List
A list is an ordered collection of values.

```hcl
variable "example_list" {
    type    = list(string)
    default = ["one", "two", "three"]
}
```

## Map
A map is a collection of key-value pairs.

```hcl
variable "example_map" {
    type    = map(string)
    default = {
        key1 = "value1"
        key2 = "value2"
    }
}
```


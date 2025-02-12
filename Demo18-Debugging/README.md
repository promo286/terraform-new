# Terraform Debugging

Terraform provides several logging levels to help with debugging. You can set the logging level using the `TF_LOG` environment variable. Here are the available logging levels:

- **TRACE**: Detailed information, typically of interest only when diagnosing problems.
- **DEBUG**: Debug-level messages.
- **INFO**: Informational messages that highlight the progress of the application.
- **WARN**: Potentially harmful situations.
- **ERROR**: Error events that might still allow the application to continue running.

## Setting the Logging Level

To set the logging level, use the following command in your terminal:

### On Unix-based systems:

```sh
export TF_LOG=<LOG_LEVEL>
```

### On Windows:

```cmd
set TF_LOG=<LOG_LEVEL>
```

Replace `<LOG_LEVEL>` with one of the following: `TRACE`, `DEBUG`, `INFO`, `WARN`, or `ERROR`.

## Example

To set the logging level to `DEBUG`, use:

### On Unix-based systems:

```sh
export TF_LOG=DEBUG
```

### On Windows:

```cmd
set TF_LOG=DEBUG
```

To disable logging, unset the `TF_LOG` variable:

### On Unix-based systems:

```sh
unset TF_LOG
```

### On Windows:

```cmd
set TF_LOG=
```

## Running Terraform with Logging

After setting the `TF_LOG` environment variable, run your Terraform commands as usual. For example:

```sh
terraform apply
```

The logs will be printed to the standard output.

## Additional Debugging Options

You can also direct the logs to a file by setting the `TF_LOG_PATH` environment variable:

### On Unix-based systems:

```sh
export TF_LOG_PATH=./terraform.log
```

### On Windows:

```cmd
set TF_LOG_PATH=.\terraform.log
```

This will write the logs to `terraform.log` in the current directory.

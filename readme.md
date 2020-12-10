# Alpine with terraform and packer, aws-cli and az-cli and vim 8.2 with plugins

Entrypoint is bash. There's a Makefile to build, push, and run this too.

Because of the cli's, python3 and pip3 have been installed too.

Notes: This is an extension of terraform-packer-aws-alpine that adds the MS az-cli for Azure, which is often used by terraform when working with that infrastructue provider.

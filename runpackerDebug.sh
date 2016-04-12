#!/bin/bash -eux
rm -rf /tmp/packer_output_ubuntu/
export PACKER_LOG=1
packer build --var-file=variables.json template.json
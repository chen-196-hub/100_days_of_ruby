require 'yaml'


yaml = <<YAML
  sum: 510,
  orders:
    - 260
    - 250
YAML

object = YAML.load yaml

p object

# YAML.loal


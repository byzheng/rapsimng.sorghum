# Sorghum model options manager

An options manager for configuring sorghum model parameters. This object
provides methods to get and set sorghum related parameters.

## Usage

``` r
sorghum
```

## Value

An option manager object for configuring sorghum model parameters.

## Available Options

- phenology.thermal_time.x:

  Cardinal temperatures for thermal time calculation. Default: c(0, 26,
  37)

- phenology.thermal_time.y:

  Effective thermal time at corresponding cardinal temperatures.
  Default: c(0, 26, 0)

- phenology.thermal_time.method:

  Method used for thermal time calculation. Supported values: "3hr" and
  "HourlySinPpAdjusted". Default: "3hr"

## Methods

- get(key):

  Retrieve the value of an option by its key (e.g.,
  "phenology.thermal_time.x")

- set(key, value):

  Set the value of an option by its key

- reset():

  Reset all options to their default values

## Examples

``` r
# Get default thermal time cardinal temperatures
sorghum$get("phenology.thermal_time.x")
#> [1] 11 30 42

# Set custom values
sorghum$set("phenology.thermal_time.x" = c(0, 26, 37))
sorghum$set("phenology.thermal_time.y" = c(0, 26, 0))

# Reset to defaults
sorghum$reset()
```

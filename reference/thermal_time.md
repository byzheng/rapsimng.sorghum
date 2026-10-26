# Calculate thermal time using cardinal temperatures

Calculate thermal time using cardinal temperatures

## Usage

``` r
thermal_time(
  mint,
  maxt,
  x_temp = sorghum$get("phenology.thermal_time.x"),
  y_temp = sorghum$get("phenology.thermal_time.y"),
  method = sorghum$get("phenology.thermal_time.method")
)
```

## Arguments

- mint:

  The minimum temperature

- maxt:

  The maximum temperature

- x_temp:

  The cardinal temperatures using to calculate thermal time. The default
  values are c(0, 26, 37) defined in
  sorghum\$get("phenology.thermal_time.x").

- y_temp:

  The effective thermal time at the corresponding cardinal temperatures.
  The default values are c(0, 26, 0) defined in
  sorghum\$get("phenology.thermal_time.y").

- method:

  The method to calculate thermal time. The default method is "3hr",
  which uses the three hour temperature method. The other option is
  "default", which uses the default method ( maxt + mint ) / 2 - base.

## Value

The thermal time.

## Details

The daily thermal time is calculated by interpolating the effective
thermal time at three hour intervals between the daily minimum and
maximum temperatures, and then averaging these values to get the daily
thermal time. For more information about the sorghum phenology model,
see the [APSIM Next Generation Sorghum
Documentation](https://notes.apsimng.bangyou.me/docs/Plants/Sorghum/Phenology/ThermalTime.html).

## Examples

``` r
mint <- c(0, 10)
maxt <- c(30, 40)
thermal_time(mint, maxt)
#> [1] 6.779687 7.666797
```

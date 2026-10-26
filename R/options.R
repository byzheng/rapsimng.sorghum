
#' Sorghum model options manager
#'
#' An options manager for configuring sorghum model parameters. This object provides
#' methods to get and set sorghum related parameters.
#'
#' @section Available Options:
#' \describe{
#'   \item{phenology.thermal_time.x}{Cardinal temperatures for thermal time calculation. Default: c(0, 26, 37)}
#'   \item{phenology.thermal_time.y}{Effective thermal time at corresponding cardinal temperatures. Default: c(0, 26, 0)}
#'   \item{phenology.thermal_time.method}{Method used for thermal time calculation. Supported values: "3hr" and "HourlySinPpAdjusted". Default: "3hr"}
#' }
#'
#' @section Methods:
#' \describe{
#'   \item{get(key)}{Retrieve the value of an option by its key (e.g., "phenology.thermal_time.x")}
#'   \item{set(key, value)}{Set the value of an option by its key}
#'   \item{reset()}{Reset all options to their default values}
#' }
#'
#' @export
#' @importFrom optree create_options_manager
#' @importFrom optree v_xypair
#' @return An option manager object for configuring sorghum model parameters.
#' @examples
#' # Get default thermal time cardinal temperatures
#' sorghum$get("phenology.thermal_time.x")
#' 
#' # Set custom values
#' sorghum$set("phenology.thermal_time.x" = c(0, 26, 37))
#' sorghum$set("phenology.thermal_time.y" = c(0, 26, 0))
#' 
#' # Reset to defaults
#' sorghum$reset()
sorghum <- optree::create_options_manager(
    defaults = list(
        phenology = list(
            thermal_time = list(
                x = c(11, 30, 42),
                y = c(0, 19, 0),
                method = "3hr"
            )
        )
    ),
    validators = list(
        "phenology.thermal_time" = v_xypair(min_len = 3),
        "phenology.thermal_time.method" = optree::v_enum(c("3hr", "HourlySinPpAdjusted"))
    )
)

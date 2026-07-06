#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
	# Your application server logic
  # Создаем базу данных пользователей (логин и пароль)
  credentials <- data.frame(
    user = c("admin", "user1"),
    password = c("admin123", "secret2026"),
    stringsAsFactors = FALSE
  )
  # Инициализируем проверку
  auth <- shinymanager::secure_server(
    check_credentials = shinymanager::check_credentials(credentials)
  )
}

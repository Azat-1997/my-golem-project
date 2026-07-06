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
  auth <- callModule(
    module = auth_server,
    id = "auth",
    check_credentials = check_credentials(credentials)
  )
}

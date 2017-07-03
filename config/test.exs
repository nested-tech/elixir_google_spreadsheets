use Mix.Config


config :elixir_google_spreadsheets, :client,
  request_workers: 2,
  max_demand: 2,
  max_interval: 500,
  interval: 100

config :logger,
  backends: [{LoggerFileBackend, :file_log}],
  handle_otp_reports: false,
  handle_sasl_reports: false

config :logger, :file_log,
  level: :debug,
  path: "log/#{Mix.env}.log"

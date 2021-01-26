require 'report_builder'

After do
  sleep 3
  Capybara.use_default_driver
end

at_exit do
  ReportBuilder.configure do |config|
    config.input_path = "results/cucumber.json"
    config.report_path = "results/report_solides"
    config.report_types = [:html]
  end
  options = { report_title: "BDD Simples - Entrevista Sólides" }

  ReportBuilder.build_report options
end

# Unless explicitly stated otherwise all files in this repository are licensed
# under the Apache License Version 2.0.
# This product includes software developed at Logic Monitor (https://www.logicmonitor.com).
# Copyright 2020 Logic Monitor, Inc.

Gem::Specification.new do |spec|
    spec.name                           = "lm-logs-sdk"
    spec.version                        = '0.0.1'
    spec.authors                        = ["Logic Monitor"]
    spec.email                          = "rubygems@logicmonitor.com"
    spec.summary                        = "Logic Monitor SDK to send logs"
    spec.description                    = "This Logic Monitor SDK to sends logs to the configured LogicMonitor account."
    spec.homepage                       = "https://www.logicmonitor.com"
    spec.license                        = "Apache-2.0"
  
    spec.metadata["source_code_uri"]    = "https://github.com/logicmonitor/lm-logs-sdk-ruby"
    spec.metadata["documentation_uri"]  = "https://www.rubydoc.info/gems/lm-logs-sdk-ruby"
  
    spec.files         = [".gitignore", "Gemfile", "LICENSE", "README.md", "Rakefile", "ingest.gemspec", "lib/ingest.rb"]
    spec.require_paths = ["lib"]

  end
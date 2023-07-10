Gem::Specification.new do |s|

  s.name            = 'logstash-filter-elasticsearch'
  s.version         = '3.15.2'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Copies fields from previous log events in Elasticsearch to current events "
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'elasticsearch', ">= 7.14.0" # LS >= 6.7 and < 7.14 all used version 5.0.5
  s.add_runtime_dependency 'manticore', ">= 0.7.1"
  s.add_runtime_dependency 'logstash-mixin-ca_trusted_fingerprint_support', '~> 1.0'
  s.add_runtime_dependency 'logstash-mixin-normalize_config_support', '~>1.0'
  s.add_development_dependency 'cabin', ['~> 0.6']
  s.add_development_dependency 'webrick'
  s.add_development_dependency 'logstash-devutils'
end

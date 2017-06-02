Gem::Specification.new do |s|
  s.name          = 'logstash-output-kinesis-firehose'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'Output plugin to send json records to Kinesis Firehose'
  s.description   = 'A Ruby gem that acts as an output plugin to Logstash. Records are converted to json format if necessary, and then sent to the configured kinesis firehose stream.'
  s.homepage      = 'https://www.github.com/danapplegate/logstash-outpu-kinesis-firehose'
  s.authors       = ['Dan Applegate']
  s.email         = 'applegatedt@gmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_dependency "aws-sdk", '~> 2.9'
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_development_dependency "logstash-devutils"
end

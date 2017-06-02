# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"
require "aws-sdk"

# An kinesis-firehose output that does nothing.
class LogStash::Outputs::KinesisFirehose < LogStash::Outputs::Base
  config_name "kinesis-firehose"

  public
  def register
	  @firehose = Aws::Firehose::Client.new(region: 'us-east-1')
  end # def register

  public
  def receive(event)
	  response = @firehose.put_record({
		  delivery_stream_name: 'parsec-backend-logs-development',
		  record: {
			  data: "Test data"
		  },
	  })
	  puts response.inspect
  end # def event
end # class LogStash::Outputs::KinesisFirehose

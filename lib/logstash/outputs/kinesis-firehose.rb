# encoding: utf-8
require "logstash/outputs/base"
require "logstash/namespace"

# An kinesis-firehose output that does nothing.
class LogStash::Outputs::KinesisFirehose < LogStash::Outputs::Base
  config_name "kinesis-firehose"

  public
  def register
  end # def register

  public
  def receive(event)
    return "Event received"
  end # def event
end # class LogStash::Outputs::KinesisFirehose

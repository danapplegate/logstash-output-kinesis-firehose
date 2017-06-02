# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/kinesis-firehose"
require "logstash/codecs/plain"
require "logstash/event"
require "aws-sdk"

describe LogStash::Outputs::KinesisFirehose do
	let(:sample_event) { LogStash::Event.new }
	let(:output) { LogStash::Outputs::KinesisFirehose.new }

	before do
		output.register
	end

	describe "receive message" do
		subject { output.receive(sample_event) }

		it "sends record to Kinesis Firehose" do
			expect_any_instance_of(Aws::Firehose::Client).to receive(:put_record)
		end
	end
end

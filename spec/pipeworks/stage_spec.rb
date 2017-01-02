require "spec_helper"

describe Pipeworks::Stage do
  let(:dummy_stage) { Class.new { include Pipeworks::Stage }}

  describe 'an implemented stage' do
    it 'respond to #queue_in' do
      expect(dummy_stage.respond_to?(:queue_in)).to be true
    end

    it 'accept definition of #queue_in' do
      dummy_stage.queue_in('a_queue')
      expect(dummy_stage.queue_in_name).to eq 'a_queue'
    end

    it 'respond to #queue_out' do
      expect(dummy_stage.respond_to?(:queue_out)).to be true
    end

    it 'accept definition of #queue_out' do
      dummy_stage.queue_out('a_queue')
      expect(dummy_stage.queue_out_name).to eq 'a_queue'
    end
  end
end

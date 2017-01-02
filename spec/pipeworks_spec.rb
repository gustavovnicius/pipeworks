require "spec_helper"

describe Pipeworks do
  it "has a version number" do
    expect(Pipeworks::VERSION).not_to be nil
  end

  it "is configurable" do
    Pipeworks.configure do |config|
      expect(config).to be_a_instance_of(Pipeworks::Configuration)
    end
  end

  it "persist configuration after the config block is called" do
    expected_config = nil
    Pipeworks.configure do |config|
      expected_config = config
    end

    expect(Pipeworks.configuration).to eq(expected_config)
  end
end

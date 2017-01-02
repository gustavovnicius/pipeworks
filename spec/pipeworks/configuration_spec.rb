require "spec_helper"

describe Pipeworks::Configuration do
  context 'on rabbitmq configuration' do
    it 'has default host' do
      expect(subject.rabbitmq_host).to eq('127.0.0.1')
    end

    it 'accept host' do
      subject.rabbitmq_host = 'localhost'
      expect(subject.rabbitmq_host).to eq('localhost')
    end

    it 'has default port' do
      expect(subject.rabbitmq_port).to eq('5672')
    end

    it 'accept port' do
      subject.rabbitmq_port = '5673'
      expect(subject.rabbitmq_port).to eq('5673')
    end

    it 'has default vhost' do
      expect(subject.rabbitmq_vhost).to eq('/')
    end

    it 'accept vhost' do
      subject.rabbitmq_vhost = 'a_vhost'
      expect(subject.rabbitmq_vhost).to eq('a_vhost')
    end

    it 'has default user' do
      expect(subject.rabbitmq_user).to eq('admin')
    end

    it 'accept user' do
      subject.rabbitmq_user = 'user'
      expect(subject.rabbitmq_user).to eq('user')
    end

    it 'has default password' do
      expect(subject.rabbitmq_pass).to eq('admin')
    end

    it 'accept password' do
      subject.rabbitmq_pass = '123456'
      expect(subject.rabbitmq_pass).to eq('123456')
    end
  end
end

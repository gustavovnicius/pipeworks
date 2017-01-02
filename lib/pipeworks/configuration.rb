class Pipeworks::Configuration
  attr_accessor :rabbitmq_host, :rabbitmq_port, :rabbitmq_vhost,
                :rabbitmq_user, :rabbitmq_pass, :auth_mecanism

  def initialize
    @rabbitmq_host  = '127.0.0.1'
    @rabbitmq_port  = '5672'
    @rabbitmq_vhost = '/'
    @rabbitmq_user  = 'admin'
    @rabbitmq_pass  = 'admin'
    @auth_mecanism  = 'plain'
  end
end

class MyWorkerJob
  include Sidekiq::Job

  def perform
    # Do something
    puts "Hello, sayam"
  end
end

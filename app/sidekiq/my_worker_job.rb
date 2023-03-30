class MyWorkerJob
  include Sidekiq::Job

  def perform
    # Do something
    puts "Hello, sayam"
    posts = Post.where('published_at < ?', Time.now)
            .where(published: false)
            .where(schedule: true)
            # debugger
            posts.each do |post|
                post.publish
            end
  end
end

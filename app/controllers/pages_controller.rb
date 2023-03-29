class PagesController < ApplicationController
  def home
  end
  def hello
    MyWorkerJob.perform_at(10.seconds.from_now)
  end
end

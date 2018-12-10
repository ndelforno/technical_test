class FooController < ActionController::Base
  respond_to :html

  def create
    @foo = Foo.new params[:foo]
    @foo.save
    mail_subscribers_with @foo.id
    respond_with @foo
  end
end

Has a job:

def mail_subscribers_with(id)
  MAIL_SUBSCRIBERS_QUEUE.push :id => id
end

And has a queue:
  MAIL_SUBSCRIBERS_QUEUE = HackerFriday::WorkQueue.new :mail_subscribers_queue, :size => 3 do |info|
  foo = Foo.find info[:id]
  # A custom ActionMailer class to send the email
  SubscriberMailer.mail(foo).deliver
end

Foo.find(info[:id])

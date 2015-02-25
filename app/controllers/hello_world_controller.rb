class HelloWorldController < ApplicationController
  
  def hello_world
    Pusher['my-channel'].trigger('my_event', {
      message: 'hello world'
    })
  end
  
end
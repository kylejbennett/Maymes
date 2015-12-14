class WelcomeController < ApplicationController
  def index
  end

  def contact
  end

  def sendmail
  	  @subject=params[:subject]
  	  @name=params[:name]
      @email=params[:email]
      @body=params[:body]

      m = Mandrill::API.new
      message = {
        :subject=> "#{@subject}",
        :from_name=> "#{@name}",
        :text=>"",
        :to=>[
            {
            :email=> "kyle.j.bennett5@gmail.com",
            :name=> "Customer Service"
            }
            ],
            :html=>"<html><p>#{@body}</p></html>",
            :from_email=>"#{@email}"
      }
      sending = m.messages.send message
      puts sending

      redirect_to root_path
      flash[:notice] = "Your message has been sent!"
  end

end

class TextsController < ApplicationController
  def send_text
    @sms_sender = SMSSender.new
    if @sms_sender.send_text(Task.find(params[:id]))
      flash[:success] = 'A text reminer has been sent!'
    else
      flash[:error] = 'Uh oh! Reminder text could not be sent!'
    end
  end
end

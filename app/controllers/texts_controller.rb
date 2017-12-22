class TextsController < ApplicationController
  def send_text
    @sms_sender = SMSSender.new
    @sms_sender.send_text(Task.find(params[:id]))
  end
end

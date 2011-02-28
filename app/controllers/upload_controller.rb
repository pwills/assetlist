class UploadController < ApplicationController
  def index
     render :file => 'app\views\assets\new.html.erb'
  end
  def UploadFile
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
end



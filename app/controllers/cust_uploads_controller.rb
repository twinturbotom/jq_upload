class CustUploadsController < ApplicationController
  def index
    @cust_uploads = CustUpload.all
  end

  def show
    @cust_upload = CustUpload.find(params[:id])
  end

  def new
    @cust_upload = CustUpload.new
  end

  def create
    @cust_upload = CustUpload.create(params[:cust_upload])
  end

  def edit
    @cust_upload = CustUpload.find(params[:id])
  end

  def update
    @cust_upload = CustUpload.find(params[:id])
    if @cust_upload.update_attributes(params[:cust_upload])
        redirect_to @cust_upload_url, notice: "Cust upload was successfully updated."
      else
        render :edit
    end
  end

  def destroy
    @cust_upload = CustUpload.find(params[:id])
    @cust_upload.destroy
    redirect_to cust_uploads_url, notice: "Cust Upload was successfully destroyed"
  end
end
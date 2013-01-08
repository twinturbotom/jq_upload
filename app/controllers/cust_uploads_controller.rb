class CustUploadsController < ApplicationController
  # GET /cust_uploads
  # GET /cust_uploads.json
  def index
    @cust_uploads = CustUpload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cust_uploads }
    end
  end

  # GET /cust_uploads/1
  # GET /cust_uploads/1.json
  def show
    @cust_upload = CustUpload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cust_upload }
    end
  end

  # GET /cust_uploads/new
  # GET /cust_uploads/new.json
  def new
    @cust_upload = CustUpload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cust_upload }
    end
  end

  # GET /cust_uploads/1/edit
  def edit
    @cust_upload = CustUpload.find(params[:id])
  end

  # POST /cust_uploads
  # POST /cust_uploads.json
  def create
    @cust_upload = CustUpload.new(params[:cust_upload])

    respond_to do |format|
      if @cust_upload.save
        format.html { redirect_to @cust_upload, notice: 'Cust upload was successfully created.' }
        format.json { render json: @cust_upload, status: :created, location: @cust_upload }
      else
        format.html { render action: "new" }
        format.json { render json: @cust_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cust_uploads/1
  # PUT /cust_uploads/1.json
  def update
    @cust_upload = CustUpload.find(params[:id])

    respond_to do |format|
      if @cust_upload.update_attributes(params[:cust_upload])
        format.html { redirect_to @cust_upload, notice: 'Cust upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cust_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cust_uploads/1
  # DELETE /cust_uploads/1.json
  def destroy
    @cust_upload = CustUpload.find(params[:id])
    @cust_upload.destroy

    respond_to do |format|
      format.html { redirect_to cust_uploads_url }
      format.json { head :no_content }
    end
  end
end

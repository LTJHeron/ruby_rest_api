class ProxyImagesController < ApplicationController
  # GET /proxy_images
  # GET /proxy_images.json
  def index
    @proxy_images = ProxyImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proxy_images }
    end
  end

  # GET /proxy_images/1
  # GET /proxy_images/1.json
  def show
    @proxy_image = ProxyImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proxy_image }
    end
  end

  # GET /proxy_images/new
  # GET /proxy_images/new.json
  def new
    @proxy_image = ProxyImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proxy_image }
    end
  end

  # GET /proxy_images/1/edit
  def edit
    @proxy_image = ProxyImage.find(params[:id])
  end

  # POST /proxy_images
  # POST /proxy_images.json
  def create
    @proxy_image = ProxyImage.new(params[:proxy_image])

    respond_to do |format|
      if @proxy_image.save
        format.html { redirect_to @proxy_image, notice: 'Proxy image was successfully created.' }
        format.json { render json: @proxy_image, status: :created, location: @proxy_image }
      else
        format.html { render action: "new" }
        format.json { render json: @proxy_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proxy_images/1
  # PUT /proxy_images/1.json
  def update
    @proxy_image = ProxyImage.find(params[:id])

    respond_to do |format|
      if @proxy_image.update_attributes(params[:proxy_image])
        format.html { redirect_to @proxy_image, notice: 'Proxy image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proxy_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proxy_images/1
  # DELETE /proxy_images/1.json
  def destroy
    @proxy_image = ProxyImage.find(params[:id])
    @proxy_image.destroy

    respond_to do |format|
      format.html { redirect_to proxy_images_url }
      format.json { head :no_content }
    end
  end
end

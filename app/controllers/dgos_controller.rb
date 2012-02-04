class DgosController < ApplicationController
  # GET /dgos
  # GET /dgos.json
  def index
    @dgos = Dgo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dgos }
    end
  end

  # GET /dgos/1
  # GET /dgos/1.json
  def show
    @dgo = Dgo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dgo }
    end
  end

  # GET /dgos/new
  # GET /dgos/new.json
  def new
    @dgo = Dgo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dgo }
    end
  end

  # GET /dgos/1/edit
  def edit
    @dgo = Dgo.find(params[:id])
  end

  # POST /dgos
  # POST /dgos.json
  def create
    @dgo = Dgo.new(params[:dgo])

    respond_to do |format|
      if @dgo.save
        format.html { redirect_to @dgo, notice: 'Dgo was successfully created.' }
        format.json { render json: @dgo, status: :created, location: @dgo }
      else
        format.html { render action: "new" }
        format.json { render json: @dgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dgos/1
  # PUT /dgos/1.json
  def update
    @dgo = Dgo.find(params[:id])

    respond_to do |format|
      if @dgo.update_attributes(params[:dgo])
        format.html { redirect_to @dgo, notice: 'Dgo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @dgo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dgos/1
  # DELETE /dgos/1.json
  def destroy
    @dgo = Dgo.find(params[:id])
    @dgo.destroy

    respond_to do |format|
      format.html { redirect_to dgos_url }
      format.json { head :ok }
    end
  end
end

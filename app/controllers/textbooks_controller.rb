class TextbooksController < ApplicationController
  # GET /textbooks
  # GET /textbooks.json
  def index
    @textbooks = Textbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @textbooks }
    end
  end

  # GET /textbooks/1
  # GET /textbooks/1.json
  def show
    @textbook = Textbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @textbook }
    end
  end

  # GET /textbooks/new
  # GET /textbooks/new.json
  def new
    @textbook = Textbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @textbook }
    end
  end

  # GET /textbooks/1/edit
  def edit
    @textbook = Textbook.find(params[:id])
  end

  # POST /textbooks
  # POST /textbooks.json
  def create
    @textbook = Textbook.new(params[:textbook])

    respond_to do |format|
      if @textbook.save
        format.html { redirect_to @textbook, notice: 'Textbook was successfully created.' }
        format.json { render json: @textbook, status: :created, location: @textbook }
      else
        format.html { render action: "new" }
        format.json { render json: @textbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /textbooks/1
  # PUT /textbooks/1.json
  def update
    @textbook = Textbook.find(params[:id])

    respond_to do |format|
      if @textbook.update_attributes(params[:textbook])
        format.html { redirect_to @textbook, notice: 'Textbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @textbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textbooks/1
  # DELETE /textbooks/1.json
  def destroy
    @textbook = Textbook.find(params[:id])
    @textbook.destroy

    respond_to do |format|
      format.html { redirect_to textbooks_url }
      format.json { head :no_content }
    end
  end
end

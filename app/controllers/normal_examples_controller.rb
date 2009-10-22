class NormalExamplesController < ApplicationController
  # GET /normal_examples
  # GET /normal_examples.xml
  def index
    @normal_examples = NormalExample.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @normal_examples }
    end
  end

  # GET /normal_examples/1
  # GET /normal_examples/1.xml
  def show
    @normal_example = NormalExample.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @normal_example }
    end
  end

  # GET /normal_examples/new
  # GET /normal_examples/new.xml
  def new
    @normal_example = NormalExample.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @normal_example }
    end
  end

  # GET /normal_examples/1/edit
  def edit
    @normal_example = NormalExample.find(params[:id])
  end

  # POST /normal_examples
  # POST /normal_examples.xml
  def create
    @normal_example = NormalExample.new(params[:normal_example])

    respond_to do |format|
      if @normal_example.save
        flash[:notice] = 'NormalExample was successfully created.'
        format.html { redirect_to(@normal_example) }
        format.xml  { render :xml => @normal_example, :status => :created, :location => @normal_example }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @normal_example.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /normal_examples/1
  # PUT /normal_examples/1.xml
  def update
    @normal_example = NormalExample.find(params[:id])

    respond_to do |format|
      if @normal_example.update_attributes(params[:normal_example])
        flash[:notice] = 'NormalExample was successfully updated.'
        format.html { redirect_to(@normal_example) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @normal_example.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /normal_examples/1
  # DELETE /normal_examples/1.xml
  def destroy
    @normal_example = NormalExample.find(params[:id])
    @normal_example.destroy

    respond_to do |format|
      format.html { redirect_to(normal_examples_url) }
      format.xml  { head :ok }
    end
  end
end

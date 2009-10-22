class FormtasticExamplesController < ApplicationController
  # GET /formtastic_examples
  # GET /formtastic_examples.xml
  def index
    @formtastic_examples = FormtasticExample.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @formtastic_examples }
    end
  end

  # GET /formtastic_examples/1
  # GET /formtastic_examples/1.xml
  def show
    @formtastic_example = FormtasticExample.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @formtastic_example }
    end
  end

  # GET /formtastic_examples/new
  # GET /formtastic_examples/new.xml
  def new
    @formtastic_example = FormtasticExample.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @formtastic_example }
    end
  end

  # GET /formtastic_examples/1/edit
  def edit
    @formtastic_example = FormtasticExample.find(params[:id])
  end

  # POST /formtastic_examples
  # POST /formtastic_examples.xml
  def create
    @formtastic_example = FormtasticExample.new(params[:formtastic_example])

    respond_to do |format|
      if @formtastic_example.save
        flash[:notice] = 'FormtasticExample was successfully created.'
        format.html { redirect_to(@formtastic_example) }
        format.xml  { render :xml => @formtastic_example, :status => :created, :location => @formtastic_example }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @formtastic_example.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /formtastic_examples/1
  # PUT /formtastic_examples/1.xml
  def update
    @formtastic_example = FormtasticExample.find(params[:id])

    respond_to do |format|
      if @formtastic_example.update_attributes(params[:formtastic_example])
        flash[:notice] = 'FormtasticExample was successfully updated.'
        format.html { redirect_to(@formtastic_example) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @formtastic_example.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /formtastic_examples/1
  # DELETE /formtastic_examples/1.xml
  def destroy
    @formtastic_example = FormtasticExample.find(params[:id])
    @formtastic_example.destroy

    respond_to do |format|
      format.html { redirect_to(formtastic_examples_url) }
      format.xml  { head :ok }
    end
  end
end

class AbTestsController < ApplicationController
  before_action :set_ab_test, only: [:show, :edit, :update, :destroy]

  # GET /ab_tests
  # GET /ab_tests.json
  def index
    @site = Site.find(params[:site_id])
    @ab_tests = @site.ab_tests
  end

  # GET /ab_tests/1
  # GET /ab_tests/1.json
  def show
  end

  # GET /ab_tests/new
  def new
    @ab_test = AbTest.new
  end

  # GET /ab_tests/1/edit
  def edit
  end

  # POST /ab_tests
  # POST /ab_tests.json
  def create
    @ab_test = AbTest.new(ab_test_params)

    respond_to do |format|
      if @ab_test.save
        format.html { redirect_to @ab_test, notice: 'Ab test was successfully created.' }
        format.json { render :show, status: :created, location: @ab_test }
      else
        format.html { render :new }
        format.json { render json: @ab_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ab_tests/1
  # PATCH/PUT /ab_tests/1.json
  def update
    # respond_to do |format|
    #   if @ab_test.update(ab_test_params)
    #     format.html { redirect_to @ab_test, notice: 'Ab test was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @ab_test }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @ab_test.errors, status: :unprocessable_entity }
    #   end
    # end

    #render :json @data
  end

  # DELETE /ab_tests/1
  # DELETE /ab_tests/1.json
  def destroy
    @ab_test.destroy
    respond_to do |format|
      format.html { redirect_to ab_tests_url, notice: 'Ab test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ab_test
      @ab_test = AbTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ab_test_params
      params.fetch(:ab_test, {})
    end
end

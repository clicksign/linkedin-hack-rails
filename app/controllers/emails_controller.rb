class EmailsController < ApplicationController
  before_action :set_email, only: [:show, :edit, :update, :destroy]

  # GET /emails
  # GET /emails.json
  def index
    @emails = Email.all.order("lower(domain), lower(email)")
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
  end

  # GET /emails/new
  def new
    @email = Email.new
  end

  # GET /emails/1/edit
  def edit
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = Email.new(email_params)

    respond_to do |format|
      if @email.save
        format.html { redirect_to @email, notice: 'Email was successfully created.' }
        format.json { render :show, status: :created, location: @email }
      else
        format.html { render :new }
        # do not return error to API
        #format.json { render json: @email.errors, status: :unprocessable_entity }
        format.json { render :show, status: :created, location: @email }
      end
    end
  end

  # PATCH/PUT /emails/1
  # PATCH/PUT /emails/1.json
  def update
    respond_to do |format|
      if @email.update(email_params)
        format.html { redirect_to @email, notice: 'Email was successfully updated.' }
        format.json { render :show, status: :ok, location: @email }
      else
        format.html { render :edit }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email.destroy
    respond_to do |format|
      format.html { redirect_to emails_url, notice: 'Email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import_emails
    url = "http://127.0.0.1:9999/sitemap-data-email-format-com--campaign-#{params[:id]}/_all_docs?include_docs=true"
    resource = RestClient::Resource.new(url)
    @data = resource.get()
    @json = JSON.parse(@data)

    @json['rows'].each do |j|
      if j['doc']['domain'].present? and j['doc']['emails'].present?
        domain = j['doc']['domain'].strip
        email = j['doc']['emails'].strip

        @emails = Email.new(email: email, domain: domain)
        @emails.save
      end
    end

    redirect_to "/emails"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_params
      params.require(:email).permit(:domain, :email)
    end
end

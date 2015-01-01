class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  # GET /tracks
  # GET /tracks.json
  def index
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Settings.twitter_key
      config.consumer_secret     = Settings.twitter_secret
      config.access_token        = session[:oauth_token]
      config.access_token_secret = session[:oauth_token_secret]
    end

    start_words = client.search("from:#{current_user.name} #{@track.start_word}")
    end_words = client.search("from:#{current_user.name} #{@track.end_word}")

    latest_record = @track.records.order('start_time DESC').first
    if latest_record
      latest_start_time = latest_record.start_time
    end

    start_words.zip(end_words).each do |start_word, end_word|
      start_time = start_word.created_at
      end_time = end_word.created_at
      
      if !end_time
        break
      end

      if latest_start_time && start_time <= latest_start_time
        break
      end

      @record = @track.records.build(start_time: start_time, end_time: end_time)
      @record.save 
    end

  end

  # GET /tracks/new
  def new
    @track = Track.new
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = current_user.tracks.build(track_params)

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render action: 'show', status: :created, location: @track }
      else
        format.html { render action: 'new' }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def track_params
      params.require(:track).permit(:start_word, :end_word)
    end
end

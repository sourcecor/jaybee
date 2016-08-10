class Admin::PicturesController < Admin::ApplicationController
  def update_sequence
    params[:data].each do |k, v|
      Picture.find(v[:id]).update_attribute(:seq, v[:seq]) unless !Picture.exists?(:id => v[:id])
    end
    respond_to do |format|
      # format.json { render json: @jcard }
      format.json { render json: { status: "successful"} }
    end
  end
end

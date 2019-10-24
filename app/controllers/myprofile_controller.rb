class MyprofileController < ApplicationController
  
  def update
    # How to handle img_urL??
    name = params[:dog_name]
    age = params[:dog_age]
    gender = params[:dog_gender]
    breed = params[:dog_breed]
    weight = params[:dog_weight]
    tag1 = params[:tag1]
    tag2 = params[:tag2]
    tag3 = params[:tag3]
    tag4 = params[:tag4]
    tag5 = params[:tag5]
    tag6 = params[:tag6]
    tag7 = params[:tag7]
    tag8 = params[:tag8]
    tag9 = params[:tag9]
    tag10 = params[:tag10]
    tag11 = params[:tag11]
    taga = params[:taga]
    tagb= params[:tagb]
    tagc = params[:tagc]
    tagd = params[:tagd]
    tage = params[:tage]
    tagf = params[:tagf]
  end
  
  private

    def user_params
      p "got here"
      params.require(:myprofile).permit(:image_url)
    end
end

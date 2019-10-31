class MyprofileController < ApplicationController
  
  
  
    # POST /dogs
  # POST /dogs.json
  def update
    @dog = Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end
  
      # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      # TODO: FIX THIS, CHECK PARAMS!
      # params.require(:dog).permit(:name, :age, :gender, :breed, :weight, :cat_friendly, :child_friendly, :playful, :barker, :energetic, :calm, :friendly, :likes_small_dogs, :likes_big_dogs, :likes_puppies, :likes_older_dogs)
      # params.require(:dog).permit(:name, :age)
    end
 
 
 
 
  
  def update2
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

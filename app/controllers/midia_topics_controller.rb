class MidiaTopicsController < ApplicationController
	def gvgs
    @gvgs = MidiaTopic.where(midia_type: "gvg")
	end

	def new_gvg
		@midia_topic = MidiaTopic.new
		@midia_topic.user_id = current_user.id
		@midia_topic.midia_type = "gvg"
	end

	def create_gvg
		@midia_topic = MidiaTopic.new(midia_topic_params)
    	@midia_topic.user_id = current_user.id
    	@midia_topic.midia_type = "gvg"
    respond_to do |format|
      if @midia_topic.save
        format.html { redirect_to gvgs_path, notice: 'GvG criada com sucesso.' }
        format.json { render :show, status: :created, location: @midia_topic }
      else
        format.html { render :new }
        format.json { render json: @midia_topic.errors, status: :unprocessable_entity }
      end
    end
	end

  def new_comment
    @comment = Comment.new
    @comment.midia_topic_id = params[:midia_topic_id]
    @midia_topic = params[:midia_topic]
  end

  def create_comment
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    midia_topic = MidiaTopic.find(@comment.midia_topic_id)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to show_gvg_path(midia_topic.id), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment}
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit_comment
    @comment = Comment.find(params[:id])
    @project = params[:id_project]
    @midia_topic = params[:gvg_id]
  end

  def update_comment
    @comment = Comment.find(params[:id])
    midia_topic = MidiaTopic.find(@comment.midia_topic_id)
    @comment.update(comment_params)
    redirect_to show_gvg_path(midia_topic.id), notice: 'Comment was successfully updated.'
  end

  def destroy_comment
    @comment = Comment.find(params[:id])
    midia_topic = MidiaTopic.find(@comment.midia_topic_id)
    @comment.destroy
    redirect_to show_gvg_path(midia_topic.id), notice: 'Comment was successfully destroyed.'
  end 

  def destroy_gvg
    @midia = MidiaTopic.find(params[:id])
    @midia.destroy
    redirect_to gvgs_path
  end

  def edit_gvg
    @midia_topic = MidiaTopic.find(params[:gvg_id])
  end

  def update_gvg
    @midia_topic = MidiaTopic.find(params[:id])
    @midia_topic.update(midia_topic_params)
    redirect_to show_gvg_path(@midia_topic.id), notice: 'GvG atualizada com sucesso.'
  end

  def show_gvg
    @gvg = MidiaTopic.find(params[:gvg_id])
    @comment = Comment.new
  end

	def midia_topic_params
      params.require(:midia_topic).permit(:title, :description, :user_id, :result_hng, :result_other, :enemy, :gvg_core_id, :killboard, :video, :midia_type, :players, :enemies, :map, :gvg_type, :event_date, :event_time)
  end
  def comment_params
      params.require(:comment).permit(:description, :user_id, :midia_topic_id)
end
end

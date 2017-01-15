class QuestionsController < ApplicationController
  def create
    @question = Question.create(text: question_params[:text], shop_id: question_params[:shop_id], user_id: current_user.id)
    redirect_to "/shops/#{@question.shop.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def question_params
    params.permit(:text, :shop_id)
  end
end

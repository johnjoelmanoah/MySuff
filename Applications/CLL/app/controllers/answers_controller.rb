class AnswersController < ApplicationController
    def create 
        question = Question.find(params[:answer][:question_id])
        question.answers.create(answer_param)
         session[:current_user_email] = answer_params[:email]
        redirect_to question
            
    end

    private 
    def answer_param
        params.require(:answer).permit( :email, :body)
    end
end 

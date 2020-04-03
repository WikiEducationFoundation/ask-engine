# frozen_string_literal: true

module Ask
  class QuestionsController < ApplicationController
    def index
      @questions = Question.all
    end

    def show
      @question = Question.find(params[:id])
    end

    def create
    end

    def edit
      pp 'EDITEDITEDIT'
      pp params
      @question = Question.find(params[:id])
    end

    def update
      pp 'UPDATEUPDATEUPDATE'
      pp params
      @question = Question.find(params[:id])
      @question.update!(update_params)
      redirect_to question_path(@question)
    end

    def destroy
    end

    private
  
    def update_params
      params.require(:question).permit(:title, :content)
    end
  end
end

class ChangeQuestionIdToAnswerChoiceId < ActiveRecord::Migration[7.0]
  def change 
    rename_column :responses, :question_id, :answer_choice_id
  end
end

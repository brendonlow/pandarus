# This is an autogenerated file. See readme.md.
require 'pandarus/model_base'

module Pandarus
  class QuizGroup < ModelBase
    include Virtus.model(finalize: false)

    attribute :id, resolve_type(nil)
    attribute :quiz_id, resolve_type(nil)
    attribute :name, resolve_type("String")
    attribute :pick_count, resolve_type(nil)
    attribute :question_points, resolve_type(nil)
    attribute :assessment_question_bank_id, resolve_type(nil)
    attribute :position, resolve_type(nil)
    
  end
end


# This is an autogenerated file. See readme.md.
require 'pandarus/model_base'

module Pandarus
  class GradeChangeEvent < ModelBase
    include Virtus.model(finalize: false)

    attribute :id, resolve_type("String")
    attribute :created_at, resolve_type("DateTime")
    attribute :event_type, resolve_type("String")
    attribute :excused_after, resolve_type(nil)
    attribute :excused_before, resolve_type(nil)
    attribute :grade_after, resolve_type("String")
    attribute :grade_before, resolve_type("String")
    attribute :graded_anonymously, resolve_type(nil)
    attribute :version_number, resolve_type("String")
    attribute :request_id, resolve_type("String")
    attribute :links, resolve_type("GradeChangeEventLinks")
    
  end
end


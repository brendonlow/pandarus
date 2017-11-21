# This is an autogenerated file. See readme.md.
require 'pandarus/model_base'

module Pandarus
  class CommMessage < ModelBase
    include Virtus.model(finalize: false)

    attribute :id, resolve_type("Integer")
    attribute :created_at, resolve_type("DateTime")
    attribute :sent_at, resolve_type("DateTime")
    attribute :workflow_state, resolve_type("String")
    attribute :from, resolve_type("String")
    attribute :from_name, resolve_type("String")
    attribute :to, resolve_type("String")
    attribute :reply_to, resolve_type("String")
    attribute :subject, resolve_type("String")
    attribute :body, resolve_type("String")
    attribute :html_body, resolve_type("String")
    
  end
end


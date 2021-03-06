# This is an autogenerated file. See readme.md.
require 'pandarus/model_base'

module Pandarus
  class AccountNotification < ModelBase
    include Virtus.model(finalize: false)

    attribute :subject, resolve_type("String")
    attribute :message, resolve_type("String")
    attribute :start_at, resolve_type("DateTime")
    attribute :end_at, resolve_type("DateTime")
    attribute :icon, resolve_type("String")
    attribute :roles, resolve_type("String", collection: true)
    attribute :role_ids, resolve_type("Integer", collection: true)
    
  end
end


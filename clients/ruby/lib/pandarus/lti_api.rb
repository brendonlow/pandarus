require "pandarus/api_base"
require "pandarus/models"

# This is an autogenerated file. See readme.md
module Pandarus
  class Lti < APIBase

    self.prefix = "https://canvas.instructure.com/api"

    

    # Create an Originality Report
    def create_originality_report(assignment_id,submission_id,originality_report__file_id__,originality_report__originality_score__,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        :originality_report__file_id__,
        :originality_report__originality_score__,
        :originality_report__originality_report_url__,
        :originality_report__originality_report_file_id__,
        :originality_report__tool_setting____resource_type_code__,
        :originality_report__tool_setting____resource_url__,
        :originality_report__workflow_state__,
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      raise "submission_id is required" if submission_id.nil?
      raise "originality_report__file_id__ is required" if originality_report__file_id__.nil?
      raise "originality_report__originality_score__ is required" if originality_report__originality_score__.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id,
        :submission_id => submission_id,
        :originality_report__file_id__ => originality_report__file_id__,
        :originality_report__originality_score__ => originality_report__originality_score__

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}/submissions/{submission_id}/originality_report",
        :assignment_id => assignment_id,
        :submission_id => submission_id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:post, path, query_params, form_params, headers)
      OriginalityReport.new(response)
      

    end
    

    # Edit an Originality Report
    def edit_originality_report_submissions(assignment_id,submission_id,id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        :originality_report__originality_score__,
        :originality_report__originality_report_url__,
        :originality_report__originality_report_file_id__,
        :originality_report__tool_setting____resource_type_code__,
        :originality_report__tool_setting____resource_url__,
        :originality_report__workflow_state__,
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      raise "submission_id is required" if submission_id.nil?
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id,
        :submission_id => submission_id,
        :id => id

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}/submissions/{submission_id}/originality_report/{id}",
        :assignment_id => assignment_id,
        :submission_id => submission_id,
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:put, path, query_params, form_params, headers)
      OriginalityReport.new(response)
      

    end
    

    # Edit an Originality Report
    def edit_originality_report_files(assignment_id,file_id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        :originality_report__originality_score__,
        :originality_report__originality_report_url__,
        :originality_report__originality_report_file_id__,
        :originality_report__tool_setting____resource_type_code__,
        :originality_report__tool_setting____resource_url__,
        :originality_report__workflow_state__,
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      raise "file_id is required" if file_id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id,
        :file_id => file_id

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}/files/{file_id}/originality_report",
        :assignment_id => assignment_id,
        :file_id => file_id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:put, path, query_params, form_params, headers)
      OriginalityReport.new(response)
      

    end
    

    # Show an Originality Report
    def show_originality_report_submissions(assignment_id,submission_id,id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      raise "submission_id is required" if submission_id.nil?
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id,
        :submission_id => submission_id,
        :id => id

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}/submissions/{submission_id}/originality_report/{id}",
        :assignment_id => assignment_id,
        :submission_id => submission_id,
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      OriginalityReport.new(response)
      

    end
    

    # Show an Originality Report
    def show_originality_report_files(assignment_id,file_id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      raise "file_id is required" if file_id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id,
        :file_id => file_id

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}/files/{file_id}/originality_report",
        :assignment_id => assignment_id,
        :file_id => file_id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      OriginalityReport.new(response)
      

    end
    

    # Get a single assignment (lti)
    def get_single_assignment_lti(assignment_id,opts={})
      query_param_keys = [
        :user_id

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "assignment_id is required" if assignment_id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :assignment_id => assignment_id

      )

      # resource path
      path = path_replace("/lti/assignments/{assignment_id}",
        :assignment_id => assignment_id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      LtiAssignment.new(response)
      

    end
    

    # Get a single user (lti)
    def get_single_user_lti(id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :id => id

      )

      # resource path
      path = path_replace("/lti/users/{id}",
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      User.new(response)
      

    end
    

    # Create a Webhook Subscription
    def create_webhook_subscription(submission___context_id__,subscription___context_type__,subscription___event_types__,subscription___format__,subscription___transport_metadata__,subscription___transport_type__,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        :submission___context_id__,
        :subscription___context_type__,
        :subscription___event_types__,
        :subscription___format__,
        :subscription___transport_metadata__,
        :subscription___transport_type__,
        

      ]

      # verify existence of params
      raise "submission___context_id__ is required" if submission___context_id__.nil?
      raise "subscription___context_type__ is required" if subscription___context_type__.nil?
      raise "subscription___event_types__ is required" if subscription___event_types__.nil?
      raise "subscription___format__ is required" if subscription___format__.nil?
      raise "subscription___transport_metadata__ is required" if subscription___transport_metadata__.nil?
      raise "subscription___transport_type__ is required" if subscription___transport_type__.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :submission___context_id__ => submission___context_id__,
        :subscription___context_type__ => subscription___context_type__,
        :subscription___event_types__ => subscription___event_types__,
        :subscription___format__ => subscription___format__,
        :subscription___transport_metadata__ => subscription___transport_metadata__,
        :subscription___transport_type__ => subscription___transport_type__

      )

      # resource path
      path = path_replace("/lti/subscriptions",
        )
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:post, path, query_params, form_params, headers)
      response
      

    end
    

    # Delete a Webhook Subscription
    def delete_webhook_subscription(id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :id => id

      )

      # resource path
      path = path_replace("/lti/subscriptions/{id}",
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:delete, path, query_params, form_params, headers)
      response
      

    end
    

    # Show a single Webhook Subscription
    def show_single_webhook_subscription(id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :id => id

      )

      # resource path
      path = path_replace("/lti/subscriptions/{id}",
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      response
      

    end
    

    # Update a Webhook Subscription
    def update_webhook_subscription(id,opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # verify existence of params
      raise "id is required" if id.nil?
      # set default values and merge with input
      options = underscored_merge_opts(opts,
        :id => id

      )

      # resource path
      path = path_replace("/lti/subscriptions/{id}",
        :id => id)
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:put, path, query_params, form_params, headers)
      response
      

    end
    

    # List all Webhook Subscription for a tool proxy
    def list_all_webhook_subscription_for_tool_proxy(opts={})
      query_param_keys = [
        

      ]

      form_param_keys = [
        

      ]

      # set default values and merge with input
      options = underscored_merge_opts(opts,
        {}
      

      )

      # resource path
      path = path_replace("/lti/subscriptions",
        )
      headers = nil
      form_params = select_params(options, form_param_keys)
      query_params = select_query_params(options, query_param_keys)

      response = mixed_request(:get, path, query_params, form_params, headers)
      response
      

    end
    

  end
end


class Hunter < ApplicationRecord
    has_many :bug_requests, class_name: 'bug_request', foreign_key: 'bug_request_id'
end

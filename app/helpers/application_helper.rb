# frozen_string_literal: true

module ApplicationHelper
  EMAIL_REGEXP = '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$'
  PASSWORD_REGEXP = '^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$'
end

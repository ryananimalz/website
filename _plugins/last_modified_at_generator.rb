# frozen_string_literal: true

require 'fileutils'
require 'pathname'
require 'jekyll-last-modified-at'
require 'time'

module Recents
  # Generate change information for all markdown pages
  class Generator < Jekyll::Generator
    def generate(site)
      items = site.collections['notes'].docs
      items.each do |page|
        override_date = page.data['publish_date']
        if override_date
          parsed_override = if override_date.respond_to?(:to_time)
                              override_date.to_time
                            else
                              Time.parse(override_date.to_s)
                            end
          page.data['last_modified_at_timestamp'] = parsed_override.iso8601
        else
          timestamp = Jekyll::LastModifiedAt::Determinator.new(site.source, page.path, '%FT%T%:z').to_s
          page.data['last_modified_at_timestamp'] = timestamp
        end
      end
    end
  end
end

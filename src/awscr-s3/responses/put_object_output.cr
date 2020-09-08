require "xml"

module Awscr::S3::Response
  class PutObjectOutput
    # Create a `PutObjectOutput` response from an
    # `HTTP::Client::Response` object
    def self.from_response(response)
      new(response.headers["ETag"])
    end

    # The etag of the new object
    getter etag : String

    def initialize(etag : String)
      @etag = etag.strip('"')
    end

    def_equals @etag
  end
end

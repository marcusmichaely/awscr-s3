require "../spec_helper"

module Awscr::S3
  describe Bucket do
    it "is equal to another bucket if name and creation time are equal" do
      time = Time.now
      bucket = Bucket.new("test", time)
      Bucket.new("test", time).should eq(bucket)
    end

    it "not equal to another bucket if name and creation time differ" do
      time = Time.now
      bucket = Bucket.new("test2", time)
      (Bucket.new("test", Time.epoch(Time.now.epoch + 123)) == bucket).should eq(false)
    end

    it "has a name" do
      bucket = Bucket.new("name", Time.now)

      bucket.name.should eq("name")
    end

    it "has a creation_time" do
      time = Time.now
      bucket = Bucket.new("name", time)

      bucket.creation_time.should eq(time)
    end
  end
end

require 'spec_helper'

RSpec.describe CmTimeZone do
  describe ".all" do
    it "should reutrn available time_zone instances" do
      res = CmTimeZone.all

      expect(res.size).to eq(CmTimeZone::MAPPING.keys.size)
      expect(res.first).to eq(ActiveSupport::TimeZone.new('Abu Dhabi'))
    end
  end

  describe ".exists?(time_zone_name)" do
    it "should reutrn true if time_zone_name exists" do
      expect(CmTimeZone.exists?('Taipei')).to eq(true)
    end

    it "should reutrn false if time_zone_name doesn't exist" do
      expect(CmTimeZone.exists?('New York')).to eq(false)
    end
  end
end
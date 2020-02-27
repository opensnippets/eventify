require 'rails_helper'

describe Venue, :type => :model do
  it "is valid with valid attributes"
      it { should validate_presence_of :name }
  #it { is_expected.to validate_presence_of(:name) }
  #it "is not valid without a description"
  #it "is not valid without a start_date"
  #it "is not valid without a end_date"
end

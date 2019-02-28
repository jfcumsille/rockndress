require 'rails_helper'

RSpec.describe Client, type: :model do
  subject { build(:client) }

  describe 'Validations' do
    it { should be_valid }
  end

end

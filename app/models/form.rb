# == Schema Information
#
# Table name: forms
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  email      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Form < ActiveRecord::Base

  belongs_to :user
  before_validation :ensure_code
  before_validation :validate_emails

  validates :name, :code, :email, presence: true
  validates :code, uniqueness: { case_sensitive: false }

  private

    def validate_emails
      return if self.email.blank?
      emails = self.email.split(',').map(&:strip).reject(&:blank?)
      emails.each do |email|
        self.errors.add :email, "#{email} is an invalid email" unless ValidateEmail.valid? email
      end
      self.email = emails.join ','
    end

    def ensure_code
      self.code = generate_code if self.code.blank?
    end

    def generate_code
      loop do
        token = SecureRandom.urlsafe_base64 6
        break token unless Form.where(code: token).first
      end
    end

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email

  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email, :case_sensitive => false
  validates_confirmation_of :password
  
  # Override Devise method
  # No password is required when the account is created
  # Validate password when the user sets one
  def password_required?
    if !persisted?
      !(password != "")
    else
      !password.nil? || !password_confirmation.nil?
    end
  end

  # Override Devise method
  def confirmation_required?
    false
  end

  # Override Devise method
  def active_for_authentication?
    confirmed? || confirmation_period_valid?
  end

  def send_reset_password_instructions
    if self.confirmed?
      super
    else
      errors.add :base, "You must receive an invitation before you set your password."
    end
  end

  def send_welcome_email
    return if email.include?(ENV['ADMIN_EMAIL'])
    UserMailer.welcome_email(self).deliver
  end

end

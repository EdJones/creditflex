class UserMailer < ActionMailer::Base
  default from: "notifier@creditflexibility.org"
  
    def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
  
    def activity_email(user)
    @user = User.where( :unser_name => 'EdJones')
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Creditflex.org: Somebody added something.")
  end
end

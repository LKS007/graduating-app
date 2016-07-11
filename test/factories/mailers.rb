FactoryGirl.define do
   factory :mailer, :class => "UserMailer" do
     email
     from
     to
     subject
   end
 end

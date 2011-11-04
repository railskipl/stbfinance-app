class Emailerskill < ActionMailer::Base
  
  def skill_email(skillemail)
        setup_email(skillemail)
        @subject    += ""

      end

      protected
        def setup_email(skillemail)
          @recipients  = "info@stbgroup.in"
          @from        = "#{skillemail.email}"
          @subject     = "STB Finance - Test your skill: "
          @sent_on     = Time.now
          @content_type = "text/html"
          @body[:skillemail] = skillemail

       end
       
end

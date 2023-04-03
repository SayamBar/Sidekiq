class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    # @user = params[:user]
    @post = params[:post]
    @greeting = "Hi"
    attachments['ror.png'] = File.read('app/assets/images/ror.png')

    mail(
      # fro m: "admin@example.com",
      to: "to@example.org", 
      cc: "barsayam@gmail.com", 
      bcc: "sayam.bar@bitcanny.com",
      subject: "New Post Created"
    )
  end
end

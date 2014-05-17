class EntretainMail < ActionMailer::Base
  default from: "oreatial@gmail.com"

  def send_apply_mail(entretain)
  	  @entretain = entretain
      @url = "http://localhost:3000"
      mail to: entretain.report_user.try(:email), subject: entretain.user.try(:name)+"用餐申请单,请您审阅"
  end

  def send_finished_mail(entretain)
  	@entretain = entretain
    @url = "http://localhost:3000"
    mail to: entretain.user.try(:email), subject: entretain.user.try(:name)+"宴请单已被审阅"
  end


end

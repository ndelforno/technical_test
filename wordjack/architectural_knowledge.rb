#Architectural Knowledge

customer = {:id => 1,
  :name => "john",
  :last_name => "smith",
  :email => "john@gmail.com",
  :facebook_logged => false,
  :google_logged => false,
 }

survey = {:question => "would your recommend us to a friend",
  :customer_id => "",
  :email_answer => "",
  :survey_answer => ""
}

def buy(customer, survey)
  mail (:to => customer.email,
    :subject => survey.question,
    :link => "https//my_site/survey"
    :choices => ["yes", "no"]
  )
end

#when answer received
def received_answer(email_answer, customer, survey) #email_answer will be something like params[:customer_choice]
  survey.email_answer = email_answer #save customer's answer
  survey.customer_id = customer.id #save customer's id in survey's table
  if survey.email_answer === "Yes"
    if customer.google_logged === true
      redirect_to "https://www.google.com"
    elsif customer.facebook_logged === true
      redirect_to "https://www.facebook.com"
    else
      render thank_you_page
    end
  else
    redirect_to "https//my_site/survey"
    survey.question = "How could we have improved? Would you like to be contacted to settle any outstanding issues?"
    print survey.question
    survey.survey_answer = params[:survey_answer] #save customer's survey answer by using params
  end
end


# #pseudo code
#
# if customer has bought something
#   send email to customer, ask "if he would recommend us to friend"
# end
#
# if customer has answered do
#   save answer
#   if answer = yes && customer is logged into google
#     redirect to google
#   elsif answer = yes && customer is logged into facebook
#     redirect to facebook
#   else
#     render thank_you_page
#   end
# else do
#   redirect to survey and ask "How could we have improved? Would you like to be contacted to settle any outstanding issues?"
#   save survey_answer
# end

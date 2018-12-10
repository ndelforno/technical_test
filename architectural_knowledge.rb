#Architectural Knowledge
@customer = {:name => "john", :last_name => "smith", :email => "john@gmail.com", :facebook_logged => false, :google_logged => false, :email_answer => "" }

def buy
  mail (:to => @customer.email,
    :subject => "would your recommend us to a friend",
    :link => "https//my_site/survey"
    :choices => ["yes", "no"])
end

def received_answer(answer)
  @customer.email_answer = answer #save customer answer
end

if @customer.email_answer != "" #check if there is an answer
  if @customer.email_answer == "yes" && @customer.google_logged == true
    redirect_to "https://www.google.com"
  elsif @customer.email_answer == "yes" && @customer.facebook_logged == true
    redirect_to "https://www.facebook.com"
  else
    render thank_you_page
  end
else # no answer from customer
  redirect_to "https//my_site/survey"
  survey[:subject] => "How could we have improved? Would you like to be contacted to settle any outstanding issues?"
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
# end

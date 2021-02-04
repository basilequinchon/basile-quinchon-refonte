# Preview all emails at http://localhost:3000/rails/mailers/message
class MessagePreview < ActionMailer::Preview
  @message = Message.find_or_create_by!(
    name: "Basile Quinchon",
    from: "basilequinchon@gmail.com",
    subject: "You're awesome!",
    content: "Lorem Ipsum blabla"
  )
  puts @message.subject
  MessageMailer.contact(@message)
end

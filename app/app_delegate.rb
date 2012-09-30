class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # The following should be defined!
    puts "::CTConnectionTypeTLS #{::CTConnectionTypeTLS}"
    puts "::CONNECTION_TYPE_TLS #{::CONNECTION_TYPE_TLS}"

    msg = CTCoreMessage.alloc.init
    msg.setTo(NSSet.setWithObject(CTCoreAddress.addressWithName("Someone", email:"someone@example.com")))
    msg.setFrom(NSSet.setWithObject(CTCoreAddress.addressWithName("Watson", email:"watson1978@gmail.com")))
    msg.setBody("This is a test message!")
    msg.setSubject("This is a subject")

    error = Pointer.new(:id)
    ret = CTSMTPConnection.sendMessage(msg,
                                       server:"smtp.gmail.com",
                                       username:"xxxxxxxx@gmail.com",
                                       password:"xxxxxxxx",
                                       port:587,
                                       useTLS:true,
                                       useAuth:true,
                                       error:error)
    true

  end
end

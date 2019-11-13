this is my schema of database

class Fake
  BASE_HOOK= 
  def my_slack_method(hook=BASE_HOOK)
    message="hello world"
    ping(hook, message)
  end
end

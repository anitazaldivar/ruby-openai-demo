pp "howdy"

require "openai"

key = ENV.fetch("OPENAI_API_KEY")

client = OpenAI::Client.new(access_token: key)

list_of_messages = [
  {
    "role" => "system",
    "content" => "You are a helpful assistant"
  },
  {
    "role" => "user",
    "content" => "Hello! What are the best spots for pizza in Chicago?"
  }
]
raw_response = client.chat(
  parameters: {
    :model => "gpt-3.5-turbo",
    :messages => list_of_messages
  }
)
pp raw_response

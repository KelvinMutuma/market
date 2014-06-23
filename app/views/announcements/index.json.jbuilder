json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :MSG_NAME, :MESSAGE, :SUBJECT, :SendingTime
  json.url announcement_url(announcement, format: :json)
end

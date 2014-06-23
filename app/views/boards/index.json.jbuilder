json.array!(@boards) do |board|
  json.extract! board, :id, :BOARD_ID, :CURRENT_SESSION_ID, :SendingTime
  json.url board_url(board, format: :json)
end

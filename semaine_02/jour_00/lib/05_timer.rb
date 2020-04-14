def time_string(nb)
  time = Time.at(nb - 3600)

  time.strftime("%02k:%02M:%02S")
end

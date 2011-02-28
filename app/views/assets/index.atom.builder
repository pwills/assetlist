atom_feed do |feed|
  feed.title("LJMU ICT Assets List Feed")
  feed.updated(@assets.first.created_at)
  @assets.each do |asset|
    feed.entry(asset) do |entry|
    entry.title(asset.name)
    entry.content(asset.description, :type => 'html')
    entry.content(asset.serial, :type => 'html')
    entry.content(asset.location, :type => 'html')
    end
  end
end


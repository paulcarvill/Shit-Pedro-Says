xml.instruct!
xml.shits do
  @shits.each do |shit|
    xml.shit do
      xml.id shit.id
      xml.shit shit.content
    end
  end
end
xml.instruct!
xml.shits do
  @shits.each do |shit|
    xml.shit do
      xml.shit shit.content
    end
  end
end
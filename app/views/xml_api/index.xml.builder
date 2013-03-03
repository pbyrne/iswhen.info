xml.root do
  xml.holidays(type: "complete") do
    @collection.each do |event|
      xml.holiday do
        xml.shortname(event.shortname)
        xml.name(event.name)
        xml.longname(event.longname)
        xml.startssundown(event.starts_sundown)
      end
    end
  end
end

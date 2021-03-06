class PfrpgUtility::Prerequisite::AttributePrereq < PfrpgUtility::Prerequisite
  def match(character)
    atr = @attribute.downcase
    str = "modified_#{atr[0..2]}"
    character.attributes.send(str) >= (@value.to_i)
  end
end


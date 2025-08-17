module BibTeX
  def self.transliterate(str)
    str
      .unicode_normalize(:nfkd)
      .encode(Encoding::ASCII, invalid: :replace, undef: :replace, replace: '')
  rescue
    str.gsub(/[^\x20-\x7E]/, '')
  end
end

require "sanitize_with_deprecated"

describe Sanitize::Config::RELAXED_WITH_DEPRECATED do

  it "includes commonly-used yet deprecated tags" do
    commonly_used = %w[
      acronym basefont big blink center command dir font marquee strike tt
    ]

    commonly_used.each do |element|
      expect(subject[:elements]).to include(element)
    end
  end

  it "does not include very rarely used deprecated tags" do
    rarely_used = %w[
      content image isindex keygen listing multicol nextid noembed plaintext
      shadow spacer xmp
    ]

    rarely_used.each do |element|
      expect(subject[:elements]).not_to include(element)
    end
  end

  it "does not include potentially dangerous deprecated tags" do
    potentially_dangerous = %w[applet frame frameset]

    potentially_dangerous.each do |element|
      expect(subject[:elements]).not_to include(element)
    end
  end

  it "is a fully fledged Sanitize config object" do
    expect(subject.keys).to eq([
      :elements, :allow_doctype, :attributes, :protocols, :css
    ])
  end
end

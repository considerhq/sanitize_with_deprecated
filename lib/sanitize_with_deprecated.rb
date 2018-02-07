require "sanitize"

Sanitize::Config::RELAXED_WITH_DEPRECATED = Sanitize::Config.merge(
  Sanitize::Config::RELAXED,
  elements: Sanitize::Config::RELAXED[:elements] + %w[
    acronym basefont big blink center command dir font marquee strike tt
  ],
  attributes: Sanitize::Config::RELAXED[:attributes].merge(
    all: %w[bgcolor width height border color]
  )
)

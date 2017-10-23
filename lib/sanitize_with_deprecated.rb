require "sanitize"

Sanitize::Config::RELAXED_WITH_DEPRECATED = Sanitize::Config.merge(
  Sanitize::Config::RELAXED,
  elements: Sanitize::Config::RELAXED[:elements] + %w[
    acronym basefont big blink center command dir font marquee strike tt
  ]
)

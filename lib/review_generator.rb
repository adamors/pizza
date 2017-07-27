class ReviewGenerator
  def generate(pizza_id:)
    { title: title.titlecase, body: body, score: rand(2..10), pizza_id: pizza_id }
  end

  private

  ADJECTIVES = %w(good bad horrible amazing fantastic awful).freeze
  MOODS = %w(happy delighted angry mad).freeze

  def title
    "#{ADJECTIVES.sample} pizza"
  end

  def really
    rand(0..1) == 1 ? 'really ' : ''
  end

  def body
    "This was a #{really}#{title}. I am so #{MOODS.sample} that I ate at Adam's Pizza."
  end
end

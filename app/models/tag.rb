class Tag < ActiveRecord::Base
  
  extend FriendlyId
  belongs_to :tweet
  friendly_id :name, :use => :scoped, :scope => :tweet
  
  validates :name, presence: true
  validates :name, uniqueness: { scope: :tweet,
    message: "should occur once per tweet" }
  validates_inclusion_of :common_word, in: [true, false]
  
  before_create do
    self.common_word = common_words_list.include?(self.slug)
    true
  end
  
  scope :common_words, -> { where(common_word: true) }
  scope :uncommon_words, -> { where(common_word: false)}
  scope :exclude_short_words, -> {where("length(name) > 3")}
  private 
  
  def common_words_list
    # list if from
    # http://www.englishclub.com/vocabulary/common-words-100.htm
    ["is",
     "was",
     "rt",
     "today",
     "between",
     "game"]+
    ["the",
    "be",
    "to",
    "of",
    "and",
    "a",
    "in",
    "that",
    "have",
    "i",
    "it",
    "for",
    "not",
    "on",
    "with",
    "he",
    "as",
    "you",
    "do",
    "at",
    "this",
    "but",
    "his",
    "by",
    "from",
    "they",
    "we",
    "say",
    "her",
    "she",
    "or",
    "an",
    "will",
    "my",
    "one",
    "all",
    "would",
    "there",
    "their",
    "what",
    "so",
    "up",
    "out",
    "if",
    "about",
    "who",
    "get",
    "which",
    "go",
    "me",
    "when",
    "make",
    "can",
    "like",
    "time",
    "no",
    "just",
    "him",
    "know",
    "take",
    "person",
    "into",
    "year",
    "your",
    "good",
    "some",
    "could",
    "them",
    "see",
    "other",
    "than",
    "then",
    "now",
    "look",
    "only",
    "come",
    "its",
    "over",
    "think",
    "also",
    "back",
    "after",
    "use",
    "two",
    "how",
    "our",
    "work",
    "first",
    "well",
    "way",
    "even",
    "new",
    "want",
    "because",
    "any",
    "these",
    "give",
    "day",
    "most",
    "us"]   
  end
end

class ClickbaitValidator < ActiveModel::Validator
    def validate(post)
        click=["Won't Believe", "Secret", "Top ","Guess"]
        title=post.title
        if click.none?{|word|word.match title}
        errors.add(:title, "must be clickbait")
        end
    end
  end
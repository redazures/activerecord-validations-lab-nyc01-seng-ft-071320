class ClickbaitValidator < ActiveModel::Validator
    def validate(post)
        click=["Won't Believe", "Secret", "Top ","Guess"]
        title=post.title
        if click.none?{|word|word.match title}
        return true
        else false
        end
    end
  end
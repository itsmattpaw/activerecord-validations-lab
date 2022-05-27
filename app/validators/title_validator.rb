class TitleValidator < ActiveModel::Validator
    def validate(record)
        a = ["Won't Believe", "Secret", "Top", "Guess"]
        if record.title != nil
            unless a.any? { |word| record.title.include?(word) }
                record.errors[:title]<< "Not click-baity enough!"
            end
        end 
    end 
end
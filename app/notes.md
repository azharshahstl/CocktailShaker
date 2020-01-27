CocktailShaker 

models:
    Mixologist
    has_many :cocktails
    has_many :alcohols, through: :cocktails
    has_many :cocktails, through: :comments


    Cocktail
    belongs_to :mixologist
    has_many :alcohols
    has_many :mixologists, through: comments

    

    Alcohol
    belongs_to :cocktail
    has_many mixologists: through, :cocktails


    GlassWare
    belongs_to :cocktail


    Garnish
    belongs_to :cocktail


    Direction
    belongs_to :cocktail


    Comment
    belongs_to :mixologist 
    belongs_to :cocktail
    content
CocktailShaker 

models:
    Mixologist
    has_many :cocktails
    has_many :alcohols, though: :cocktails


    Cocktail
    belongs_to :mixologist
    has_many :alcohols
    

    Alcohol
    belongs_to :cocktail
    has_many users: through, :cocktails


    GlassWare
    belongs_to :cocktail


    Garnish
    belongs_to :cocktail


    Direction
    belongs_to :cocktail


    Comment
    belongs_to :user 
    belongs_to :cocktail
    content
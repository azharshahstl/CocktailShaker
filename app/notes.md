CocktailShaker 

models:
    Mixologist
    has_many :cocktails
    has_many :alcohols, through: :cocktails
    has_many :cocktails, through: :comments

        attributes: 
        :email
        :password_digest
        :professional_bartender? (boolean)


    Cocktail
    belongs_to :mixologist
    has_many :alcohols
    has_many :mixologists, through: comments

        attributes: 
        :name
        :alcohol (checkbox)
        :glassware(checkbox)
        :garnish(checkbox)
        :direction
        :mixologist_id

    

    Alcohol
    has_many mixologists: through, :cocktails

        attributes:
        :name 
        :cocktail_id



    GlassWare
    belongs_to :cocktail

        attributes:
        :type
        :cocktail_id


    Garnish
    belongs_to :cocktail

        attributes:
        :type
        :cocktail_id


    Direction
    belongs_to :cocktail

        attributes: 
        :instructions
        :cocktail_id



    Comment(join table)
    belongs_to :mixologist 
    belongs_to :cocktail

        attributes:
        :content
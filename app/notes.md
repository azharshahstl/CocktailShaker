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
    belongs_to :style
    has_many :alcohols
    has_many :mixologists, through: comments

        attributes: 
        :name
        :alcohol (checkbox)
        :glassware(checkbox)
        :garnish(checkbox)
        :direction
        :mixologist_id
        :style_id

    
    Alcohol
    has_many mixologists: through, :cocktails

        attributes:
        :name 
        :favorite_liquors
        :reason_to_shake
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

    Style
    has_many :cocktails

        attributes: 
        :pallette

Nested routes:  Nest cocktails inside of mixologists.  This allows users to see
all cocktails or all cocktails by a particular mixologist. 

I want to allow users to see all cocktails that are of a particular style, all cocktails (which will contain links to individual cocktail show pages) and individual cocktails.  Mixologists can logout from any page, maybe use a 'back' button. Users will also have the option to have the App pick a cocktail for them to make at random.  

Admins will be namespaced with users and will have access to stats such as number of users and total cocktails in the DB.  
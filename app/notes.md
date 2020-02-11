CocktailShaker 

models:

    Mixologist
    has_many :cocktails
    has_many :alcohols, through: :cocktails
    has_many :cocktails, through: :comments

        attributes: 
        :email
        :password
        :prof_bartender (boolean)
        :admin (boolean)
        :fav_liquors
        :reason_to_shake

    Cocktail
    belongs_to :mixologist
    belongs_to :style
    belongs_to :glassware
    belongs_to :garnish
    has_many :measurements
    has_many :alcohols
    has_many :mixologists, through: :comments

        attributes: 
        :name
        :alcohol - (checkbox)
        :direction
        :mixologist_id
        :style_id - (Drop Dopwn, Not nested)
        :glassware_id - (Drop Down, Not nested)
        :garnish_id - (Drop Down, Nested)

    
    Alcohol
    has_many mixologists: through, :cocktails

        attributes:
        :etoh_name 
        

    GlassWare
    has_many :cocktails

        attributes:
        :style

    Measurement
    belongs_to :cocktail

        attributes:
        :size (checkbox)

    Garnish
    has_many :cocktails

        attributes:
        :kind

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
        :cocktail_id
        :mixologist_id


    Style
    has_many :cocktails

        attributes: 
        :pallette

Nested routes:  Nest cocktails inside of mixologists.  This allows users to see
all cocktails or all cocktails by a particular mixologist. 

I want to allow users to see all cocktails that are of a particular style, all cocktails (which will contain links to individual cocktail show pages) and individual cocktails.  Mixologists can logout from any page, maybe use a 'back' button. Users will also have the option to have the App pick a cocktail for them to make at random.  

Admins will be namespaced with users and will have access to stats such as number of users and total cocktails in the DB as well as all user's fav_alcohols and reason_to_shake.  
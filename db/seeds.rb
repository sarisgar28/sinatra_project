u = User.create(username: "name",password: "abc123")

c = Cocktail.create(user: u, ingredients: "gin, vermouth, olive brine",name: "gin martini",private_note: "good")

u = User.create(username:"Max",password:"lester123")

c = Cocktail.create(user: u, ingredients: "tequila, lemon, jalapeno", name: "margarita", private_note: "great")

u = User.create(username: "Sara", password: "123")

c = Cocktail.create(user: u, ingredients: "whiskey, 2 dashes Angostura bitters, one sugarcube, few dashes plain water", name: "old fashioned", private_note: "magnificent")

u = User.create(username: "vera", password: "abcde")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


book1 = Book.create(title: "The Hobbit", author: "J.R.R. Tolkien", year: 1937, category: "Fantasy", description: "The Hobbit is a children's fantasy novel by English author J. R. R. Tolkien. It was published on 21 September 1937 to wide critical acclaim, being nominated for the Carnegie Medal and awarded a prize from the New York Herald Tribune for best juvenile fiction. The book remains popular and is recognized as a classic in children's literature.")

book2 = Book.create(title: "The Lord of the Rings", author: "J.R.R. Tolkien", year: 1954, category: "Fantasy", description: "The Lord of the Rings is an epic high fantasy novel written by English author and scholar J. R. R. Tolkien. The story began as a sequel to Tolkien's 1937 fantasy novel The Hobbit, but eventually developed into a much larger work. Written in stages between 1937 and 1949, The Lord of the Rings is one of the best-selling novels ever written, with over 150 million copies sold.")

book3 = Book.create(title: "The Chronicles of Narnia", author: "C.S. Lewis", year: 1950, category: "Fantasy", description: "The Chronicles of Narnia is a series of seven fantasy novels by C. S. Lewis. It is considered a classic of children's literature and is the author's best-known work, having sold over 100 million copies in 47 languages. The books have been adapted for radio, television, the stage, and film, with the first series of films released between 2005 and 2010.")

book4 = Book.create(title: "The Hitchhiker's Guide to the Galaxy", author: "Douglas Adams", year: 1979, category: "Science Fiction", description: "The Hitchhiker's Guide to the Galaxy is a comedy science fiction series created by Douglas Adams. Originally a radio comedy broadcast on BBC Radio 4 in 1978, it was later adapted to other formats, including stage shows, novels, comic books, a 1981 TV series, a 1984 video game, and 2005 feature film. The series follows the travails of Arthur Dent and his friend Ford Prefect after the Earth is demolished to make way for a galactic freeway.")

book5 = Book.create(title: "The Martian", author: "Andy Weir", year: 2011, category: "Science Fiction", description: "The Martian is a science fiction novel written by Andy Weir and published in 2011. The story follows an American astronaut, Mark Watney, as he becomes stranded alone on Mars in the year 2035 and must improvise in order to survive. The novel was inspired by the 2004 documentary The Mars Underground, which Weir watched while working as a software engineer at NASA.")
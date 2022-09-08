Actor.destroy_all
Character.destroy_all
Show.destroy_all
Network.destroy_all

 Network.create(
        call_letters: 'NBC',
        channel: 4
    )
    Network.create(
        call_letters: 'ABC' ,
        channel: 2
    )

6.times do 
    Show.create(
        name: Faker::Movie.title ,
        day: 'monday',
        season: 'fall',
        genre: Faker::Music.genre,
        network_id: Network.all.sample.id
    )
end

9.times do 
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end


15.times do 
    Character.create(
        name: Faker::TvShows::FamilyGuy.character,
        actor_id: Actor.all.sample.id,
        show_id: Show.all.sample.id,
        catchphrase: Faker::TvShows::FamilyGuy.quote
    )
end
 
    

# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

'''ruby

class Music

def initialize()
#...Returns an empty array to store tracks in
end

def add(track name, artist)
#...Adds the track name and artist to the track list - "Your track has been successfully added"
#...Fail message if a track name or artist is not given - "The track could not be added as no trackname/artist has been mentioned"
#...Track name and artist should both be strings
end

def view_tracks()
#...Doesn't need input
#...Returns the tracks as a string if there are tracks - "Your track list includes:... "
#...Returns a message saying that the track list is empty if there are no tracks inside - "Your track list is empty. Kanye maybe?"
end



## 3. Create Examples as Tests

'''ruby

    before (:each) do
        @tracks = Music.new
    end

#1 'No track name is mentioned'
@tracks.add( ,"Celine Dion") => "The track could not be added as no trackname has been mentioned"

#2 'No artist name is mentioned"
@tracks.add("My heart will go on") => "The track could not be added as no artist has been mentioned"

#3 'Track is successfully added to the list'
@tracks.add("My heart will go on", "Celine Dion")

#4 'Returns a message if the track list is empty'
@tracks.view_tracks() => "Your track list is empty. Kanye maybe?"

#5 'Returns the track list if there are tracks inside'
@tracks.add("My heart will go on", "Celine Dion")
@tracks.view_tracks() => "Your track list includes:My heart will go on, Celine Dion "




```ruby
# EXAMPLE

# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
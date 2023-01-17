def make_snippet(string)
    words = string.split(' ')
    words[0..4].join(' ')
end

def count_words(string)
    string.split(' ').length()
end
# require_relative 'models/get_results.rb'


# def book_genre(genre)
    
#     # books4u = {
#     # :science_fiction => [
#     #     ["title1","url1","description1"],
#     #     ["title2","url2","description2"],
#     #     ["title3","url3","description3"]
#     #     ],
#     # :fantasy => [
#     #     ["title1","url1","description1"],
#     #     ["title2","url2","description2"],
#     #     ["title3","url3","description3"]
#     #     ],
#     # :romance => [
#     #     ["title1","url1","description1"],
#     #     ["title2","url2","description2"],
#     #     ["title3","url3","description3"]
#     #     ],
#     # :mystery => [
#     #     ["title1","url1","description1"],
#     #     ["title2","url2","description2"],
#     #     ["title3","url3","description3"]
#     #     ],
#     # :young_fiction => [
#     #     ["title1","url1","description1"],
#     #     ["title2","url2","description2"],
#     #     ["title3","url3","description3"]
#     #     ]
#     # }
    
    
#     if genre == "science fiction"
#         return get_results("science fiction")
#     elsif genre == "action and adventure"
#         return get_results("adventure")
#     elsif genre == "romance"
#         return get_results("romance")
#     elsif genre == "mystery"
#         return get_results("mystery")
#     elsif genre == "horror"
#         return get_results("horror")
#     elsif genre == "self help"
#         return get_results("self help")
#     elsif genre == "health"
#         return get_results("health")
#     elsif genre == "travel"
#         return get_results("travel")
#     elsif genre == "children's"
#         return get_results("children's")
#     elsif genre == "religion"
#         return get_results("religion")
#     elsif genre == "science"
#         return get_results("science")
#     elsif genre == "history"
#         return get_results("history")
#     elsif genre == "math"
#         return get_results("math")
#     elsif genre == "poetry"
#         return get_results("poetry")
#     elsif genre == "culinary"
#         return get_results("culinary")
#     elsif genre == "biographies"
#         return get_results("biography")
#     elsif genre == "auto-biographies"
#         return get_results("autobiography")
#     elsif genre == "fantasy"
#         return get_results("fantasy")
#     elsif genre == "fiction"
#         return get_results("fiction")
#     end
# end

# # puts book_genre("children's")


# # books4u = {
# #     :science_fiction => [
# #         ["title1","url1","description1"],
# #         ["title2","url2","description2"],
# #         ["title3","url3","description3"]
# #         ],
# #     :fantasy => [
# #         ["title1","url1","description1"],
# #         ["title2","url2","description2"],
# #         ["title3","url3","description3"]
# #         ],
# #     :romance => [
# #         ["title1","url1","description1"],
# #         ["title2","url2","description2"],
# #         ["title3","url3","description3"]
# #         ],
# #     :mystery => [
# #         ["title1","url1","description1"],
# #         ["title2","url2","description2"],
# #         ["title3","url3","description3"]
# #         ],
# #     :young_fiction => [
# #         ["title1","url1","description1"],
# #         ["title2","url2","description2"],
# #         ["title3","url3","description3"]
# #         ]
# # }
        
# # books4u[:science_fiction][1][0]

require 'google_books'

def get_results(subject)
    books = GoogleBooks::API.search("subject:#{subject}")
    return first_ten_books = books.first(10)
    
    # first_ten_books.each do |book|
    #     return "Title: #{book.title} Author: #{book.authors} Description: #{book.description}"
    # end
    
end

puts get_results("fiction")


get '/' do
  erb :index
end

get '/:word' do
  p params
  @user_word = params[:word]
  @anagrams = Word.anagrams(@user_word)
  erb :index
end

post '/' do
  redirect("/#{params[:word]}")
end

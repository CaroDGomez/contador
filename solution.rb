require 'sinatra'

$contador = 0

get '/' do
  erb :view, locals: {contar: $contador}
end

post '/' do
  $contador = $contador + 1
  redirect "/"
end

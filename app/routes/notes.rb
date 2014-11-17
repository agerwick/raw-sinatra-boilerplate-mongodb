class App
  get '/notes' do
    @firstname=nil
    haml :notes
  end
  post '/notes' do
    @note = Note.create(content: params[:content], datetime: Time.now())
    redirect '/notes', 303
  end
  delete '/note/:id' do |id|
    @note = Note.where(:_id => params[:note_id])
    if @note.any?
      @note.delete
      redirect '/notes', 303, "Deleted successfully"
    else
      404
    end
  end
  get 'note/:id' do |id|
    haml :note_edit
  end
end

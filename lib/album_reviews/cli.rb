class AlbumReviews::CLI
    def call
        puts '___________________________________'
        puts "\nWelcome to Pitchfork Album Reviews!\n"
        puts '___________________________________'
        puts ''
        puts ''
        get_albums
        list_albums
        get_user_selection      
    end

    def get_albums
        @albums = ['A', 'B', 'C', 'D']
    end

    def list_albums
        puts 'Please select the album you would like to learn more about:'
        @albums.each.with_index(1) do |album, index|
            puts "#{index}. #{album}"
        end
    end

    def get_user_selection
        selected_album = gets.strip
        if valid_input(selected_album.to_i, @albums)
            show_album_info_for(selected_album)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input > 0
    end

    def show_album_info_for(selected_album)

    end
end
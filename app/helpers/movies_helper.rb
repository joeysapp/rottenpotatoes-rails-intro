module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def hiliter(t_field)
  	if (params[:sort].to_s == t_field)
  		return 'hilite'
  	else
  		return nil
  	end
  end

  def sorter(t_movie)
  	if (params[:sort].to_s == 'release')
  		return t_movie.release_date.to_s
  	elsif (params[:sort].to_s == 'title')
  		return t_movie.title.to_s
  	end
  end

  def rating_picker(t_movie)
  	if (params[:ratings] != nil)
  		return params[:ratings].has_key?(t_movie.rating)
  	else
  		return true
  	end
  end

  def rating_check(t_rating)
  	if (params[:ratings] != nil)
  		return params[:ratings].has_key?(t_rating)
  	else
  		return true
  	end
  end

end

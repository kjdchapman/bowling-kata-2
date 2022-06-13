def score(bowling_score)
  frames = bowling_score.split
  total_score = 0
  strike_factor = 0 #number of frames to double points
  frames.each do |frame|
    if frame[0] == "X"
      first_ball = 10

    else
      first_ball = frame[0].to_i
    end

    second_ball = frame[1].to_i
    if(strike_factor>0)
        total_score += 2*first_ball
        strike_factor -=1
    else
        total_score += first_ball
    end
    if(strike_factor>0)
        total_score += 2*second_ball
        strike_factor -= 1
    else
        total_score += second_ball
    end
    if frame[0] == 'X'
        strike_factor = 2
    end
  end

  total_score
end
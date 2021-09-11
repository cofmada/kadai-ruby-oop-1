class Team
    
    attr_accessor :name,:win,:lose,:draw,:num
    
  def initialize(num)
    self.name = ['Giants','Tigers','Dragons','BayStars','Carp','Swallows']
    self.win = [67,60,60,56,52,41]
    self.lose = [45,53,55,58,56,69]
    self.draw = [8,7,5,6,12,10]
    self.num = num
  end
  
  def calc_win_rate
    return "#{self.win[self.num].to_f/(120-self.draw[self.num])}"
  end
  
  def show_team_result
    puts "#{self.name[self.num]}の2020年の成績は#{self.win[self.num]}勝#{self.lose[self.num]}敗#{self.draw[self.num]}分、勝率は#{calc_win_rate}です。"
  end
end

team0 = Team.new(0)
team1 = Team.new(1)
team2 = Team.new(2)
team3 = Team.new(3)
team4 = Team.new(4)
team5 = Team.new(5)

team0.show_team_result
team1.show_team_result
team2.show_team_result
team3.show_team_result
team4.show_team_result
team5.show_team_result

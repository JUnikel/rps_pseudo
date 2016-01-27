wincounter = 0
losecounter = 0

3.times do
	puts "Choose Rock, Paper, or Scissors"
	userinput = gets.chomp
	userinput = userinput.downcase
	
	computerinput = ["rock", "paper", "scissors"].sample
	
	if userinput == computerinput
		puts "It's a draw"
	elsif userinput == "rock" and computerinput == "scissors"
		puts "You win"
		wincounter = wincounter + 1
	elsif userinput == "paper" and computerinput == "rock"
		puts "You win"
		wincounter = wincounter + 1
	elsif userinput == "scissors" and computerinput == "paper"
		puts "You win"
		wincounter = wincounter + 1
	elsif userinput == "rock" and computerinput == "paper"
		puts "You lose"
		losecounter = losecounter + 1
	elsif userinput == "paper" and computerinput == "scissors"
		puts "You lose"
		losecounter = losecounter + 1
	elsif userinput == "scissors" and computerinput == "rock"
		puts "You lose"
		losecounter = losecounter + 1
	end
end

if wincounter > losecounter
	puts "You win the game!"
elsif wincounter < losecounter
	puts "You lose the game!"
elsif wincounter == losecounter
	puts "It's a draw!"
end
GameType.delete_all
GameType.create!(
	title: 'Computer Forensics & Security',
	max_score: '100')

#-------------------------------------------------------------------------------------------------------------
GameMove.delete_all
GameMove.create!(
	description: 'Slow Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

GameMove.create!(
	description: 'Medium Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

GameMove.create!(
	description: 'Fast Forwards',
	code: 'Insert appropriate code here',
	game_type_id: 1)

#-------------------------------------------------------------------------------------------------------------
Level.delete_all
Level.create!(
	level: 'Easy',
	game_type_id: 1)

Level.create!(
	level: 'Medium',
	game_type_id: 1)

Level.create!(
	level: 'Hard',
	game_type_id: 1)

#-------------------------------------------------------------------------------------------------------------
Question.delete_all
Question.create!(
	title: 'Question 1 - Easy',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 1,
	game_type_id: 1,
	game_move_id: 1)

Question.create!(
	title: 'Question 2 - Easy',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 1,
	game_type_id: 1,
	game_move_id: 1)

Question.create!(
	title: 'Question 3 - Easy',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 1,
	game_type_id: 1,
	game_move_id: 1)

Question.create!(
	title: 'Question 1 - Medium',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 2,
	game_type_id: 1,
	game_move_id: 2)

Question.create!(
	title: 'Question 2 - Medium',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 2,
	game_type_id: 1,
	game_move_id: 2)

Question.create!(
	title: 'Question 3 - Medium',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 2,
	game_type_id: 1,
	game_move_id: 2)

Question.create!(
	title: 'Question 1 - Hard',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 3,
	game_type_id: 1,
	game_move_id: 3)

Question.create!(
	title: 'Question 2 - Hard',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 3,
	game_type_id: 1,
	game_move_id: 3)

Question.create!(
	title: 'Question 3 - Hard',
	scenario: 'Add question scenario text here',
	answer: 'password',
	level_id: 3,
	game_type_id: 1,
	game_move_id: 3)

#-------------------------------------------------------------------------------------------------------------
Status.delete_all
Status.create!(
	status: 'Completed')

Status.create!(
	status: 'Skipped')

Status.create!(
	status: 'Incomplete')

#-------------------------------------------------------------------------------------------------------------
User.delete_all
User.create!(
	email: 'r.vickery1@unimail.derby.ac.uk',
	password:'jaberwocke',
	password_confirmation: 'jaberwocke',
	admin: true )

#-------------------------------------------------------------------------------------------------------------
Game.delete_all

#-------------------------------------------------------------------------------------------------------------
GameDetail.delete_all

#-------------------------------------------------------------------------------------------------------------

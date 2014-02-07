require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
	test "question attributes must not be empty" do 
		question = Question.new
		assert question.invalid?
		assert question.errors[:title].any?
		assert question.errors[:scenario].any?
		assert question.errors[:answer].any?
		assert question.errors[:level].any?
	end

	test "question level must be between 1 and 3" do
		question = Question.new(
			title: "Test Question",
			scenario: "Test Scenario",
			answer: "password")
		question.level = 0
		assert question.invalid?
		assert_equal ["must be greater than or equal to 1"],
			question.errors[:level]

		question.level = 5
		assert question.invalid?
		assert_equal ["must be less than or equal to 3"],
			question.errors[:level]

		question.level = 1
		assert question.valid?
	end

	test "question is not valid without a unique title" do
		question = Question.new(title: questions(:xss).title,
			scenario: "xss",
			answer: "password",
			level: 2)

		assert question.invalid?
		assert_equal ["has already been taken"], question.errors[:title]
	end

	test "question is not valid without a unique title - i18n" do
    question = Question.new(title:       questions(:xss).title,
                          scenario: "xss", 
                          answer: "password", 
                          level: 2)

    assert question.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 question.errors[:title]
  end

end

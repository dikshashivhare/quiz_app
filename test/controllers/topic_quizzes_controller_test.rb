require 'test_helper'

class TopicQuizzesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic_quiz = topic_quizzes(:one)
  end

  test "should get index" do
    get topic_quizzes_url
    assert_response :success
  end

  test "should get new" do
    get new_topic_quiz_url
    assert_response :success
  end

  test "should create topic_quiz" do
    assert_difference('TopicQuiz.count') do
      post topic_quizzes_url, params: { topic_quiz: { description: @topic_quiz.description, name: @topic_quiz.name, rules: @topic_quiz.rules } }
    end

    assert_redirected_to topic_quiz_url(TopicQuiz.last)
  end

  test "should show topic_quiz" do
    get topic_quiz_url(@topic_quiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic_quiz_url(@topic_quiz)
    assert_response :success
  end

  test "should update topic_quiz" do
    patch topic_quiz_url(@topic_quiz), params: { topic_quiz: { description: @topic_quiz.description, name: @topic_quiz.name, rules: @topic_quiz.rules } }
    assert_redirected_to topic_quiz_url(@topic_quiz)
  end

  test "should destroy topic_quiz" do
    assert_difference('TopicQuiz.count', -1) do
      delete topic_quiz_url(@topic_quiz)
    end

    assert_redirected_to topic_quizzes_url
  end
end

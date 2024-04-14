import Foundation

struct QuizBrain {
  var activeQuestion = 0
  var score = 0

  let questions = [
    Question("Which is the largest organ in the human body?", answers: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
    Question("Five dollars is worth how many nickels?", answers: ["25", "50", "100"], correctAnswer: "100"),
    Question("What do the letters in the GMT time zone stand for?", answers: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
    Question("What is the French word for 'hat'?", answers: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
    Question("In past times, what would a gentleman keep in his fob pocket?", answers: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
    Question("How would one say goodbye in Spanish?", answers: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
    Question("Which of these colours is NOT featured in the logo for Google?", answers: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
    Question("What alcoholic drink is made from molasses?", answers: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
    Question("What type of animal was Harambe?", answers: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
    Question("Where is Tasmania located?", answers: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia"),
  ]

  mutating func check(answer: String) -> Bool {
    if answer == questions[activeQuestion].correctAnswer {
      score += 1
      return true
    }
    return false
  }

  func getActiveQuestion() -> Question {
    return questions[activeQuestion]
  }

  func getProgress() -> Float {
    return Float(activeQuestion) / Float(questions.count - 1)
  }

  mutating func nextQuestion() {
    if activeQuestion < questions.count - 1 {
      activeQuestion += 1
    } else {
      activeQuestion = 0
      score = 0
    }
  }
}

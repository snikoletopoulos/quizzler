import Foundation

struct QuizBrain {
    var activeQuestion = 0
    var score = 0

    let questions = [
        Question("A slug's blood is green.", answer: "True"),
        Question("Approximately one quarter of human bones are in the feet.", answer: "True"),
        Question("The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        Question("It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Question("You can lead a cow down stairs but not up stairs.", answer: "False"),
        Question("Google was originally called 'Backrub'.", answer: "True"),
        Question("Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Question("No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True"),
    ]

    mutating func check(answer: String) -> Bool {
        if answer == questions[activeQuestion].answer {
            score += 1
            return true
        }
        return false
    }

    func getQuestionText() -> String {
        return questions[activeQuestion].text
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

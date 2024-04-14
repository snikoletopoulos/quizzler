import Foundation

struct Question {
    var text: String
    var answers: [String]
    var correctAnswer: String

    init(_ questionText: String, answers: [String], correctAnswer: String) {
        text = questionText
        self.answers = answers
        self.correctAnswer = correctAnswer
    }
}

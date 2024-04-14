import Foundation

struct Question {
    var text: String
    var answer: String

    init(_ questionText: String, answer: String) {
        text = questionText
        self.answer = answer
    }
}

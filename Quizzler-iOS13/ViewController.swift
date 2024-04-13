import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!

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
    var activeQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUi()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle
        let questionAnswer = questions[activeQuestion].answer

        if answer == questionAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        if activeQuestion < questions.count - 1 {
            activeQuestion += 1
        } else {
            activeQuestion = 0
        }

        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: updateUi)
    }

    func updateUi(timer: Timer) {
        updateUi()
    }

    func updateUi() {
        questionLabel.text = questions[activeQuestion].text

        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}

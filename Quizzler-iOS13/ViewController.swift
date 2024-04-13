import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!

    let questions = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is equal to One.", "True"],
        ["Three + Eight is equal to Ten.", "False"],
    ]
    var activeQuestion = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUi()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle
        let questionAnswer = questions[activeQuestion][1]

        if answer == questionAnswer {
            print("right")
        } else {
            print("wrong")
        }

        if activeQuestion < questions.count - 1 {
            activeQuestion += 1
        } else {
            activeQuestion = 0
        }

        updateUi()
    }

    func updateUi() {
        questionLabel.text = questions[activeQuestion][0]
    }
}

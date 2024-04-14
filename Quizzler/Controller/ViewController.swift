import UIKit

class ViewController: UIViewController {
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!

    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()

        updateUi()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!

        if quizBrain.check(answer: userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.nextQuestion()

        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: updateUi)
    }

    func updateUi(timer: Timer) {
        updateUi()
    }

    func updateUi() {
        let activeQuestion = quizBrain.getActiveQuestion()

        questionLabel.text = activeQuestion.text
        firstButton.setTitle(activeQuestion.answers[0], for: .normal)
        secondButton.setTitle(activeQuestion.answers[1], for: .normal)
        thirdButton.setTitle(activeQuestion.answers[2], for: .normal)

        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.score)"

        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
    }
}

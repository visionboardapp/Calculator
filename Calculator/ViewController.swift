import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var currentValue: Double = 0
    
    private var currentOperation: Operation?
    
    private var leftValue: Double?
                
    private func acceptInput(_ input: Double) {
        currentValue = currentValue * 10 + input
        displayLabel.text = "\(currentValue)"
    }

    @IBAction func didTapPercentButton(_ sender: UIButton) {
        // not implemented
    }
    
    @IBAction func didTapSignButton(_ sender: UIButton) {
        currentValue = -currentValue
        displayLabel.text = "\(currentValue)"
    }
    
    @IBAction func didTapDivisionButton(_ sender: UIButton) {
        if currentOperation == nil {
            leftValue = currentValue
            currentValue = 0
            
            currentOperation = .divide
        }
    }
    
    @IBAction func didTapACButton(_ sender: UIButton) {
        reset()
        displayLabel.text = "\(currentValue)"
    }
    
    @IBAction func didTapPlusButton(_ sender: UIButton) {
        if currentOperation == nil {
            leftValue = currentValue
            currentValue = 0
            
            currentOperation = .plus
        }
    }
    
    @IBAction func didTapMunisButton(_ sender: UIButton) {
        if currentOperation == nil {
            leftValue = currentValue
            currentValue = 0
            
            currentOperation = .minus
        }
    }
    
    @IBAction func didTapMultiplyButton(_ sender: UIButton) {
        if currentOperation == nil {
            leftValue = currentValue
            currentValue = 0
            
            currentOperation = .multiply
        }
    }
    
    @IBAction func didTapResult(_ sender: UIButton) {
        if let left = leftValue, let operation = currentOperation {
            var result: Double = 0
            switch operation {
            case .plus:
                result = left + currentValue
            case .minus:
                result = left - currentValue
            case .divide:
                result = left / currentValue
            case .multiply:
                result = left * currentValue
            }
            
            displayLabel.text = "\(result)"
            
            reset()
        }
    }
    
    private func reset() {
        leftValue = nil
        currentOperation = nil
        currentValue = 0
    }
    
    @IBAction func didTapDecimalPoint(_ sender: UIButton) {
        // not implemented
    }
    
    @IBAction func didTapZero(_ sender: UIButton) {
        acceptInput(0)
    }
    
    @IBAction func didTapOne(_ sender: UIButton) {
        acceptInput(1)
    }
    
    @IBAction func didTapTwo(_ sender: UIButton) {
        acceptInput(2)
    }
    
    @IBAction func didTapThree(_ sender: UIButton) {
        acceptInput(3)
    }
    
    @IBAction func didTapFour(_ sender: UIButton) {
        acceptInput(4)
    }
    
    @IBAction func didTapFive(_ sender: UIButton) {
        acceptInput(5)
    }
    
    @IBAction func didTapSix(_ sender: UIButton) {
        acceptInput(6)
    }
    
    @IBAction func didtapSeven(_ sender: UIButton) {
        acceptInput(7)
    }
    
    @IBAction func didTapEight(_ sender: UIButton) {
        acceptInput(8)
    }
    
    @IBAction func didTapNine(_ sender: UIButton) {
        acceptInput(9)
    }
    
    private enum Operation {
        case plus
        case minus
        case divide
        case multiply
    }
}


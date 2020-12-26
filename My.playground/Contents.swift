import UIKit

let operationQueue = OperationQueue()
let operation = BlockOperation { print("start"); sleep(2); print("end") }

operationQueue.addOperation(operation)
sleep(1);
operationQueue.isSuspended = true
sleep(3);

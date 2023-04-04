// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "c29fc6675721039cdf26d4fd8f6e7887"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: Journal.self)
  }
}
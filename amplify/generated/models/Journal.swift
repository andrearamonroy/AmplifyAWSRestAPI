// swiftlint:disable all
import Amplify
import Foundation

public struct Journal: Model {
  public let id: String
  public var quote: String
  public var prompt: String?
  public var createdAt: Temporal.DateTime?
  public var updatedAt: Temporal.DateTime?
  
  public init(id: String = UUID().uuidString,
      quote: String,
      prompt: String? = nil) {
    self.init(id: id,
      quote: quote,
      prompt: prompt,
      createdAt: nil,
      updatedAt: nil)
  }
  internal init(id: String = UUID().uuidString,
      quote: String,
      prompt: String? = nil,
      createdAt: Temporal.DateTime? = nil,
      updatedAt: Temporal.DateTime? = nil) {
      self.id = id
      self.quote = quote
      self.prompt = prompt
      self.createdAt = createdAt
      self.updatedAt = updatedAt
  }
}
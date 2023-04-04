// swiftlint:disable all
import Amplify
import Foundation

extension Journal {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case quote
    case prompt
    case createdAt
    case updatedAt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let journal = Journal.keys
    
    model.authRules = [
      rule(allow: .public, operations: [.create, .update, .delete, .read])
    ]
    
    model.pluralName = "Journals"
    
    model.attributes(
      .primaryKey(fields: [journal.id])
    )
    
    model.fields(
      .field(journal.id, is: .required, ofType: .string),
      .field(journal.quote, is: .required, ofType: .string),
      .field(journal.prompt, is: .optional, ofType: .string),
      .field(journal.createdAt, is: .optional, isReadOnly: true, ofType: .dateTime),
      .field(journal.updatedAt, is: .optional, isReadOnly: true, ofType: .dateTime)
    )
    }
}

extension Journal: ModelIdentifiable {
  public typealias IdentifierFormat = ModelIdentifierFormat.Default
  public typealias IdentifierProtocol = DefaultModelIdentifier<Self>
}
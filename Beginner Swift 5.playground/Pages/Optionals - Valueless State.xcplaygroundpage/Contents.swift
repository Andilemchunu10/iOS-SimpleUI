//: [Previous](@previous)
/*:
 ## Optionals
 Optionals are used where a value may be absent. In other words, we use optionals when we cannot guarantee that our variables have a value under certain conditions. Technically speaking however, any variable that is optional has been assigned a special value called `nil` meaning it is in a valueless state. You cannot use `nil` with non-optional variables. If a variable needs to work with optionals, it must be declared optional beforehand. This is done by using a question mark `?` with type annotation.
 
 Essentially, optionals are used where a variable **might** have a value or **could** eventually get a value. For example, a variable might have to wait until it gets a value from a server which might take time. Until it gets a value it does not have a value - not even an initial value. Another situation is where the variable depends on an operation to succeed to get a value. Until the operation is successful, it makes sense to make the variable `nil` or optional.
*/

//: [Next](@next)

Classes to make working with OS X Addressbook easier. Code originally from Matt Aimonetti's book on Macruby: [MacRuby: The Definitive Guide](http://ofps.oreilly.com/titles/9781449380373/). 

# Installation    

Git clone into lib and `require 'lib/raddressbook/raddressbook'`. Sorry, no macgem at the moment; I'll do that eventually. 

# Examples

## Get a list of contacts with emails:

```ruby                 
address_book = ABAddressBook.sharedAddressBook     
query        = ABPerson.searchElementForProperty(KABEmailProperty, label:nil, key:nil, 
  value:nil, comparison:KABNotEqual)

contacts = address_book.recordsMatchingSearchElement(query)      
```
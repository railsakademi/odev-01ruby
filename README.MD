# Ruby ile Adres Defteri

Bu ödevde Ruby ile basit bir adres defteri uygulaması yapmanız bekleniyor.

Uygulamanın özellikleri:

* CSV dosyasından kişileri okumak
* Tüm kişileri ekrana yazdırmak
* Kişiler üzerinde **ad**a göre arama yapabilmek

**Önemli Not:** Uygulamanın interaktif olmasına gerek yoktur. Sadece class'ların içerisine bu fonksiyonların çalışması için tanımlanmış olan methodları yazmanız yeterlidir.

## Kullanılacak Classlar

### AddressBook ``address_book.rb``

**Attribute Listesi**
- people ``Tüm kişileri tutan bir Person arrayi``

**Method Listesi**
- initialize(csv_path) ``Contructor methodu, parametre olarak CSV dosyasının yolunu alır``
- print_people ``Tüm kişileri satır satır ekrana basar``
- search_person(person_name) ``Kişiler arasında ada göre arama yapar ve tüm sonuçları ekrana basar. Eşleşme kriteri: full_name'in person_name içermesi ``

### Person ``person.rb``

**Attribute Listesi**
- id
- full_name
- phone_number
- city

## Örnek Kullanım

```ruby
address_book = AddressBook.new("people.csv")
address_book.print_people

# id,full_name,phone_number,city
# 1,Anna Knight,351-(218)242-9231,Rosmaninhal
# 2,Johnny Morales,52-(935)415-0815,Lazaro Cardenas
# 3,Lillian Foster,86-(566)188-0813,Biancheng
# 4,Michael Hicks,55-(764)274-2198,Picos
# ..

address_book.search_person("Michael")

# 4,Michael Hicks,55-(764)274-2198,Picos

```

## Linkler

1. http://ruby-doc.org/core-2.2.0/File.html
2. http://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html

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

address_book.search_person("Jean")

# 3,Jean Richardson,351-(187)631-6728,Casais Brancos

```

## Başlangıç

1. Bu repo'yu kendi GitHub hesabınıza forklayın.
2. ```git clone``` ile projeyi bilgisayarına kopyalayın.
3. Proje klasörü içerisinde ```bundle install``` komutunu çalıştırın.
4. ```ruby test.rb``` komutu ile testleri çalışıp sonuçları görüntüleyebilirsiniz. ```watch ruby test.rb``` diyerek testlerin belirli aralıklarla otomatik olarak çalışmasını sağlayabilirsiniz.
5. Ödevi teslim etmek için bu repoya pull-request gönderin. [4][5]

## Linkler

1. http://ruby-doc.org/core-2.2.0/File.html
2. http://ruby-doc.org/stdlib-2.0.0/libdoc/csv/rdoc/CSV.html
3. https://fatihbaydar.wordpress.com/test-cesitleri/unit-test-nedir/
4. https://medium.com/@noteCe/github-ile-fork-ve-pull-request-be6077342834
5. https://help.github.com/articles/using-pull-requests/

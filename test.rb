require 'minitest'
require 'minitest/autorun'
require './address_book.rb'
require './person.rb'

class TestAddressBook < Minitest::Test
  def setup
    @address_book = AddressBook.new("people.csv")
  end

  def test_print_people
    out, err = capture_subprocess_io do
      @address_book.print_people
    end
    assert_match /Roy Clark/, out
    assert_match /Diana Sullivan/, out
    assert_match /16\,Bonnie Adams\,54-\(568\)416-0730\,Las Varillas/, out
    assert_match /6\,Clarence Dunn\,46-\(639\)894-1792\,Kista/, out
  end
  
  def test_search_people
    out, err = capture_subprocess_io do
      @address_book.search_person("Jean")
    end
    assert_match /3,Jean Richardson,351-\(187\)631-6728,Casais Brancos/, out
  end
end

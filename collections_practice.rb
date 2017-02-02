# your code goes here
array = []

def begins_with_r(array)
  array.all?{|word| word.start_with?("r")}
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?('a')
      new_array << word
    end
  end
  new_array
end

def first_wa(array)
  array[array.collect{|word| word.to_s}.index{|word| word.start_with?('wa')}]
end

def remove_non_strings(array)
  array.delete_if{|element| element.class != String}
end

#array = [{id: 'allie'}, {id: 'bob'}, {id: 'bob'}]

def count_elements(array)
  elecount = []
  i = 0
  array.uniq.each do |element|
    elecount << element
    elecount[i][:count] = array.count(element)
    i += 1
  end
  elecount
end

# keys = [{name:'blake'}, {name:'ashley'}]
# data = [{'blake'=>{:age => 21, :col=>'red'}}, {'ashley'=>{:age => 18, :col => 'blue'}}]
def merge_data(keys, data)
  nha = []
  i = 0
  data[0].keys.each do |x|
    nha << data[0].values[i]
    i += 1
  end
  keys.zip(nha).map{|f,s| f.merge(s)}
end

def find_cool(array)
  new_arr = [array[array.collect{|word| word.to_s}.index{|word| word.include?(%Q|"cool"|)}]]
end

schools = {
  "flatiron school bk" => {
    :location => "NYC"
  },
  "flatiron school" => {
    :location => "NYC"
  },
  "dev boot camp" => {
    :location => "SF"
  },
  "dev boot camp chicago" => {
    :location => "Chicago"
  },
  "general assembly" => {
    :location => "NYC"
  },
  "Hack Reactor" => {
    :location => "SF"
  }
}


def organize_schools(schools)
  keys = schools.keys
  pairs = schools.values
  values = []
  pairs.each do |pair|
    values << pair.values[0]
  end
  new_pair = []
  values.each_with_index do |v, i|
    new_pair << [v, keys[i]]
  end
  ff = new_pair.group_by(&:first).map{|city, x| [city, x.map{|pair| pair[1]}]}.to_h 
end

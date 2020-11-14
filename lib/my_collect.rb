collection = []

def my_collect(collection)
    if !collection.empty?
        index = 0
        result = []

        while index < collection.length
            result << yield(collection[index])
            index += 1
        end

        result
    end
end

my_collect(collection) do |element|
    if element == "Tim" || element == "Tom" || element == "Jim"
        element = element.first
    else
        element = element.upcase
    end
end
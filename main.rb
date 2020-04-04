def main
    array=input_data
    with_cycle(array)
    with_iterator(array)
end

def input_data
    [1,2,-3,-4,5,-5,8]
end

def with_cycle(array)
    index=0
    count=0
    if array[0]>0
    znak=1
    else znak=0
    end
    for el in array
        if el>0 and znak==0
            znak=1
            count+=1
            puts index
        elsif el<0 and znak==1
            znak=0
            count+=1
            puts index
        end
        index+=1
    end 
    puts "Cтолько раз в последовательности из целых чисел меняется знак:#{count}" 
end

def with_iterator(array)
    count=0
    if array[0]>0
        znak=1
    else znak=0
    end
    array.each_with_index do |el, index| 
        if el>0 and znak==0
            znak=1
            puts index
            count+=1
        elsif el<0 and znak==1
            znak=0
            count+=1
            puts index
        end
    end
    puts "Cтолько раз в последовательности из целых чисел меняется знак:#{count}" 
end

if __FILE__==$0
    main
end
<h1>Bubble sort in ruby</h1>

Implementing efficient bubble sort in ruby to practice. Checks only one time for a already sorted array.
It can also accept blocks.

```ruby
>bubblesort([4,3,78,2,0,2])
It took 5 iterstions for the sort
 => [0,2,2,3,4,78]
>bubblesort([1,2,3,4])
It took 1 iterstions for the sort
 => [1, 2, 3, 4] 
>puts bubblesort([4,3,2,1])
It took 3 iterstions for the sort
 => [1, 2, 3, 4]
>bubble_sort(["hi","hello","whatsup","hey"]) do |left,right|
	right.length-left.length
end
 => ["hi", "hey", "hello","whatsup"]

```
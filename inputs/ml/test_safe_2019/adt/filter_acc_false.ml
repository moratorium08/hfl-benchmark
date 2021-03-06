
let rec filter_acc p acc xs = match xs with
  | [] -> acc
  | x::xs' ->
      if p x
        then filter_acc p (x::acc) xs'
        else filter_acc p acc xs'

let rec length = function
  | [] -> 0
  | _::l -> 1 + length l

let main xs =
  let p (x: int) = false in
  assert (length (filter_acc p [] xs) = 0)


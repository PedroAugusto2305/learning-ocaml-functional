 let hello () = 
    print_endline "Hello, World!"



let () = hello ()


let soma a b = a + b

let () = print_endline ("Soma: " ^ string_of_int (soma 10 4));
let read_float () =
  float_of_string (read_line ())

let () =
    print_string "Enter the first number: ";
    let num1 = read_float() in

    print_string "Choose between:\n1) Addition\n2) Subtraction\n3) Multiplication\n4) Division\n";
    let calculationType = read_line() in

    print_string "Enter the second number: ";
    let num2 = read_float() in

    match calculationType with
    | "1" -> print_float (num1 +. num2); print_newline ()
    | "2" -> print_float (num1 -. num2); print_newline ()
    | "3" -> print_float (num1 *. num2); print_newline ()
    | "4" -> print_float (num1 /. num2); print_newline ()
    | _ -> raise (Failure "not a valid function")
(* Bindings with liblo-ocaml *)

(* Address *)
type address = LO.Address.t
let address_create host port =
  LO.Address.create host port

(* Message *)
type message_data =
  | String of string
  | Int32 of int
  | Float of float
  | Int64 of int
  | Double of float
  | Char of char

let lo_of_message_data x =
  match x with
    | String s -> `String s
    | Int32 s -> `Int32 s
    | Float s -> `Float s
    | Int64 s -> `Int64 s
    | Double s -> `Double s
    | Char s -> `Char s

(* Send *)
let send_message addr path data =
  LO.send addr path (List.map lo_of_message_data data)

(* Server *)
type server = LO.Server.t

let server_create port handler =

  (* How the server handles the data *)
	let h path data =
		let s = function
		  | `Int32 n -> Int32 n
		  | `Float f -> Float f 
		  | `Double d -> Double d
		  | `String s -> String s
      | `Int64 i -> Int64 i
      | `Char c -> Char c
		  | _ -> String "???"
		in
		let data_l = Array.to_list data in
		let new_data = List.map s data_l in
	        handler path new_data
  in
  LO.Server.create port h

let receive_message server =
  LO.Server.recv server

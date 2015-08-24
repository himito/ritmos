(* Interface with liblo-ocaml*)

(* Address *)
type address
val address_create: string -> int -> address (* host, port, ip *)

(* Message *)
type message_data =
  | String of string
  | Int32 of int
  | Float of float
  | Int64 of int
  | Double of float
  | Char of char

(* Send *)
val send_message: address -> string -> message_data list -> unit

(* Server *)
type server
val server_create: int -> (string -> message_data list -> unit) -> server
val receive_message: server -> unit 

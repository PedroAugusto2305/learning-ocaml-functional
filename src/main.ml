(* definindo tipo de uma tarefa *)
type status = Complete | Incomplete;; (* aqui definimos um tipo status que pode ser completo OU incompleto*)
type task = { name: string; status: status };; (* aqui definimos o tipo task, que tem um name em string e status apontando pro tipoo anterior*)


(* Adiciona uma tarefa à lista *)
let add_task tasks name = 
    { name = name; status = Incomplete } :: tasks;;

(* Listar todas as tarefas *)
let rec list_tasks tasks =
    match tasks with
    | [] -> ()
    | { name; status } :: rest ->
        let status_str = match status with
            | Complete -> "[Concluída]"
            | Incomplete -> "[Pendente]"
    in
    print_endline (name ^ " " ^ status_str);
    list_tasks rest;;


(* Marca uma tarefa como concluída *)
let rec complete_task tasks name =
    match tasks with
    | [] -> []
    | task :: rest -> 
        if task.name = name then { task with status = Complete } :: rest
        else task :: complete_task rest name;;

(* Remove uma tarefa *)
let rec remove_task tasks name = 
    match tasks with
    | [] -> []
    | task :: rest ->
        if task.name = name then rest
        else task :: remove_task rest name;;
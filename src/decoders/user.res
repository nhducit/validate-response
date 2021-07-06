open Json.Decode
@gentype
type user = {
  id: int,
  name: string,
  // example: ["abc@gmail.com","xyz@gmail.com"]
  emails: option<array<string>>,
}

@gentype
let userDecoder = json => {
  id: json |> field("id", int),
  name: json |> field("name", string),
  emails: json |> optional(field("emails", array(string))),
}

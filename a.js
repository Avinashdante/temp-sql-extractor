const fs = require("fs");
const text = fs.readFileSync("test.sql", "utf8");

const indexArray = [];

function recr(txt, alter_index) {
  let sub_str = txt.substr(alter_index, txt.length);
  console.log("sub_str", sub_str.length, sub_str);
  //   const new_str = ;
  indexArray.push(sub_str.substr(0, sub_str.indexOf(";")));
  const new_text_after_deletion = sub_str.substr(
    sub_str.indexOf(";") + 1,
    sub_str.length
  );
  const new_index = new_text_after_deletion.indexOf("ALTER TABLE");
  // Exit condition if there are no alter table conditions
  if (new_index != -1) {
    recr(new_text_after_deletion, new_index);
  }
}
recr(text, text.indexOf("ALTER TABLE"));

console.log(indexArray, indexArray.length);
indexArray.forEach((a) => {
  const splitted = a.split("\n");
  console.log(splitted[1].trim());
});

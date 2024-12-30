import { Variable, bind } from "astal"

export function ClockModule() {
  const getTime = () => new Date().toLocaleString("en-US", {
    hour  : "numeric",
    minute: "numeric",
    hour12: false    ,
  });
  // `true` is here because for some reason a command needs to be run.
  const time = Variable("").poll(1000, 'true', getTime);

  // return <label label = {bind(time)} />
  return <button 
    className = "ClockModule" 
    cursor = "pointer"
  >
    <label label = {bind(time)} />
  </button>
}

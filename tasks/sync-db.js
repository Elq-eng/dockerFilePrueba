

let time = 0

const syncDB = () => {
  time++;
  console.log('running a task every minute:', time);
  return time
}

module.exports = {syncDB}

function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function main() {
  while(true) {
    const favoritePerson = process.env.INSTRUCTOR_NAME;
    console.log(`My favorite person is ${favoritePerson}`);
    console.log("Microservices rock!");
    await sleep(5000);
  }
}

main();

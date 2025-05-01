async function main() {
  const testEnv = process.env.TEST;
  console.log('TEST:', testEnv);
  console.log(process.env);
  console.log('Hello World Test');
  while(true){
      await new Promise(resolve => setTimeout(resolve, 5000));
      console.log('Tick');
  }
}
main();
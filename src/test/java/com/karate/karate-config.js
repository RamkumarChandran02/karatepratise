function fn(){
var env = karate.env;
if(!env) {
env = 'dev';
}

var config = {
env: env,
myVarName: 'hello karate',
baseUrl: 'https://gorest.co.in',
tokenID: '19fa41387c63d2f4ca93265ebc0f148614dbad22bad6c417f7c9eff01ab7ae35'
}

if(env == 'dev'){
//customize
// e.g. config.foo ='bar';
}else if (env == 'e2e'){
//customize
}
return config;
}
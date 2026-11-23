An inference engine is a software that runs an already trained model to produce outputs.

Training is whre a model learns its weights. Inference in using those frozen weights.
{Input goes in;forward pass runs;a prediction comes out}=>Inferrence Engine job is to 
speed up this process as much as it can and in the cheapest manner on the hardware.

Loads the model<<Builds a compute graph<<Runs the ops<<Manages Memory

***********************************MACHTHREETWO???********************************************
Machthreetwo is an inference engine that uses the weights of Pitwall and makes it faster.




===================================Commands to run it:=======================================
docker running command:
docker build -t foxbat-dev .
docker run --rm -it -v "$PWD":/src foxbat-dev bash
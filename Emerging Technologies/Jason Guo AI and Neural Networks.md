# AI and Neural Networks
-------
#### By Jason Guo

Introduction
---
Artificial Intelligence (AI) is often thought of as science fiction, a vicarious dream created by the delusional; however, almost all emerging technologies involve AI in some way. [Self driving cars](http://www.businessinsider.com/heres-what-the-future-of-self-driving-cars-realistically-looks-like-2017-7), [voice recognition](https://medium.com/swlh/5-reasons-why-google-assistant-is-the-future-of-ai-11a07b64f981), and facial recognition are only some of the examples of AI technology.  

The future of mankind is inextricably tied to AI.



What is a neural network
---
Neural networks, at the most basic level, take in some input value(s), and return some output value(s). Whether it be an image, your voice, or some numbers and words, neural networks all aim to solve problems, most of which are usually done by people.   

Take the example of recognizing apples from oranges. It's understandably trivial to human beings, but to machines, this task would be much more difficult. Neural networks make these tasks, and many more, possible for computers to overcome.

Named and modeled after the human brain, neural networks use connected "neurons" to transmit information from input to output. Here is a diagram of an example neural network:

![Neural network diagram](https://www.pyimagesearch.com/wp-content/uploads/2016/08/simple_neural_network_header.jpg)

The input layer, of course, would be what goes into the neural network, and the output layer would be what comes out. Each of the layers in between the input and output layer is considered a "hidden layer", since what happens in those layers is unknown to users.

Each of the "neurons", or nodes, of a layer are connected to every node in the layer ahead. Information is transmitted from node to node, being manipulated each time, until finally the nodes reach the final layer and produce an output.


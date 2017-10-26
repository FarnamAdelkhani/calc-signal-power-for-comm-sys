## Communication-Systems---Calculating-Signal-Power

The goal of this communication systems project is to formulate a variety of calculations to find the average-signal-power of a continuous-random-signal using different methods and then comparing the results. 

The calculations for average power will be found through various methods but it is important that all the values should be the same. If all the calculated values are indeed the same, regardless of the method used, it would prove the underlying theoretical fact that the average-signal-power found by means of autocorrelation function, statistical variance or integral of power spectral density function all lead to the same final value.

Sampling theorem; the concepts of aliasing and the Nyquist theorem will be applied. We can avoid aliasing by using the sampling rate specified by the Nyquist theorem which says we must sample at twice the maximum frequency.


*** Old tapes and vinyl are storing an analog representation of how the air moves over time. Now, if we want to do something more complicated like grabbing that sound and storing it digitally on a computer, ipod or whatever electronic device have you. There is just no way of capturing the entire signal and saving it exactly as is if you are familiar with how computers work and binary. The solution is that we will have to discritize the signal first and then save the discrete samples; this technique is essentially sampling. We are essentially storing the amplitude of the wave at a particular time interval.

*** Creating summations of sin waves we can regenerate desired signals of any desired shape and amplitude. For example a square pulse can be generated using an idealized sin wave along with a dc component. Human speech is audible in a particular range which is around 20Hz -20kHz so what would be the point of sampling anything outside of that audible range? These are the ideas this project is set around.

*** Although aliasing can occur, considering two signals at frequency f and f  + 1/T we can apply trigonometry and find that the sampled version of the two signals will be exactly the same.


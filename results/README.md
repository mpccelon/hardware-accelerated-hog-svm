# Results  

## Robustness
| Dataset | Images | FPGA F1 score | FPGA MCC | RasPi F1 score | RasPi MCC
| MVI 39031 | 2568 | 0.97 | 0.95 | 0.98 | 0.96  
| MVI 39211 | 1703 | 0.84 | 0.84 | 0.85 | 0.85 
| MVI 39311 | 1583 | 0.80 | 0.79 | 0.88 | 0.87
| MMDA 3017 | 13366 | 0.51 | 0.52 | 0.59 | 0.60
| MMDA 3100 | 10502 | 0.60 | 0.60 | 0.62 | 0.62
| MMDA 4079 | 10814 | 0.66 | 0.65 | 0.66 | 0.65

We used the [F1 score](https://en.wikipedia.org/wiki/F1_score) and the [Matthews Correlation Coefficient](https://en.wikipedia.org/wiki/Matthews_correlation_coefficient) to describe the accuracy and robustness of the system. 
Note that the FPGA is less robust than the Raspberry Pi, and both models take a hit in accuracy on the MMDA datasets. This is due to the unoptimal camera angles used in the MMDA datasets.

## Performance
| Dataset | Images | FPGA processing time | RasPi processing time | Speedup 
| MVI 39031 | 2568 | 0.2661 | 3.6345 | 13.65602469
| MVI 39211 | 1703 | 0.1880 | 2.3629 | 12.56460667
| MVI 39311 | 1583 | 0.1628 | 2.2430 | 13.77413501
| MMDA 3017 | 13366 | 1.3383 | 19.1686 | 14.32297084
| MMDA 3100 | 10502 | 1.0567 | 15.1015 | 14.29106627
| MMDA 4079 | 10814 | 1.0831 | 15.5319 | 14.33907068 

The FPGA is more than 10x faster than the software implementation in the Raspberry Pi using optimized default OpenCV libraries. 

More results, including the effect of hardware acceleration in determining the number of cars in the dynamic traffic management algorithm, can be seen in our thesis draft.
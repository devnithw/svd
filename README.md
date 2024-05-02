# Singular Value Decomposition Experiments
Experimenting with Singular Value Decomposition

## Basic SVD image decomposition
The Jupyter Notebook `svd_image_test.ipynb` contains experimental code for breaking down a Lena image into factoring matrices and reconstructing it using truncated outer products.

## SVD truncation for image denoising
In theory most of the higher sigma values correspond to outer products with higher SNR. Therefore truncating these products from the summation theoretically leads to denoising.

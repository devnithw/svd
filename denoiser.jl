using Images, LinearAlgebra

# Load the noisy image
noisy_image = load("path/to/noisy_image.jpg")

# Convert the image to a matrix
noisy_matrix = Float64.(channelview(noisy_image))

# Perform SVD on the noisy matrix
U, Σ, V = svd(noisy_matrix)

# Set a threshold value for singular values
threshold = 100

# Apply thresholding to the singular values
Σ_thresholded = max.(Σ - threshold, 0)

# Reconstruct the denoised matrix
denoised_matrix = U * Diagonal(Σ_thresholded) * V'

# Convert the denoised matrix back to an image
denoised_image = colorview(RGB, denoised_matrix)

# Save the denoised image
save("path/to/denoised_image.jpg", denoised_image)

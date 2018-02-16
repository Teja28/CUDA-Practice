int ** ReverseMatrix(int** matrix)
{

}

//assign the number of threads as number of elements in the kernel, number of blocks
__global__ void Convolution(int** matrixA, int** matrixB, int pointC)
{
  pointC = 0;
  for (int i = threadIdx.y+blockIdx.y*blockDim.y; i < N; i+=blockIdx.y*gridDim.y)
  {
    for (int j = threadIdx.x+blockIdx.x*blockDim.x; j < N; j+=blockIdx.x*gridDim.x)
    {
      pointC = pointC + (matrixA[i][j]*matrixB[j][i]);
    }
  }
}

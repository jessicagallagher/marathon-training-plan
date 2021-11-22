export default function LandingPage() {
  return (
    <div className='container max-w-full mx-auto'>
      <div className='relative'>
        <div className='relative h-screen mx-auto flex justify-center items-center overflow-hidden bg-green-500'>
          <div className='relative'>
            <h1 className='text-center font-accent text-white text-5xl md:text-7xl lg:text-8xl font-semi-bold tracking-tight'>
              Identify yourself.
            </h1>
            <div className='mt-8 md:mt-10 lg:mt-20 max-w-sm mx-auto flex justify-center'>
              <div className='grid grid-cols-1 md:grid-cols-2 gap-8 md:gap-10 text-2xl md:text-4xl font-medium'>
                <a
                  href='#'
                  className='flex items-center justify-center px-4 md:px-6 lg:px-8 py-3 md:py-4 lg:py-6 border border-transparent rounded-md shadow-lg text-indigo-700 hover:text-white bg-white bg-opacity-60 hover:bg-opacity-60 hover:bg-indigo-700 hover:transform hover:scale-125'
                >
                  Jessica
                </a>
                <a
                  href='#'
                  className='flex items-center justify-center px-4 md:px-6 lg:px-8 py-3 md:py-4 lg:py-6 border border-transparent rounded-md shadow-lg text-indigo-700 hover:text-white bg-white bg-opacity-60 hover:bg-opacity-60 hover:bg-indigo-700 hover:transform hover:scale-125'
                >
                  Stephen
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

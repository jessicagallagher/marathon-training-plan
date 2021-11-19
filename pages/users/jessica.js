import Head from 'next/head';

export default function Jessica() {
  return (
    <div>
      <Head>
        <title>Jessica</title>
        <link rel="icon" href="/favicon.ico" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300;400;500;600;700;800&family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />
      </Head>


      <div className='h-screen container max-w-full mx-auto p-4'>
        <div className='flex flex-col justify-center'>
          <div className='shadow overflow-hidden border-b border-gray-200 rounded-lg'>
            <table className='min-w-full divide-y divide-black'>
              <thead className='bg-green-400'>
                <tr className='text-center text-lg md:text-2xl lg:text-4xl font-bold font-accent'>
                  Target Pace: 11'27" Target Finish: 5:00:00
                </tr>
              </thead>
            </table>
          </div>
        </div>


      </div>
    </div>

  )
}

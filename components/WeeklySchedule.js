export default function WeeklySchedule() {
  return (
    <div className='h-screen container max-w-full mx-auto p-4'>
      <div className='flex flex-col justify-center'>
        <div className='shadow-2xl overflow-hidden rounded-lg border border-black'>
          <table className='min-w-full'>
            <thead className='bg-teal divide-y divide-black'>
              <tr>
                <th className='text-center text-lg md:text-2xl lg:text-4xl font-bold font-accent md:py-1 lg:py-2'>
                  Target Pace: 11'27" Target Finish: 5:00:00
                </th>
              </tr>
              <tr className='bg-red-200'>
                <th className='text-center font-semibold text-md md:text-lg lg:text-2xl py-1 md:py-1.5 lg:py-3'>
                  Week 1: December 20 - December 26
                </th>
              </tr>
            </thead>
          </table>
          <table className='min-w-full border-t border-black z-50 table-fixed'>
            <thead className='bg-blue-200 divide-y divide-black'>
              <tr>
                <th className='text-center text-xs md:text-md lg:text-lg font-normal border-r border-black md:py-3 w-1/4'>
                  Day
                </th>
                <th className='text-center text-xs md:text-md lg:text-lg font-normal border-r border-black w-1/4'>
                  Run / Workout
                </th>
                <th className='text-center text-xs md:text-md lg:text-lg font-normal border-r border-black w-1/4'>
                  Actual
                </th>
                <th className='text-center text-xs md:text-md lg:text-lg font-normal border-r border-black w-1/12'>
                  Pace Minutes
                </th>
                <th className='text-center text-xs md:text-md lg:text-lg font-normal w-1/12'>
                  Pace Seconds
                </th>
              </tr>
              

            </thead>

          </table>
          
        </div>
      </div>


    </div>

  )
}

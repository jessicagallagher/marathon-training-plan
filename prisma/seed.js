const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();
//THIS IS INCORRECT NEEDS ARRAY SEE DOCS: https://www.prisma.io/docs/concepts/components/prisma-client/crud#create
async function main() {
  const allWeeks = await prisma.trainingWeek.createMany({
    data: [
      {
        weekNumber: 1,
        weekStart: 'December 20',
        weekEnd: 'December 26',
      },
      {
        weekNumber: 2,
        weekStart: 'December 27',
        weekEnd: 'January 2',
      },
      {
        weekNumber: 3,
        weekStart: 'January 3',
        weekEnd: 'January 9',
      },
      {
        weekNumber: 4,
        weekStart: 'January 10',
        weekEnd: 'January 16',
      },
      {
        weekNumber: 5,
        weekStart: 'January 17',
        weekEnd: 'January 23',
      },
      {
        weekNumber: 6,
        weekStart: 'January 24',
        weekEnd: 'January 30',
      },
      {
        weekNumber: 7,
        weekStart: 'January 31',
        weekEnd: 'February 6',
      },
      {
        weekNumber: 8,
        weekStart: 'February 7',
        weekEnd: 'February 13',
      },
      {
        weekNumber: 9,
        weekStart: 'February 14',
        weekEnd: 'February 20',
      },
      {
        weekNumber: 10,
        weekStart: 'February 21',
        weekEnd: 'February 27',
      },
      {
        weekNumber: 11,
        weekStart: 'February 28',
        weekEnd: 'March 6',
      },
      {
        weekNumber: 12,
        weekStart: 'March 7',
        weekEnd: 'March 13',
      },
      {
        weekNumber: 13,
        weekStart: 'March 14',
        weekEnd: 'March 20',
      },
      {
        weekNumber: 14,
        weekStart: 'March 21',
        weekEnd: 'March 27',
      },
      {
        weekNumber: 15,
        weekStart: 'March 28',
        weekEnd: 'April 3',
      },
      {
        weekNumber: 16,
        weekStart: 'April 4',
        weekEnd: 'April 10',
      },
      {
        weekNumber: 17,
        weekStart: 'April 11',
        weekEnd: 'April 17',
      },
      {
        weekNumber: 18,
        weekStart: 'April 18',
        weekEnd: 'April 24',
      },
    ],
  });
  const allUsers = await prisma.user.createMany({
    data: [
      {
        name: 'Jessica',
        email: 'jessicalyngallagher@me.com',
      },
      {
        name: 'Stephen',
        email: 'stephengallaghercpa@gmail.com',
      },
    ],
  });
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });

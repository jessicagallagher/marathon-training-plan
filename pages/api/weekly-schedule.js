import { PrismaClient } from '.prisma/client';

const prisma = new PrismaClient();

const handler = async (req, res) => {
  const user = await prisma.user.findUnique({
    where: {
      id: 1,
    },
  });

  const trainingWeekNumber = await prisma.trainingPlan
};

export default handler;

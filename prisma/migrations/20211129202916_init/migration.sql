-- CreateTable
CREATE TABLE "TrainingWeek" (
    "id" SERIAL NOT NULL,
    "weekNumber" INTEGER NOT NULL,
    "weekStart" TEXT NOT NULL,
    "weekEnd" TEXT NOT NULL,

    CONSTRAINT "TrainingWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL DEFAULT E'password',
    "actualMilesRun" DECIMAL(4,2),
    "paceMinutes" INTEGER,
    "paceSeconds" INTEGER,
    "weekTotalMiles" DECIMAL(4,2),
    "averageWeeklyPace" DECIMAL(4,2),
    "paceGapToGoal" DECIMAL(4,2),
    "totalMilesOverall" DECIMAL(5,2),
    "totalAveragePace" DECIMAL(4,2),
    "averagePaceGapToGoal" DECIMAL(4,2),

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TrainingPlan" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "weekId" INTEGER NOT NULL,
    "dayOfWeek" TEXT NOT NULL,
    "workoutType" TEXT NOT NULL,
    "targetMiles" DECIMAL(4,2) NOT NULL,

    CONSTRAINT "TrainingPlan_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_weekId_fkey" FOREIGN KEY ("weekId") REFERENCES "TrainingWeek"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

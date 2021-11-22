/*
  Warnings:

  - You are about to drop the `Dates` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Jessica` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Dates";

-- DropTable
DROP TABLE "Jessica";

-- CreateTable
CREATE TABLE "TrainingWeek" (
    "id" SERIAL NOT NULL,
    "weekNumber" INTEGER NOT NULL,
    "weekStart" TIMESTAMP(3) NOT NULL,
    "weekEnd" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "TrainingWeek_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Users" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "actualMilesRun" INTEGER NOT NULL,
    "paceMinutes" INTEGER NOT NULL,
    "paceSeconds" INTEGER NOT NULL,
    "weekTotalMiles" INTEGER NOT NULL,
    "averageWeeklyPace" INTEGER NOT NULL,
    "paceGapToGoal" INTEGER NOT NULL,
    "totalMilesOverall" INTEGER NOT NULL,
    "totalAveragePace" INTEGER NOT NULL,
    "averagePaceGapToGoal" INTEGER NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TrainingPlan" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "trainingWeekNumberId" INTEGER NOT NULL,
    "day" TEXT NOT NULL,
    "isRun" BOOLEAN NOT NULL DEFAULT false,
    "isWorkout" BOOLEAN NOT NULL DEFAULT false,
    "isRest" BOOLEAN NOT NULL DEFAULT true,
    "workoutType" TEXT NOT NULL,
    "targetMiles" INTEGER NOT NULL,

    CONSTRAINT "TrainingPlan_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_userId_fkey" FOREIGN KEY ("userId") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_trainingWeekNumberId_fkey" FOREIGN KEY ("trainingWeekNumberId") REFERENCES "TrainingWeek"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

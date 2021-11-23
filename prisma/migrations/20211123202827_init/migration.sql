-- CreateTable
CREATE TABLE "TrainingWeek" (
    "id" SERIAL NOT NULL,
    "weekNumber" INTEGER NOT NULL,
    "weekStart" TEXT NOT NULL,
    "weekEnd" TEXT NOT NULL,
    "trainingDay" TEXT[],

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
    "dayOfWeekId" INTEGER NOT NULL,
    "workoutType" TEXT NOT NULL,
    "targetMiles" DECIMAL(4,2) NOT NULL,

    CONSTRAINT "TrainingPlan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_TrainingPlanToTrainingWeek" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_TrainingPlanToTrainingWeek_AB_unique" ON "_TrainingPlanToTrainingWeek"("A", "B");

-- CreateIndex
CREATE INDEX "_TrainingPlanToTrainingWeek_B_index" ON "_TrainingPlanToTrainingWeek"("B");

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TrainingPlan" ADD CONSTRAINT "TrainingPlan_dayOfWeekId_fkey" FOREIGN KEY ("dayOfWeekId") REFERENCES "TrainingWeek"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TrainingPlanToTrainingWeek" ADD FOREIGN KEY ("A") REFERENCES "TrainingPlan"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_TrainingPlanToTrainingWeek" ADD FOREIGN KEY ("B") REFERENCES "TrainingWeek"("id") ON DELETE CASCADE ON UPDATE CASCADE;

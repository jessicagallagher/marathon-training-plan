-- AlterTable
ALTER TABLE "TrainingPlan" ALTER COLUMN "targetMiles" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Users" ALTER COLUMN "weekTotalMiles" SET DATA TYPE TEXT,
ALTER COLUMN "averageWeeklyPace" SET DATA TYPE TEXT,
ALTER COLUMN "paceGapToGoal" SET DATA TYPE TEXT,
ALTER COLUMN "totalMilesOverall" SET DATA TYPE TEXT,
ALTER COLUMN "totalAveragePace" SET DATA TYPE TEXT,
ALTER COLUMN "averagePaceGapToGoal" SET DATA TYPE TEXT,
ALTER COLUMN "actualMilesRun" SET DATA TYPE TEXT;

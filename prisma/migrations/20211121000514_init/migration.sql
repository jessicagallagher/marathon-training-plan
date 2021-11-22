/*
  Warnings:

  - Made the column `day` on table `Jessica` required. This step will fail if there are existing NULL values in that column.
  - Made the column `runWorkout` on table `Jessica` required. This step will fail if there are existing NULL values in that column.
  - Made the column `actual` on table `Jessica` required. This step will fail if there are existing NULL values in that column.
  - Made the column `paceMinutes` on table `Jessica` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Jessica" ALTER COLUMN "day" SET NOT NULL,
ALTER COLUMN "runWorkout" SET NOT NULL,
ALTER COLUMN "actual" SET NOT NULL,
ALTER COLUMN "paceMinutes" SET NOT NULL;

-- CreateTable
CREATE TABLE "Dates" (
    "id" SERIAL NOT NULL,
    "weekNumber" INTEGER NOT NULL,
    "weekStart" TIMESTAMP(3) NOT NULL,
    "weekEnd" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Dates_pkey" PRIMARY KEY ("id")
);

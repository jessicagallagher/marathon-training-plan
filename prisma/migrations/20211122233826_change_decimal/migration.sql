/*
  Warnings:

  - Changed the type of `actualMilesRun` on the `Users` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Users" DROP COLUMN "actualMilesRun",
ADD COLUMN     "actualMilesRun" JSONB NOT NULL;

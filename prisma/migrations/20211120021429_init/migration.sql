-- CreateTable
CREATE TABLE "Jessica" (
    "id" SERIAL NOT NULL,
    "day" TEXT,
    "runWorkout" TEXT,
    "actual" INTEGER,
    "paceMinutes" INTEGER,

    CONSTRAINT "Jessica_pkey" PRIMARY KEY ("id")
);

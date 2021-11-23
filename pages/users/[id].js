import Head from 'next/head';
import Link from 'next/link';
import Schedule from '../dashboard/schedule';
import { PrismaClient } from '@prisma/client';

export async function getStaticProps({ params }) {
  const prisma = new PrismaClient();

  const users = await prisma.users.findOne({
    where: {
      id: Number(params.id)
    }
  });

  return {
    props: {
      users
    }
  };
}

export async function getStaticPaths() {
  const prisma = new PrismaClient();
  const user = await prisma.users.findMany();

  return {
    paths: user.map((user) => ({
      params: {
        id: user.id.toString()
      }
    })),
    fallback: false
  };
}

export default function({ user }) {

  <div>
    <Head>
      <title>Jessica</title>
      <link rel="icon" href="/favicon.ico" />
      <link rel="preconnect" href="https://fonts.googleapis.com" />
      <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="true" />
      <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300;400;500;600;700;800&family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />
    </Head>

    <main>
      <Schedule />
    </main>

  </div>


};

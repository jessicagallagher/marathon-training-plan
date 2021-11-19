import Head from 'next/head';
import LandingPage from '../components/LandingPage';

export default function Home() {
  return (
    <div>
      <Head>
        <title>Marathon Training</title>
        <link rel="icon" href="/favicon.ico" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300;400;500;600;700;800&family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />
      </Head>
      <main>
        <LandingPage />
      </main>
    </div>
  )
}

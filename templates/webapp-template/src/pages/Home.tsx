// Pages — screens and routes. Orchestrates components; no business logic.
import Button from '../components/Button';

export default function Home() {
  return (
    <main className="min-h-screen flex flex-col items-center justify-center gap-4 p-8">
      <h1 className="text-3xl font-bold">webapp-template</h1>
      <p className="text-gray-500">Replace this with your core loop.</p>
      <Button label="Get Started" />
    </main>
  );
}

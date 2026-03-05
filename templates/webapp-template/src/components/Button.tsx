// UI Layer — display only. No business logic here.

interface ButtonProps {
  label: string;
  onClick?: () => void;
  variant?: 'primary' | 'secondary';
}

export default function Button({ label, onClick, variant = 'primary' }: ButtonProps) {
  const base = 'px-4 py-2 rounded font-medium transition-colors cursor-pointer';
  const styles = {
    primary: `${base} bg-blue-600 text-white hover:bg-blue-700`,
    secondary: `${base} bg-gray-200 text-gray-800 hover:bg-gray-300`,
  };

  return (
    <button className={styles[variant]} onClick={onClick}>
      {label}
    </button>
  );
}

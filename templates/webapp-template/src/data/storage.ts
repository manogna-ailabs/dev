// Data Layer — saving and retrieving data. UI never directly touches storage.

const PREFIX = 'app:';

export function saveItem<T>(key: string, value: T): void {
  localStorage.setItem(`${PREFIX}${key}`, JSON.stringify(value));
}

export function loadItem<T>(key: string): T | null {
  const raw = localStorage.getItem(`${PREFIX}${key}`);
  if (!raw) return null;
  try {
    return JSON.parse(raw) as T;
  } catch {
    return null;
  }
}

export function removeItem(key: string): void {
  localStorage.removeItem(`${PREFIX}${key}`);
}

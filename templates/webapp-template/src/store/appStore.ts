// Store — global state management via Zustand.
import { create } from 'zustand';

interface AppState {
  user: string | null;
  isReady: boolean;
  setUser: (user: string | null) => void;
  setReady: (ready: boolean) => void;
}

export const useAppStore = create<AppState>((set) => ({
  user: null,
  isReady: false,
  setUser: (user) => set({ user }),
  setReady: (isReady) => set({ isReady }),
}));

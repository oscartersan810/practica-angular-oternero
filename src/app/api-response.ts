import { IDispositivo } from './idispositivo';

export interface ApiResponse {
  total: number;
  dispositivos: IDispositivo[];
}

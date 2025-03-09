import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { IDispositivo } from './idispositivo';

@Injectable({
  providedIn: 'root'
})
export class SamsunggalaxyService {
  private apiUrl = 'http://localhost/practica-angular-oternero/api.php';

  constructor(private http: HttpClient) {}

  // Obtener todos los dispositivos
  obtenerTodos(): Observable<IDispositivo[]> {
    return this.http.get<IDispositivo[]>(this.apiUrl);
  }

  // Obtener dispositivos filtrados por nombre y/o año
  obtenerDispositivos(nombre: string = '', año: number | null = null): Observable<IDispositivo[]> {
    let params = new HttpParams();

    if (nombre) {
      params = params.set('n', nombre); // Filtro por nombre
    }
    if (año) {
      params = params.set('a', año.toString()); // Filtro por año
    }

    return this.http.get<IDispositivo[]>(this.apiUrl, { params });
  }
}

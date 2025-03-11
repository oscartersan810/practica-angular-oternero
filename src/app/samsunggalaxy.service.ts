import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ApiResponse } from './api-response';
import { IDispositivo } from './idispositivo';

@Injectable({
  providedIn: 'root'
})
export class SamsunggalaxyService {
  private apiUrl = 'http://localhost/practica-angular-oternero/api.php';
  // private apiUrl = '../../../api.php';

  constructor(private http: HttpClient) {}

  // Obtener todos los dispositivos
  obtenerTodos(page: number = 1, limit: number = 10): Observable<IDispositivo[]> {
    let params = new HttpParams()
    .set('page', page.toString())
    .set('limit', limit.toString());

    return this.http.get<IDispositivo[]>(this.apiUrl, {params});
  }

  // Obtener dispositivos filtrados por nombre y/o año
  obtenerDispositivos(nombre: string = '', anio: number | null = null): Observable<IDispositivo[]> {
    let params = new HttpParams();

    if (nombre) {
      params = params.set('n', nombre); // Filtro por nombre
    }
    if (anio) {
      params = params.set('a', anio.toString()); // Filtro por año
    }

    return this.http.get<IDispositivo[]>(this.apiUrl, { params });
  }
}

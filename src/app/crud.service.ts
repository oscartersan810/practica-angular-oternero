import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { ICrud } from './icrud'; // Asegúrate de tener esta interfaz definida

const URL_BASE = 'https://apiproyecto016.iesruizgijon.es/api/articulos';

@Injectable({
  providedIn: 'root'
})
export class CrudService {

  constructor(private httpclient: HttpClient) { }

  // Rescatar todos los productos
  obtenerTodos(): Observable<{ articulos: ICrud[] }> {
    return this.httpclient.get<{ articulos: ICrud[] }>(`${URL_BASE}`);
  }

  // Rescatar un producto con un determinado id
  obtenerPorId(id: number): Observable<ICrud> {
    return this.httpclient.get<ICrud>(`${URL_BASE}/${id}`);
  }

  // Insertar un nuevo producto
  insertar(articulo: ICrud): Observable<ICrud> {
    return this.httpclient.post<ICrud>(`${URL_BASE}`, articulo);
  }

  // Actualizar un producto
  actualizar(id: number, articulo: ICrud): Observable<ICrud> {
    return this.httpclient.put<ICrud>(`${URL_BASE}/${id}`, articulo);
  }

  // Eliminar un producto
  eliminar(id: number): Observable<void> {
    return this.httpclient.delete<void>(`${URL_BASE}/${id}`);
  }
}
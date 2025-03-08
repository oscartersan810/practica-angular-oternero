import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

const URL_BASE = 'http://localhost//practica-angular-oternero/api.php';

@Injectable({
  providedIn: 'root',
})
export class SamsunggalaxyService {
  constructor(private Httpclient: HttpClient) {}

  obtenerTodos() {
    return this.Httpclient.get<any>(`${URL_BASE}`);
  }
}

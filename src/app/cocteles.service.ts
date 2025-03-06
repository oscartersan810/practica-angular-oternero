import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

const URL_BASE = 'www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic';

@Injectable({
  providedIn: 'root'
})
export class CoctelesService {

  constructor(private httpclient:HttpClient) { }

  obtenerCocteles(){
    return this.httpclient.get<any>(`${URL_BASE}`, );
  }
}

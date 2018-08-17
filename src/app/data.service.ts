import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DataService {

  constructor(private http: HttpClient) { }

  getBlueprints() {
    return this.http.get('https://esi.tech.ccp.is/latest/markets/10000002/orders/?datasource=tranquility&order_type=sell&type_id=16670')
  }
  getTypeIDs() {
    return this.http.get('http://sw-gaming.org/eve/assets/sde/typeIDs.txt')
  }
}

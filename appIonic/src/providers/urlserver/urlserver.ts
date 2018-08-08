import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

/*
  Generated class for the UrlserverProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class UrlserverProvider {
  public URLSERVER:any;

  constructor(public http: HttpClient) {
    console.log('Hello UrlserverProvider Provider');
    //this.URLSERVER = "http://localhost:3000/"
    this.URLSERVER = "https://redciclar.herokuapp.com/";
  }

}

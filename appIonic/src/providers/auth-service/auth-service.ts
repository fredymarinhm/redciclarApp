import { Http, Headers, RequestOptions } from '@angular/http';
import { Injectable } from '@angular/core';
import { UrlserverProvider } from '../urlserver/urlserver';

//Variable para realizar llamdo a la API
var apiUrl;

/*
  Generated class for the AuthServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class AuthServiceProvider {

  constructor(public http: Http, public urlserverprovider: UrlserverProvider) {
    console.log('Hello AuthServiceProvider Provider');
    apiUrl = urlserverprovider + 'api/v1/';
  }

  postData(credentials, type){
    let headers = new Headers(
      {
        'Content-Type' : 'application/json'
      });
    let options = new RequestOptions({ headers: headers });
    return new Promise((resolve, reject) =>{
        this.http.post(apiUrl+type, JSON.stringify(credentials), options).subscribe(res =>{
          resolve(res.json());
        }), (err) => {
          reject(err);
        }
    });
  }
}

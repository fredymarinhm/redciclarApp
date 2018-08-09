import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { UrlserverProvider } from '../../providers/urlserver/urlserver';

/**
 * Generated class for the ImageInfoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-image-info',
  templateUrl: 'image-info.html',
})
export class ImageInfoPage {
  img: string;
  description: string;
  fecha: string;
  urlserver: any;


  constructor(public navCtrl: NavController, public navParams: NavParams, public urlserverprovider:UrlserverProvider) {
    this.img = this.navParams.get('img');
    this.description = this.navParams.get('info');  
    this.fecha = this.navParams.get('fecha');
    this.urlserver = urlserverprovider.URLSERVER;
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ImageInfoPage');
  }

}

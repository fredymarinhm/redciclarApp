import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';

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
  fecha: string


  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.img = this.navParams.get('img');
    this.description = this.navParams.get('info');  
    this.fecha = this.navParams.get('fecha');

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ImageInfoPage');
  }

}

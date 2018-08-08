import { Component } from '@angular/core';
import { NavController, MenuController } from 'ionic-angular';
import { ImagesProvider } from '../../providers/images/images';
import { ImageInfoPage } from '../image-info/image-info';
import { UrlserverProvider } from '../../providers/urlserver/urlserver';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  public userDetails: any;
  images: any;
  respounce: any;
  urlserver: any;

  constructor(public navCtrl: NavController, public menu: MenuController, public ImagesProvider: ImagesProvider, public imagesProvider: ImagesProvider,
    public urlserverprovider:UrlserverProvider) {
    this.urlserver = urlserverprovider;
    const data= JSON.parse(localStorage.getItem('user'));
    this.userDetails = data.user;
    this.getImagesHome();
  }

  getImagesHome() {
    this.imagesProvider.getImage(this.userDetails.auth_token).then((result) => {
      this.respounce = result;
      this.images = this.respounce.data;
      console.log(this.images)
    }, (err) => {
      //console.log(err);
    });
  }

  goImage(urlImage, imgDescription, imgDate){
    this.navCtrl.push(ImageInfoPage,{
      img: urlImage,
      info:imgDescription,
      fecha: imgDate
    });
  }

  ionViewWillEnter () {

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad LoginPage');
    this.menu.enable(true);
  }
  ionViewDidEnter(){
    console.log("ionViewDidEnter");
    
  }
}

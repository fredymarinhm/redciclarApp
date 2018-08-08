import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SignUpPage } from './sign-up';

import { IonicPage, NavController, NavParams, MenuController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';
import { HomePage } from '../home/home'
import { AuthServiceProvider } from '../../providers/auth-service/auth-service';

@IonicPage()
@NgModule({
  declarations: [
    SignUpPage,
  ],
  imports: [
    IonicPageModule.forChild(SignUpPage),
  ],
})
export class SignUpPageModule {
  respouceData : any;
  userData = {"name":"", "email":"", "password":"", "password_confirmation":""};
  constructor(public navCtrl: NavController, 
    public navParams: NavParams, 
    public menu: MenuController, 
    public authServiceProvider: AuthServiceProvider, 
    public alertCtl: AlertController ) {
  }

  ionViewWillEnter () { 
    this.menu.enable (false); 
  }


  SignUp(){
    this.authServiceProvider.postData(this.userData, "sign_up").then((result) => {
      this.respouceData = result;
      console.log(this.respouceData);
      localStorage.setItem('user', JSON.stringify(this.respouceData));
      this.navCtrl.push(HomePage);
    }, (err) => {
      let alert = this.alertCtl.create({
        title: 'Registro',
        subTitle: 'NO se pudo registrar, por favor intente mas tarde.',
        buttons: ['Dismiss']
      });
      alert.present();
    });
  }
}

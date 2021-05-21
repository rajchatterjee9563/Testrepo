import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name' ;
import PHONE_FIELD from '@salesforce/schema/Account.Phone' ;
import { createRecord } from 'lightning/uiRecordApi';
import { NavigationMixin } from 'lightning/Navigation';
export default class CreateAccount_LWC extends  NavigationMixin(LightningElement){
    name=' ' ;
    phone=' ';
    handlechange(event){
        if(event.target.label== 'Name'){
         this.name = event.target.value;
        }
        if(event.target.label== 'phone'){
            this.phone = event.target.value;
        }
    }

    CreateAccount(){
     const fields= {};
     fields [NAME_FIELD.feildapiname] = this.name ;
     fields [phone_FIELD.feildapiname] = this.phone ;
     const recordinput = {apiName: ACCOUNT_OBJECT.objectApiname, fields };
     createRecord(recordinput)
     .then(account => {
         this.accountID = account.id;
         this.dispatchevent(
             new showToastevent ({
                 title: 'Success',
                 message : 'Account created',
                 variant : 'Success',
             }),
         );
         this[NavigationMixin.Navigate]({
             type: 'standard__recordpage',
             attributes : {
                 recordid: account.id,
                 objectapiname: 'Account',
                 actionname : 'view'
             },
            });

        })
        .catch(Error => {
            this.dispatchevent(
                new showToastevent({
                    title: 'Error creating record',
                    message: error.body.message,
                    variant: 'error',
                }),
            );
        });
}
    }
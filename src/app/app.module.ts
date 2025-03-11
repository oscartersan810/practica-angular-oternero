import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';  // Importar FormsModule

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { SamsunggalaxyComponent } from './samsunggalaxy/samsunggalaxy.component';
import { AcercadeComponent } from './acercade/acercade.component';
import { Pagina404Component } from './pagina404/pagina404.component';
import { BusquedaComponent } from './busqueda/busqueda.component';
import { HomeComponent } from './home/home.component';
import { CrudComponent } from './crud/crud.component';
import { provideHttpClient } from '@angular/common/http';


@NgModule({
  declarations: [
    AppComponent,
    SamsunggalaxyComponent,
    AcercadeComponent,
    Pagina404Component,
    BusquedaComponent,
    HomeComponent,
    CrudComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule  
    //HttpClientModule
  ],
  providers: [provideHttpClient()],
  bootstrap: [AppComponent]
})
export class AppModule { }

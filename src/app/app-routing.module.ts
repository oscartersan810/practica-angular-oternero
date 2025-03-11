import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { SamsunggalaxyComponent } from './samsunggalaxy/samsunggalaxy.component';
import { BusquedaComponent } from './busqueda/busqueda.component';
import { AcercadeComponent } from './acercade/acercade.component';
import { CrudComponent } from './crud/crud.component';
import { Pagina404Component } from './pagina404/pagina404.component';
import { CrudmodifyComponent } from './crudmodify/crudmodify.component';

const routes: Routes = [
  {path: '', redirectTo: '/home', pathMatch: 'full'},
  {path: 'home', component: HomeComponent},
  {path: 'samsunggalaxy', component: SamsunggalaxyComponent},
  {path: 'busqueda', component: BusquedaComponent},
  {path: 'acercade', component: AcercadeComponent},
  {path: 'crud', component: CrudComponent},
  {path: 'crudmodify', component: CrudmodifyComponent},
  {path: '**', component: Pagina404Component},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

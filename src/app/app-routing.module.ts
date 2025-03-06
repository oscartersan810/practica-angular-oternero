import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CoctelesComponent } from './cocteles/cocteles.component';
import { HomeComponent } from './home/home.component';
import { BusquedaComponent } from './busqueda/busqueda.component';
import { AcercadeComponent } from './acercade/acercade.component';
import { CrudComponent } from './crud/crud.component';
import { Pagina404Component } from './pagina404/pagina404.component';

const routes: Routes = [
  {path: '', redirectTo: '/home', pathMatch: 'full'},
  {path: 'home', component: HomeComponent},
  {path: 'cocteles', component: CoctelesComponent},
  {path: 'busqueda', component: BusquedaComponent},
  {path: 'acercade', component: AcercadeComponent},
  {path: 'crud', component: CrudComponent},
  {path: '**', component: Pagina404Component},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

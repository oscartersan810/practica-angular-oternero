import { Component, OnInit } from '@angular/core';
import { CrudService } from '../crud.service';
import { ICrud } from '../icrud';

@Component({
  selector: 'app-crud',
  standalone: false,
  templateUrl: './crud.component.html',
  styleUrls: ['./crud.component.css']
})
export class CrudComponent implements OnInit {
  productos: ICrud[] = [];
  producto: ICrud = { id: 0, descripcion: '', precio: 0 }; // Asegúrate de que los campos coincidan con tu interfaz ICrud
  idProducto: number = 0;

  constructor(private crudService: CrudService) { }

  ngOnInit(): void {
    this.obtenerTodos();
  }

  obtenerTodos(): void {
    this.crudService.obtenerTodos().subscribe({
      next: (datos) => {
        if (datos && datos.articulos) {
          this.productos = datos.articulos;
        } else {
          console.error('La respuesta no contiene la propiedad "articulos":', datos);
        }
        console.log(this.productos);
      },
      error: (error) => {
        console.error('Error al obtener los productos', error);
      }
    });
  }
}
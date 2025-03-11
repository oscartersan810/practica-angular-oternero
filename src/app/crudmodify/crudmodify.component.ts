import { Component, OnInit } from '@angular/core';
import { CrudService } from '../crud.service';
import { ICrud } from '../icrud';

@Component({
  selector: 'app-crudmodify',
  standalone: false,
  templateUrl: './crudmodify.component.html',
  styleUrls: ['./crudmodify.component.css']
})
export class CrudmodifyComponent implements OnInit {
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

  obtenerPorId(id: number): void {
    this.crudService.obtenerPorId(id).subscribe({
      next: (dato) => {
        this.producto = dato;
        console.log(this.producto);
      },
      error: (error) => {
        console.error('Error al obtener el producto', error);
      }
    });
  }

  insertar(): void {
    console.log('Datos a insertar:', this.producto);
    this.crudService.insertar(this.producto).subscribe({
      next: (dato) => {
        console.log('Producto insertado:', dato);
        this.obtenerTodos(); // Actualizar la lista de productos
      },
      error: (error) => {
        console.error('Error al insertar el producto', error);
      }
    });
  }

  actualizar(): void {
    console.log('Datos a actualizar:', this.producto);
    this.crudService.actualizar(this.producto.id, this.producto).subscribe({
      next: (dato) => {
        console.log('Producto actualizado:', dato);
        this.obtenerTodos(); // Actualizar la lista de productos
      },
      error: (error) => {
        console.error('Error al actualizar el producto', error);
      }
    });
  }

  eliminar(id: number): void {
    console.log('ID a eliminar:', id);
    this.crudService.eliminar(id).subscribe({
      next: () => {
        console.log('Producto eliminado');
        this.obtenerTodos(); // Actualizar la lista de productos
      },
      error: (error) => {
        console.error('Error al eliminar el producto', error);
      }
    });
  }

  guardar(): void {
    if (this.producto.id === 0) {
      this.insertar();
    } else {
      this.actualizar();
    }
  }
  
  cargarProducto(producto: ICrud): void {
    this.producto = { ...producto }; // Copia el objeto para evitar modificar el original en la lista
  }
  
}
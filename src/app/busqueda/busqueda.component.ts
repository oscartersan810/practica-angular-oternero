import { Component, OnInit } from '@angular/core';
import { SamsunggalaxyService } from '../samsunggalaxy.service';
import { IDispositivo } from '../idispositivo';

@Component({
  selector: 'app-busqueda',
  standalone: false,
  templateUrl: './busqueda.component.html',
  styleUrls: ['./busqueda.component.css']
})
export class BusquedaComponent implements OnInit {
  dispositivos: IDispositivo[] = [];
  searchName: string = ''; // Nombre del dispositivo
  searchYear: number | null = null; // Año

  constructor(private samsungService: SamsunggalaxyService) {}

  ngOnInit(): void {
    // Inicializar con todos los dispositivos (sin filtros)
    this.getDispositivos();
  }

  // Obtener dispositivos filtrados
  getDispositivos(): void {
    this.samsungService.obtenerDispositivos(this.searchName, this.searchYear).subscribe(
      (data) => {
        this.dispositivos = data;
      },
      (error) => {
        console.error('Error al obtener los dispositivos', error);
      }
    );
  }

  onSearchClick(): void {
    this.getDispositivos(); // Llamar a la API con los filtros
  }

  // Método para cambiar cualquier campo de búsqueda y actualizar los resultados
  onSearchChange(): void {
    this.getDispositivos(); // Llamar a la API con los filtros actualizados
  }
}

import { Component, OnInit } from '@angular/core';
import { SamsunggalaxyService } from '../samsunggalaxy.service';
import { IDispositivo } from '../idispositivo';

@Component({
  selector: 'app-samsunggalaxy',
  standalone: false,
  templateUrl: './samsunggalaxy.component.html',
  styleUrls: ['./samsunggalaxy.component.css']
})
export class SamsunggalaxyComponent implements OnInit {
  dispositivos: IDispositivo[] = [];
  currentPage: number = 1;
  totalPages: number = 1;
  limit: number = 10;

  constructor(private samsungService: SamsunggalaxyService) {}

  ngOnInit(): void {
    this.getDispositivos();
  }

  getDispositivos(): void {
    this.samsungService.obtenerTodos(this.currentPage, this.limit).subscribe({
      next: (datos) => {
        this.dispositivos = datos;
        console.log(this.dispositivos);
        // Aquí puedes actualizar totalPages basado en la respuesta de la API si es necesario
      },
      error: (error) => {
        console.error('Error al obtener los dispositivos', error);
      }
    });
  }

  nextPage(): void {
    if (this.currentPage < this.totalPages) {
      this.currentPage++;
      this.getDispositivos();
    }
  }

  prevPage(): void {
    if (this.currentPage > 1) {
      this.currentPage--;
      this.getDispositivos();
    }
  }
}



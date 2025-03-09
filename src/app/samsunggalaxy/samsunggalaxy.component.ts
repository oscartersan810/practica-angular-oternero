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
  dispositivos: any[] = [];

  constructor(private samsungService: SamsunggalaxyService) {}

  ngOnInit(): void {
    this.samsungService.obtenerTodos().subscribe({
      next: (datos) => {
        this.dispositivos = datos;
        console.log(this.dispositivos);
      },
      error: (error) => {
        console.error('Error al obtener los dispositivos', error);
      }
    });
  }
}



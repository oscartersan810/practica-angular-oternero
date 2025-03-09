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

  constructor(private samsungService: SamsunggalaxyService) {}

  ngOnInit(): void {
    this.samsungService.obtenerTodos().subscribe(
      (datos) => {
        this.dispositivos = datos;
        console.log(this.dispositivos);
      },
      (error) => {
        console.error('Error al obtener los dispositivos', error);
      }
    );
  }
}



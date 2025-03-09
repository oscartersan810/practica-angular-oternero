import { Component } from '@angular/core';

@Component({
  selector: 'app-acercade',
  standalone: false,
  templateUrl: './acercade.component.html',
  styleUrl: './acercade.component.css'
})
export class AcercadeComponent {
  acercaDeInfo = {
    nombre: 'Proyecto Dispositivos Samsung Galaxy',
    descripcion: 'Este proyecto tiene como objetivo mostrar dispositivos Samsung Galaxy con sus respectivas características, como modelo, versión de Android, año, etc.',
    version: '1.0.0',
    api: 'API Local',
    desarrollador: 'Oscar Ternero Sánchez 2ºDAW',
  };
}

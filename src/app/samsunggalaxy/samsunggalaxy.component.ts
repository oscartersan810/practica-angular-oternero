import { Component, OnInit } from '@angular/core';
import { SamsunggalaxyService } from '../samsunggalaxy.service';

@Component({
  selector: 'app-samsunggalaxy',
  standalone: false,
  templateUrl: './samsunggalaxy.component.html',
  styleUrl: './samsunggalaxy.component.css'
})
export class SamsunggalaxyComponent implements OnInit {
  dispositivos: any[] = [];

  constructor(private samsunggalaxyService: SamsunggalaxyService) { }

  ngOnInit(): void {
    this.samsunggalaxyService.obtenerTodos().subscribe(
      (datos) => {
        this.dispositivos = datos;
        console.log(this.dispositivos);
      }
    );
  }
}
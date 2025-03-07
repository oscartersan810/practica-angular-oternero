import { Component, OnInit } from '@angular/core';
import { ICocteles } from '../i-cocteles';
import { CoctelesService } from '../cocteles.service';

@Component({
  selector: 'app-cocteles',
  standalone: false,
  templateUrl: './cocteles.component.html',
  styleUrl: './cocteles.component.css'
})
export class CoctelesComponent implements OnInit{
  cocteles!:ICocteles[];

  constructor(private coctelesService:CoctelesService) { }

  ngOnInit(): void {
      this.coctelesService.obtenerCocteles().subscribe(
        (datos)=>{
          this.cocteles = datos;
          console.log(this.cocteles);
        }
      )
  }
}

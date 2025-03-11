import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'format',
  standalone: false
})
export class FormatPipe implements PipeTransform {

  transform(value: string, tipo: string): string {
    if (!value) return '';

    switch (tipo) {
      case 'mayusculas':
        return value.toUpperCase();
      case 'minusculas':
        return value.toLowerCase();
      case 'capitalizar':
        return value.replace(/\b\w/g, letra => letra.toUpperCase());
      default:
        return value;
    }
  }

}

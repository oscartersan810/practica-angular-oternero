import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CrudmodifyComponent } from './crudmodify.component';

describe('CrudmodifyComponent', () => {
  let component: CrudmodifyComponent;
  let fixture: ComponentFixture<CrudmodifyComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CrudmodifyComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CrudmodifyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

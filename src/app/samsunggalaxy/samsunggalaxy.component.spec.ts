import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SamsunggalaxyComponent } from './samsunggalaxy.component';

describe('SamsunggalaxyComponent', () => {
  let component: SamsunggalaxyComponent;
  let fixture: ComponentFixture<SamsunggalaxyComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [SamsunggalaxyComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SamsunggalaxyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});

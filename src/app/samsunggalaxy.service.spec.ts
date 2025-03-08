import { TestBed } from '@angular/core/testing';

import { SamsunggalaxyService } from './samsunggalaxy.service';

describe('SamsunggalaxyService', () => {
  let service: SamsunggalaxyService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SamsunggalaxyService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});

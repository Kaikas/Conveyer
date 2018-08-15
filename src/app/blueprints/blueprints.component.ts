import { Component, OnInit } from '@angular/core';
import { DataService } from '../data.service';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-blueprints',
  templateUrl: './blueprints.component.html',
  styleUrls: ['./blueprints.component.scss']
})
export class BlueprintsComponent implements OnInit {

  blueprints$: Object;

  constructor(private data: DataService) { }

  ngOnInit() {
    this.data.getBlueprints().subscribe(
     data => this.blueprints$ = data 
    )
  }

}

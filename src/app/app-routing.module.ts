import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BlueprintsComponent} from './blueprints/blueprints.component';

const routes: Routes = [
  {
    path: '',
    component: BlueprintsComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

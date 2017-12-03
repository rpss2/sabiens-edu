import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterModule }   from '@angular/router';

import { AppComponent } from './app.component';
import { EstStudentComponent } from './estStudent.component';
import { EstClassComponent } from './estClass.component';
import { EstatisticasService } from './estatisticas.service';
import {EstSchoolComponent} from './estSchool.component';

@NgModule({
    declarations: [
        AppComponent,
        EstStudentComponent,
        EstClassComponent,
        EstSchoolComponent
    ],
    imports: [
        BrowserModule,
        FormsModule,
        RouterModule.forRoot([
            {
                path: 'estStudent',
                component: EstStudentComponent
            },
            {
                path: 'estClass',
                component: EstClassComponent
            },
            {
                path: 'estSchool',
                component: EstSchoolComponent
            }
        ])
    ],
    providers: [EstatisticasService],
    bootstrap: [AppComponent]
})
export class AppModule { }
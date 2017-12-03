import { Component, OnInit } from '@angular/core';

import { EstatisticasService } from "./estatisticas.service";
import { Formulario } from './formulario';
import { Escola } from './escola';

@Component({
    selector: 'app-root',
    templateUrl: './estSchool.component.html',
    styleUrls: ['./estSchool.component.css']
})

export class EstSchoolComponent implements OnInit {
    constructor(private estatisticasService: EstatisticasService) {}

    formularios : Formulario[] = [];
    escolas : Escola[];
    escola: string;
    sistema: string;
    noQuest : boolean = false;
    noSchool : boolean = false;

    getForms(e: string, s: string) : void {
        this.isSchool(e);
        this.formularios = [];
        if(!this.noSchool) {
            var form = this.estatisticasService.getForms(s);
            if (form) {
                this.formularios.push(form);
            } else {
                this.noQuest = true;
            }
        } else {
            this.noSchool = true;
        }
    }

    isSchool(e: string) : void {
        var esc = this.estatisticasService.getSchool(e);
        this.escolas = [];
        if(esc) {
            this.escolas.push(esc);
        } else {
            this.noSchool = true;
        }
    }

    gerarEstatisticas() : void {
        if(this.formularios.length > 0) {}
    }

    onMove(): void {
        this.noQuest = false;
        this.noSchool = false;
    }

    ngOnInit(): void {
        this.estatisticasService.addDados();
    }
}
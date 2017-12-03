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
    qtd : number;

    getForms(e: string, s: string) : void {
        this.isSchool(e);
        this.formularios = [];
        if(!this.noSchool) {
            var form = this.estatisticasService.getForms(s);
            if (form) {
                this.formularios.push(form);
                this.noQuest = false;
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
            this.noSchool = false;
        } else {
            this.noSchool = true;
        }
    }

    gerarEstatisticas(escola : string, sistema : string) : void {
        var school;
        this.qtd = 0;
        if(this.formularios.length > 0) {
            school = this.escolas[0];
            var turmas = school.turmas;
            for(let k in turmas) {
                var turma = turmas[k].nome;
                this.qtd += this.estatisticasService.getAlunos(escola, turma, sistema).length;
            }
        }
    }

    ngOnInit(): void {
        this.estatisticasService.addDados();
    }
}
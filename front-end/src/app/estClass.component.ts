import { Component, OnInit } from '@angular/core';
import { NgModule } from '@angular/core';

import { EstatisticasService } from './estatisticas.service';
import { Aluno } from './aluno';
import { Escola } from './escola';
import { Turma } from './turma';
import { Sistemas } from './sistemas';
import { FeedbackDeTurma } from './feedbackDeTurma';


@Component({
    selector: 'app-root',
    templateUrl: './estClass.component.html',
    styleUrls: ['./estClass.component.css']
})

export class EstClassComponent implements OnInit {
    constructor(private estatisticasService: EstatisticasService) {}

    alunos: Aluno[] = [];
    escola: string;
    turma: string;
    sistema: string;
    noStudent : boolean = false;

    getAlunos(e: string, t: string, s: string): void {
        this.alunos = [];
        var alunos = this.estatisticasService.getAlunos(e, t, s);
        if(alunos) {
            this.alunos = alunos;
        } else {
            this.noStudent = true;
        }
    }

    gerarEstatisticas() : void {
        if(this.alunos.length > 0) {}
    }

    onMove(): void {
        this.noStudent = false;
    }

    ngOnInit(): void {
        this.estatisticasService.addDados();
    }
}
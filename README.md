# 🏥 VIDA & SAÚDE — BANCO DE DADOS

### Sistema de Gestão Hospitalar

**Instituição:** Senai Suiço-Brasileira
**Professor(a):** Atila  
**Aluno(a):** Maria Gabriela  
**Disciplina:** Banco de Dados  
**Turma:** SEDUC DEST 2  
**Data:** 04/11/2026

---

## 📌 Apresentação do Projeto

O projeto **Vida & Saúde** tem como objetivo desenvolver um banco de dados relacional para organizar e gerenciar as informações de um hospital, centralizando os dados de pacientes, médicos, quartos, internações, consultas e prescrições.

A proposta busca substituir controles feitos em planilhas isoladas e registros em papel por uma estrutura organizada, facilitando o acesso às informações, o acompanhamento dos atendimentos e o controle das atividades hospitalares.

## 🎯 Escopo Operacional

O banco de dados foi desenvolvido para atender às seguintes operações:

- **Cadastro de Pacientes:** armazenamento dos dados pessoais, CPF, data de nascimento, telefone e convênio.
- **Cadastro de Médicos:** registro dos profissionais, CRM e especialidades médicas.
- **Controle de Quartos:** organização dos quartos por número, andar, tipo e status de ocupação.
- **Gerenciamento de Internações:** registro do paciente internado, quarto utilizado, data de entrada, data de saída e valor da diária.
- **Controle de Consultas:** armazenamento dos dados do paciente, médico responsável, data, status e valor da consulta.
- **Registro de Prescrições:** controle dos medicamentos receitados, dosagens e quantidades prescritas em cada consulta.

## 🗂️ Estrutura do Banco de Dados

O banco de dados `hospital_db` é composto por **6 tabelas**, conectadas por chaves primárias (PK) e chaves estrangeiras (FK).

| Tabela | Descrição |
|---|---|
| `pacientes` | Armazena os dados dos pacientes e seus convênios. |
| `medicos` | Armazena os dados dos médicos e suas especialidades. |
| `quartos` | Registra os quartos, seus tipos, andares e status. |
| `internacoes` | Registra as internações dos pacientes e os quartos utilizados. |
| `consultas` | Armazena as consultas, relacionando pacientes e médicos. |
| `prescricoes` | Registra os medicamentos prescritos durante as consultas. |

### 🔗 Relacionamentos entre as tabelas

- **Pacientes → Internações:** 1:N — um paciente pode possuir várias internações.
- **Quartos → Internações:** 1:N — um quarto pode estar relacionado a várias internações ao longo do tempo.
- **Pacientes → Consultas:** 1:N — um paciente pode realizar várias consultas.
- **Médicos → Consultas:** 1:N — um médico pode atender várias consultas.
- **Consultas → Prescrições:** 1:N — uma consulta pode possuir várias prescrições.

## 🧾 Consultas SQL (Queries)

O projeto prevê consultas para responder às necessidades de diferentes setores do hospital, utilizando relacionamentos entre tabelas e funções SQL.

As consultas solicitadas abrangem:

1. Relatório de pacientes, médicos e medicamentos prescritos.
2. Histórico de internações com dados dos pacientes e quartos.
3. Relação de pacientes, convênios e médicos que os atenderam.
4. Listagem de prescrições com médico responsável e paciente.
5. Cruzamento de pacientes que tiveram internações e consultas.
6. Consultas registradas, ordenadas das mais recentes para as mais antigas.
7. Listagem de internações ordenadas pelo valor da diária.
8. Cálculo do valor médio das consultas.
9. Cálculo do total arrecadado com consultas.
10. Consultas realizadas por pacientes com sobrenome Silva.
11. Consultas feitas por médicos de especialidades relacionadas à Cardiologia.
12. Internações ocorridas no primeiro semestre de 2026.
13. Total gasto em consultas por pacientes com convênio que contenha “Unimed”.
14. Custo das diárias agrupado por andar para pacientes com sobrenome Oliveira.
15. Faturamento das consultas agrupado por especialidades que contenham “Cirurgia”.

**Projeto acadêmico — Sistema de Gestão Hospitalar Vida & Saúde**  
*Banco de Dados | MySQL*

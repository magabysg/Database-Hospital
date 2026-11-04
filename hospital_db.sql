create database if not exists hospital_db;
use hospital_db;

create table if not exists pacientes(
	id_paciente int auto_increment primary key,
    nome_paciente varchar(150) not null,
    cpf varchar(14) not null,
    data_nascimento date not null,
    telefone_paciente varchar(15),
    convenio enum('Unimed', 'Bradesco Saúde', 'Particular', 'Amil', 'SulAmérica', 'Unimed Pleno') not null);
    
create table if not exists medicos(
	id_medico int auto_increment primary key,
    nome_medico varchar(150) not null, 
    crm varchar(12) not null,
    especialidade enum('Cardiologia', 'Pediatria', 'Cardiologia Pediatrica', 'Cirurgia Geral', 'Ortopedia', 
    'Cirurgia Vascular', 'Neurologia', 'Ginecologia', 'Dermatologia', 'Cirurgia Plastica') not null);
    
create table if not exists quartos(
	id_quarto int auto_increment primary key,
    numero_quarto int not null,
    andar int not null, 
    tipo_quarto enum('UTI', 'Apartamento', 'Enfermaria', 'Suíte VIP') not null, 
    status_quarto enum('Ocupado','Livre') not null);
    
create table if not exists internacoes(
	id_internacao int auto_increment primary key,
	id_paciente int not null,
    id_quarto int not null,
    data_entrada datetime not null default current_timestamp,
    data_saida datetime,
    valor_diaria decimal(10,2) not null,
    
    constraint fk_internacao_paciente foreign key (id_paciente) references pacientes (id_paciente),
    constraint fk_internacao_quarto foreign key (id_quarto) references quartos (id_quarto));
    
create table if not exists consultas(
	id_consulta int auto_increment primary key,
    id_paciente int not null,
    id_medico int not null,
    data_consulta datetime not null,
    status_consulta enum('Realizada','Cancelada') not null,
    valor_consulta decimal(10,2) not null,
    
    constraint fk_consultas_paciente foreign key (id_paciente) references pacientes (id_paciente),
    constraint fk_consultas_medico foreign key (id_medico) references medicos (id_medico));

create table if not exists prescricoes(
	id_prescricao int auto_increment primary key,
	id_consulta int not null,
    medicamento varchar(150) not null,
    dosagem varchar(50) not null,
    quantidade int not null,
    
     constraint fk_prescricoess_consulta foreign key (id_consulta) references consultas (id_consulta));    
    
    
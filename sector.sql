SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `sector`;
create table sector (
  id bigint not null primary key auto_increment,
  name varchar(255) not null
) ENGINE=InnoDB;

INSERT INTO `sector` (`name`) VALUES 
('Faculdade de Letras'),
('CongregaÃ§Ã£o'),
('AssemblÃ©ia'),
('AdministraÃ§Ã£o'),
('Diretoria'),
('Diretoria'),
('Vice-Diretor'),
('Conselho Consultivo'),
('ComissÃ£o de OrÃ§amentos e Contas'),
('Assessoria de InformaÃ§Ã£o'),
('Apoio TÃ©cnico'),
('SuperintendÃªncia Administrativa'),
('Setores Administrativos'),
('Almoxarifado'),
('Biblioteca'),
('Compras'),
('Contabilidade'),
('InformÃ¡tica'),
('Secretaria Geral'),
('ServiÃ§os Gerais'),
('PatrimÃ´nio'),
('Coordenadorias'),
('Recursos Humanos'),
('SeÃ§Ã£o de Pessoal'),
('Ensino'),
('Colegiados'),
('COLGRAD'),
('Secretaria do Colegiado'),
('SeÃ§Ã£o de Ensino'),
('POSLIN'),
('Secretaria do POSLIN'),
('POSLIT'),
('Secretaria do POSLIT'),
('PROFLETRAS'),
('Secretaria do PROFLETRAS'),
('ExtensÃ£o'),
('Cenex'),
('AcadÃªmicos'),
('NÃºcleos'),
('CECLA'),
('CELIA'),
('CESP'),
('CPM'),
('FULIA'),
('GruMEL'),
('IntermÃ­dia'),
('LIBRA'),
('LIPSI'),
('LITER'),
('LITERATERRAS'),
('MESCLA'),
('NAD'),
('NEAEM'),
('NEAM'),
('NEC'),
('NEF'),
('NEGUE'),
('NEIA'),
('NEJ'),
('NELC'),
('NET'),
('NETII'),
('NELAM'),
('NELAP'),
('NELU'),
('NLC'),
('NPLH'),
('NUPES'),
('Nupevar'),
('NWB'),
('TransVerso'),
('LaboratÃ³rios'),
('Lab. de Fonologia'),
('Lab-Lintec'),
('LABFON - Lab. de FonÃ©tica'),
('LABED'),
('LEEL'),
('LETRA'),
('SEMIOTEC'),
('Cursos de EspecializaÃ§Ã£o'),
('ELMC'),
('CEI'),
('CEGRAE'),
('PROFLEITURA'),
('OrgÃ£o Complementar'),
('CELC'),
('AEM'),
('gab3011'),
('gab3027'),
('gab3031'),
('gab3033'),
('gab3035'),
('gab3037'),
('gab3041'),
('gab3043'),
('gab3047'),
('gab3051'),
('gab3059'),
('gab3063'),
('gab3065'),
('gab3067'),
('gab3069'),
('gab3071'),
('gab3077'),
('gab3079'),
('gab3083'),
('gab3085'),
('gab3087'),
('gab3089'),
('gab3091'),
('gab3093'),
('gab3095'),
('gab3097'),
('gab3099'),
('gab3101'),
('gab3103'),
('gab3104'),
('gab4005'),
('gab4010'),
('gab4012'),
('gab4014'),
('gab4016'),
('gab4018'),
('gab4020'),
('gab4022'),
('gab4024'),
('gab4026'),
('gab4028'),
('gab4030'),
('gab4032'),
('gab4034'),
('gab4036'),
('gab4038'),
('gab4040'),
('gab4042'),
('gab4044'),
('gab4046'),
('gab4085'),
('gab4087'),
('gab4089'),
('gab4091'),
('gab4093'),
('gab4095'),
('gab4097'),
('gab4099'),
('gab4101'),
('gab4103'),
('gab4105'),
('gab4107'),
('gab4109'),
('gab4111'),
('gab4113'),
('gab4115'),
('gab4117'),
('gab4121'),
('gab4195'),
('sal1007'),
('sal2000'),
('sal2002'),
('sal2007'),
('sal3000'),
('sal3001'),
('sal3002'),
('sal3003'),
('sal3005'),
('sal3007'),
('sal3009'),
('sal3017'),
('sal3019'),
('sal3053'),
('sal3055A'),
('sal3057'),
('sal3059'),
('sal3061'),
('sal3063'),
('sal3065'),
('sal4004'),
('sal4006'),
('sal4011'),
('sal4063'),
('sal4067'),
('sal4069'),
('sal4071'),
('sal4073'),
('sal4079'),
('Sala dos Professores'),
('Biblioteca'),
('CÃ¢mara de Pesquisa'),
('Centro de Estudos LiterÃ¡rios e Culturais'),
('ConservatÃ³rio da UFMG');
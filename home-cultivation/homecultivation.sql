-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 05-Set-2018 às 06:59
-- Versão do servidor: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homecultivation`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contatos`
--

DROP TABLE IF EXISTS `tb_contatos`;
CREATE TABLE IF NOT EXISTS `tb_contatos` (
  `ID_Contato` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Mensagem` text,
  PRIMARY KEY (`ID_Contato`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_contatos`
--

INSERT INTO `tb_contatos` (`ID_Contato`, `Nome`, `Email`, `Mensagem`) VALUES
(1, 'Natan', 'natan_mmendes@hotmail.com', 'teste'),
(2, 'Natan', 'natan_mmendes@hotmail.com', 'teste'),
(3, 'test', 'test', 'tste'),
(4, 'test', 'test', 'tste'),
(5, 'Ronalfo', 'ronaldo@ronaldo', 'Teste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_dicas`
--

DROP TABLE IF EXISTS `tb_dicas`;
CREATE TABLE IF NOT EXISTS `tb_dicas` (
  `ID_Dica` int(11) NOT NULL AUTO_INCREMENT,
  `Mensagem` varchar(500) NOT NULL,
  `ID_Planta` int(11) DEFAULT NULL,
  `Observacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Dica`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_dicas`
--

INSERT INTO `tb_dicas` (`ID_Dica`, `Mensagem`, `ID_Planta`, `Observacao`) VALUES
(1, 'Sementes que crescem sem muito auxílio externo: ervilha, milho, feijão;', NULL, NULL),
(2, 'Você pode cultivar as suas berinjelas em vasos ou canteiros.Se optar por utilizar vasos, escolha um de no mínimo 30cm de profundidade. ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_plantas`
--

DROP TABLE IF EXISTS `tb_plantas`;
CREATE TABLE IF NOT EXISTS `tb_plantas` (
  `ID_Planta` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Tipo` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Descricao` varchar(3000) DEFAULT NULL,
  `Dificuldade` varchar(20) DEFAULT NULL,
  `Solo` varchar(3000) DEFAULT NULL,
  `Clima` varchar(3000) DEFAULT NULL,
  `Area_Minima` varchar(3000) DEFAULT NULL,
  `Colheita` varchar(3000) DEFAULT NULL,
  `Custo` varchar(3000) DEFAULT NULL,
  `Inicio` varchar(3000) DEFAULT NULL,
  `Ambiente` varchar(3000) DEFAULT NULL,
  `Plantio` varchar(3000) DEFAULT NULL,
  `Transplante` varchar(3000) DEFAULT NULL,
  `Tutoramento` varchar(3000) DEFAULT NULL,
  `Espacamento` varchar(3000) DEFAULT NULL,
  `Producao` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`ID_Planta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_plantas`
--

INSERT INTO `tb_plantas` (`ID_Planta`, `ID_Tipo`, `Nome`, `Descricao`, `Dificuldade`, `Solo`, `Clima`, `Area_Minima`, `Colheita`, `Custo`, `Inicio`, `Ambiente`, `Plantio`, `Transplante`, `Tutoramento`, `Espacamento`, `Producao`) VALUES
(1, 1, 'Tomate', 'Não há nada mais agradável que o suave perfume dos tomates que amadurecem na janela de uma cozinha. É uma das espécies mais consumidas no Brasil.', 'Médio', 'bem drenado, profundo e areno-argiloso', 'Não há nada mais agradável que o suave perfume dos tomates que amadurecem na janela de uma cozinha. É uma das espécies mais consumidas no Brasil.', 'canteiros de hortas e vasos', 'entre 90 e 110 dias a partir do transplante', 'de R$ 2 a R$ 3 o pé de tomate, incluindo todos os insumos', 'Há diversas variedades de tomateiro, com coloração, tamanhos e formatos diferentes. O produtor pode escolher entre o salada longa vida – o mais popular atualmente; os tomates redondo-achatados, de pele vermelha e frutos firmes; o graúdo tomate-caqui, que tem polpa grossa e um pouco ácida; e os pequenos e adocicados cereja e uva. Para consumo in natura, são indicadas as cultivares de tomate do tipo santa cruz, de formato redondo, e do tipo italiano, que é mais alongado e de sabor adocicado. Ambos são ótimos para fazer molhos.', 'As temperaturas mais indicadas para o cultivo do tomateiro são as noturnas moderadas, entre 15 e 19 ºC, e ,durante o dia, as que se mantêm na faixa de 19 a 24ºC. No entanto, a planta também tem bom desenvolvimento em áreas de clima tropical de altitude – acima de 800 metros –, subtropical e temperado.', 'As temperaturas mais indicadas para o cultivo do tomateiro são as noturnas moderadas, entre 15 e 19 ºC, e ,durante o dia, as que se mantêm na faixa de 19 a 24ºC. No entanto, a planta também tem bom desenvolvimento em áreas de clima tropical de altitude – acima de 800 metros –, subtropical e temperado.', 'Assim que as mudas contarem com quatro ou cinco folhas ou atingirem de sete a dez centímetros de altura, estão prontas para o transplante. Na escolha do local definitivo, dê preferência a ambientes ensolarados, para que o tomateiro não fique fino e quebradiço. A cultura se dá bem em solos areno-argilosos, permeáveis e bem drenados. Também devem ser profundos, soltos e pouco ácidos, com pH entre 5,5 e 6,5.', 'O tomateiro de porte indeterminado precisa ser tutorado para assegurar seu desenvolvimento. Use varas de bambu ou de madeira na medida de dois metros de altura. Ao amarrar os suportes em cada planta, não aperte muito as hastes. Variedades do tipo “meia-estaca” podem ser conduzidas usando estruturas mais simples como os fitilhos, enquanto para processamento industrial as indicadas são as rasteiras, em contato direto com o solo ou sob cobertura vegetal ou plástica.', 'Entre plantas, a recomendação é de 50 a 60 centímetros e, entre os sulcos, de um a 1,20 metro. Uma dica para um crescimento mais vigoroso do tomateiro é combinar o cultivo com ervas aromáticas.', 'Entre plantas, a recomendação é de 50 a 60 centímetros e, entre os sulcos, de um a 1,20 metro. Uma dica para um crescimento mais vigoroso do tomateiro é combinar o cultivo com ervas aromáticas.'),
(2, 2, 'Hortelã', 'Uma das plantas mais versáteis para o consumo é a hortelã. Erva aromática e de sabor refrescante, serve para temperar alimentos, como quibes, carnes e saladas; é fonte de óleo essencial; serve para elaborar geleias, doces, chás, sucos, coquetéis e drinques (bebidas geladas com álcool ); ', 'Fácil', 'bem adubado, com matéria orgânica e boa drenagem', 'prefere ameno, mas é resistente a temperaturas mais altas e baixas', 'pode ser plantada em vasos e jardineiras', ' após 40 dias do plantio', 'popular, a planta é facilmente encontrada para propagação', 'Popular, a hortelã é facilmente encontrada para ser propagada. Entre as centenas de espécies existentes, as mais comuns são a Mentha spicata, conhecida como hortelã das hortas, e a Mentha crispa. A escolha também pode ser de acordo com a finalidade do cultivo. A hortelã-pimenta, de sabor mais acentuado, é indicada para chá; mais cítrica e refrescante, a hortelã-limão é boa para bebida gelada; mais sutil, a hortelã-maçã vai bem em saladas; e a hortelã-abacaxi, por ser uma das menos invasivas, pode crescer ao lado de outras plantas.', 'A hortelã não exige muito espaço, mas precisa ser instalada em local com bastante incidência de luz. Posicione o plantio para o leste. A erva tolera diferentes condições climáticas, exceto o congelamento total do solo. Espécies como a hortelã-japonesa e a regional, que se destacam no Estado do Amazonas, suportam temperaturas altas. A preferência, no entanto, é pelo clima ameno e temperado. Recomenda-se proteger a área ', 'Em canteiros de hortas com solo fértil e rico em matéria orgânica ou diretamente no local definitivo. Se em vasos, certifique-se de que tenham furos de drenagem no fundo.', 'É vegetativa por meio de pedaços do caule (estacas dos ramos) acomodados em bandejas contendo substrato orgânico, que pode ser comprado em casas de produtos agropecuários. Uma alternativa é colocar os ramos recém-cortados em um copo com água para o surgimento de novas raízes. Indica-se realizar o procedimento durante as primeiras semanas da primavera, o início da estação das chuvas.', 'É importante fazer as regas no primeiro horário da manhã e/ou no fim do dia. Repita mais vezes durante o dia quando a temperatura estiver quente. O solo deve ser mantido sempre úmido e alcançando as raízes, sobretudo ao longo do ciclo de crescimento das plantas. Há espécies que são cultivadas em solo encharcado, em beira de rios, ribeirões e lagos.', ' As medidas indicadas são 0,4 metro entre fileiras e 0,2 metro entre plantas.', ' Inicia-se cerca de 40 dias após a realização do plantio, quando, em geral, a hortelã apresenta-se bem desenvolvida e está para florescer, período em que o sabor e o aroma são mais intensos e o óleo essencial atingiu seu máximo de concentração. Com uma tesoura afiada, faça um corte a 5 centímetros do nível do solo, descartando ramos velhos e folhas escuras. Há possibilidade de colher todas as hastes três vezes por ano, por quatro a seis anos sem necessidade de replantio.'),
(3, 3, 'Gergilim', 'om suas características de ciclo curto, com plantio e colheita ocorrendo entre 90 e 100 dias, pouco exigente em água e muito bem adaptada às condições climáticas daqui, a oleaginosa é uma excelente opção de cultivo para os brasileiros, inclusive para proprietários de pequenas e médias propriedades agrícolas.', 'Fácil', 'profundo, bem drenado e fértil', 'temperatura ideal entre 25 ºC e 30 ºC', 'sistema de produção em pequena escala', 'em 90 dias, incluindo o período de plantio\r\nCusto: R$ 8 é o preço do quilo da semente comercializado pela Embrapa Algodão', ' - ', 'Boa produtividade se consegue, principalmente, com uso de cultivar correta. Por isso, a escolha da variedade é importante, sendo que as de cor branca e creme são as de maior valor comercial. Embora com demanda mais rara entre os brasileiros, lá fora a semente preta tem procura em expansão.', 'Com ampla adaptação ao clima quente, o gergelim também pode ser cultivado em regiões úmidas tropicais e subtropicais. Temperaturas entre 25 ºC e 30 ºC são as mais adequadas para o desenvolvimento da planta, favorecendo o crescimento vegetativo e a maturação dos frutos. Embora a umidade do solo beneficie a floração e a frutificação, água em excesso pode provocar queda das flores. Na seca, o sistema radicular pivotante e as raízes secundárias, que chegam a alcançar 1 metro de profundidade, acessam a água armazenada no subsolo.', 'Recomenda-se sistema de produção em pequena escala, que utiliza mão de obra familiar, e, em geral, consorciado com milho, feijão ou caupi. O gergelim tem bom desenvolvimento em diversos tipos de solo, porém, evite os muito argilosos. Os mais indicados são os profundos, bem drenados e férteis. Dê preferência para solos com pH próximo a 7.', ' - ', 'Em geral, são necessários 50-14-60 quilos por hectare de N-P2O5-K20 para produzir 1.000 quilos de sementes. A adubação verde e a adição de adubos orgânicos são tidas como alternativa eficiente e barata para melhorar a qualidade do solo. Com a acidez dos solos daqui, o uso de calagem, por meio de cálcio e carbonato, é importante para a neutralização do local de cultivo. Na área em que o gergelim será produzido pela primeira vez, incorpore calcário dolomítico dois meses antes da semeadura.', 'Indica-se de 0,80 metro a 1 metro entre fileiras e 0,20 metro entre plantas para plantio de cultivares ramificadas. Para as não ramificadas, usa-se de 0,60 metro a 0,70 metro entre fileiras e 0,10 metro entre plantas. Faça a semeadura em sulcos rasos contínuos ou em covas rasas a uma profundidade de 1 a 2 centímetros. A quantidade de sementes varia de 1,5 a 3,5 quilos por hectare. Existem semeadoras simples para pequenos plantios.', 'A colheita deve ser programada para o período de estiagem e em sincronia com o ciclo cultivar. Inicie assim que as hastes, folhas e frutos atinjam o amarelecimento completo e antes que os frutos estejam totalmente abertos. Corte a planta a uma distância de 20 centímetros do solo e amarre-a com barbante em feixes pequenos de 30 centímetros de diâmetro. Deve ficar secando sob o sol durante dez dias, para então separar as sementes dos frutos batendo as hastes secas sobre uma lona ou pano de algodão. Para a limpeza, use peneira de malha grossa para passar o gergelim e reter os resíduos e uma malha fina para a remoção de materiais pequenos.'),
(4, 4, 'Estrelícia', 'De longa durabilidade, a flor exótica tem boa demanda para compor arranjos de decoração, mas também é muito utilizada para embelezar jardins', 'Médio', 'profundo, levemente ácido e rico em matéria orgânica', 'prefere temperaturas entre 22 ºC e 25 ºC', 'pode ser plantada em vaso', 'Inicia-se assim que abrir a primeira flor', ' - ', 'A principal variedade comercial de estrelícia para flor de corte é a Strelitzia reginae. Para uso como planta de jardim, as opções por aqui são as de porte alto S. nicolai, S. angusta e o resultado do cruzamento entre as duas, a S. Kewensis.', 'A estrelícia desenvolve-se bem em regiões com clima subtropical. Exige insolação plena pelo menos durante metade do dia. Sombreamento, somente se for leve, não devendo passar de 30%. Gosta de umidade relativa do ar a 70% e tem tolerância a geadas não intensas.', 'Deve ser em solo profundo, ligeiramente ácido e rico em matéria orgânica e com bom suprimento de água, mas não encharcado. Prepare bem a terra, eliminando os torrões. Evite áreas com declividade, pois a planta não faz uma boa cobertura de solo.', 'Indicada para manutenção do solo úmido, mas sem que ocorra encharcamento. Durante o verão, realize duas irrigações por semana. O uso de cobertura morta ajuda a reduzir a evaporação de água e mantém a umidade e a temperatura do solo.', 'Quando a primeira flor abrir, a estrelícia chegou ao ponto de colheita. Por ser quebradiça, é importante ter cuidado no manuseio. As hastes florais são colhidas com tesoura de poda ou faca limpa e afiada. Em média, a cada dois dias surge uma nova flor. Pode ser armazenada em câmara fria, com temperatura em torno de 10 ºC, por até dez dias.', 'São indicadas medidas de 1 metro entre plantas e 2 metros entre linhas. Nas covas, coloque 10 litros de esterco bem curtido. Como alternativa, recomenda-se a adição de 300 gramas de fertilizante com formulação 4:14:8 por cova no início da primavera e outra no verão. Também é opção o uso mensal de fertilizantes nitrogenados (sulfato de amônia) em porções de 10 gramas por touceira. As doses ou a frequência de adubação, contudo, devem ser feitas por recomendação técnica segundo a análise de solo.', 'Quando a primeira flor abrir, a estrelícia chegou ao ponto de colheita. Por ser quebradiça, é importante ter cuidado no manuseio. As hastes florais são colhidas com tesoura de poda ou faca limpa e afiada. Em média, a cada dois dias surge uma nova flor. Pode ser armazenada em câmara fria, com temperatura em torno de 10 ºC, por até dez dias.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_projetos`
--

DROP TABLE IF EXISTS `tb_projetos`;
CREATE TABLE IF NOT EXISTS `tb_projetos` (
  `ID_Projeto` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(200) DEFAULT NULL,
  `Linha_Fina` varchar(200) DEFAULT NULL,
  `Publicado` char(1) DEFAULT NULL,
  `Autor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Projeto`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_projetos`
--

INSERT INTO `tb_projetos` (`ID_Projeto`, `Titulo`, `Linha_Fina`, `Publicado`, `Autor`) VALUES
(1, 'Como Plantar Feijão', 'Passo a passo de como plantar feijão de forma completamente orgânica', 'P', 'Natan Mendes'),
(2, 'Plantando Tomate ', 'Veja como ter uma mini horte de tomates', 'P', 'Natan Mendes'),
(3, 'Canteiro de Ervas', 'Tenha seu cultivo de ervas!', 'P', 'Aluno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_projetos_imagens`
--

DROP TABLE IF EXISTS `tb_projetos_imagens`;
CREATE TABLE IF NOT EXISTS `tb_projetos_imagens` (
  `ID_Imagem` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Projeto` int(11) DEFAULT NULL,
  `Titulo` varchar(50) DEFAULT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `Local` varchar(100) DEFAULT NULL,
  `Caminho_Image` varchar(1000) NOT NULL,
  PRIMARY KEY (`ID_Imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_projetos_imagens`
--

INSERT INTO `tb_projetos_imagens` (`ID_Imagem`, `ID_Projeto`, `Titulo`, `Descricao`, `Local`, `Caminho_Image`) VALUES
(1, 1, 'Titulo Imagem de Feijão 1', 'Descrição Imagem de Feijão 1', 'Cotia - SP', '/projetos-imagens/1/Imagem-1-1.jpg'),
(2, 1, 'Titulo Imagem de Feijão 2', 'Descricao Imagem de Feijão 2', 'Mogi das Cruzes - SP', '/projetos-imagens/1/Imagem-1-2.jpg'),
(3, 1, 'teste', 'test', 'TESte', '/projetos-imagens/1/Imagem-1-3.jpg'),
(4, 2, 'Projeto tomate 1', 'Projeto tomate 1', 'Osasco - SP', '/projetos-imagens/2/Imagem-2-1.jpg'),
(5, 2, 'titulo tomate 2', 'descriao tomate 2', 'Santos - SP', '/projetos-imagens/2/Imagem-2-2.jpg'),
(6, 2, 'titulo tomate 3', 'descriao tomate 3', 'Santos - SP', '/projetos-imagens/2/Imagem-2-3.jpg'),
(7, 3, 'Ervas 1', 'Ervas 1 description', 'local', '/projetos-imagens/3/Imagem-3-1.jpg'),
(8, 3, 'Ervas 2', 'Ervas 2 description', 'local', '/projetos-imagens/3/Imagem-3-2.jpg'),
(9, 3, 'adoskdsadasd', 'adsdsdd33', 'dadsd', '/projetos-imagens/3/Imagem-3-3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_plantas`
--

DROP TABLE IF EXISTS `tb_tipo_plantas`;
CREATE TABLE IF NOT EXISTS `tb_tipo_plantas` (
  `ID_Tipo_Planta` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL,
  `Observacao` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_Tipo_Planta`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipo_plantas`
--

INSERT INTO `tb_tipo_plantas` (`ID_Tipo_Planta`, `Descricao`, `Observacao`) VALUES
(1, 'Frutas', ''),
(2, 'Verduras', ''),
(3, 'Grãos e Cereais', ''),
(4, 'Flores e Outros Tipos', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

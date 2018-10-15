<li class='list-item' onclick="toogleItens(this)">
            <span><?php echo $planta['Nome'];?></span>
            <div class="item-description">
                <p><?php echo $planta['Descricao'];?></p>
                <p><strong>Dificultade :</strong> <?php echo $planta['Dificuldade'];?></p>
                <p><strong>Dados de Plantio</strong></p>
                <table class='tabela'>
                    <tr>
                        <th class="indice">SOLO</th>
                        <td class="item"><?php echo $planta['Solo'];?></td>
                    </tr>
                    <tr>
                        <th class="indice">CLIMA</th>
                        <td class="item"><?php echo $planta['Clima'];?></td>
                    </tr>
                    <tr>
                        <th class="indice">ÁREA MÍNIMA</th>
                        <td class="item"><?php echo $planta['Area_Minima'];?></td>
                    </tr>
                    <tr>
                        <th class="indice">COLHEITA</th>
                        <td class="item"><?php echo $planta['Colheita'];?></td>
                    </tr>
                    <tr>
                        <th class="indice">CUSTO</th>
                        <td class="item"><?php echo $planta['Custo'];?></td>
                    </tr>
                </table>
                <p><strong>Mãos a Obra</strong><p>
                <table class="tabela">
                    <tr>
                    <th class="indice">INÍCIO</th>
                    <td class="item"><?php echo $planta['Inicio'];?></td>
                    </tr>
                    <tr>
                    <th class="indice">AMBIENTE</th>
                    <td class="item"><?php echo $planta['Ambiente'];?></td>
                    </tr>
                    <tr>
                    <th class="indice">PLANTIO</th>
                    <td class="item"><?php echo $planta['Plantio'];?></td>
                    </tr>
                    <tr>
                    <th class="indice">TRANSPLANTE</th>
                    <td class="item"><?php echo $planta['Transplante'];?></td>
                    </tr>
                    <tr>
                    <th class="indice">TUTORAMENTO</th>
                    <td class="item"><?php echo $planta['Tutoramento'];?></td>
                    </tr>
                    <tr>
                        <th class="indice">ESPAÇAMENTO</th>
                        <td class="item"><?php echo $planta['Espacamento'];?></td>
                    </tr>
                    <tr>
                    <th class="indice">PRODUÇÃO</th>
                    <td class="item"><?php echo $planta['Producao'];?></td>
                    </tr>
                </table>
            </div>
        </li>
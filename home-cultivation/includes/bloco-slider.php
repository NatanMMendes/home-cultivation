<figure class='slider'>
    <span class="trs next"></span>
    <span class="trs prev"></span>

    <div class='container-slider'>
        <?php
        foreach($imagens as $imagem){
            $caminho = $imagem['Caminho_Image'];
            $titulo = $imagem['Titulo'];                        
            echo "<a href='#' class='trs'><img src='".$caminho,"' alt='".$titulo."'/></a>";
        }
        ?>		
    </div>

    <figcaption></figcaption>
</figure>
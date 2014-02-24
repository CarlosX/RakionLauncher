<?php
$gf  = @$_GET['f'];
$md5 = @$_GET['md5'];

if ( $gf == "md5")
{
   echo "0";
}
else if( $gf == "rakion.bin")
{
   //rakion.bin   
   echo "00994040083d6620daef2bdbb9bf856c712e02f2";
}else if( $gf == "entitiesmp.dll")
{
   //entities.dll 
   echo "fd5fa6f022ff5dcd644160f434735096feba18a8";
}else if( $gf == "engine.dll")
{
   //engine.dll   
   echo "4193ac14e5333ac61a230ee32cbb1ab51d624008";
}else if( $gf == "buddy2.dll")
{
   //buddy2.dll   
   echo "96a4bdd43baa596b5c3d4aa5cd482f66faf8622d";
}
else if( $gf == "datasetup.xfs")
{
   //datasetup.xfs
   echo "fef007c327f022a43d73b60aaeca51e45d0fd267";
}
else
{
   echo "Que Haces ?";
}


?>
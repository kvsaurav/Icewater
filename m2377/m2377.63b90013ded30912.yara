
rule m2377_63b90013ded30912
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m2377.63b90013ded30912"
     cluster="m2377.63b90013ded30912"
     cluster_size="106"
     filetype = "HTML document"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit html script"
     md5_hashes="['08687c1923ab9a16412ce7630712ba33','093f5140928219bbbf1cd4f348decd5d','2db48b41ab953ce6d6977152492bca88']"

   strings:
      $hex_string = { 6e672e46696c6553797374656d4f626a65637422290d0a44726f7050617468203d2046534f2e4765745370656369616c466f6c646572283229202620225c2220 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}


rule k2318_37115532d6830b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.37115532d6830b12"
     cluster="k2318.37115532d6830b12"
     cluster_size="4"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="iframe html redirector"
     md5_hashes="['15a10c54bae650d0582255e116797bd0be1ebe8a','69492ef3345e27fa48a0ce0e41cef94c54196c1e','0764a64d708e2a8179717a1e5f6b9b5eb8661941']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.37115532d6830b12"

   strings:
      $hex_string = { 697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c45435445443ec2fbe1e5f0e8f2e53c2f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}

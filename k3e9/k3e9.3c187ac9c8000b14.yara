import "hash"

rule k3e9_3c187ac9c8000b14
{

   meta:
     copyright="Copyright (c) 2014-2017 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.2.4 divinorum/0.992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.3c187ac9c8000b14"
     cluster="k3e9.3c187ac9c8000b14"
     cluster_size="19 samples"
     filetype = "pe"
     tlp = "amber"
     version = "icewater foxtail"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171031"
     license = "RIL v1.0 see https://raw.githubusercontent.com/SupportIntelligence/Icewater/master/LICENSE"
     family="razy simbot backdoor"
     md5_hashes="['c075cdea19322c096e06d1f9f1def2c9', 'db5f74c37c5c42f74a0c0500f9f3d403', '64b1b70899ce606f8421c15d57f945ae']"


   condition:
      uint16(0) == 0x5A4D and 
      filesize > 16384 and filesize < 65536 and 
      hash.md5(5632,1536) == "b09e1f7c28fc22c6f6859d92fabdae15"
}


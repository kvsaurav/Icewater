
rule j26f3_435ab509ae210b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=j26f3.435ab509ae210b12"
     cluster="j26f3.435ab509ae210b12"
     cluster_size="1673"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family=""
     md5_hashes="['6986b7b963ca48b943fe562bd51dd25644b5a929','f97fae63d71c002497641743486e69e3bb76867d','8e9df1c4bacf0caf9d03e7a1ecd10d679cb6046e']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=j26f3.435ab509ae210b12"

   strings:
      $hex_string = { 641f000180b500028d2f0003862c00047a0f000572ee0005fc790006d1610007a8880008af160009b302000aaf52000b8a24000c4238000d2977000dfc75000e }

   condition:
      
      filesize > 4096 and filesize < 16384
      and $hex_string
}

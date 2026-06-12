# Run this from the project root to download gallery images into the images folder
# Make sure PowerShell execution policy allows web requests.

if (-not (Test-Path -Path .\images)) { New-Item -ItemType Directory -Path .\images | Out-Null }

Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801204943650856/image.png?ex=6a2cb00e&is=6a2b5e8e&hm=0b5824028f70cc2ca01dc730d6fe7be755458d13cd9fafbea720f196761181ee&=&format=webp&quality=lossless&width=1376&height=917" -OutFile ".\images\project1.png"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801309809639617/image.png?ex=6a2cb027&is=6a2b5ea7&hm=ec85c4a5bd7236ace13e40b900885abd6585c06b68452f942bb3f8ab772137e3&=&format=webp&quality=lossless&width=1376&height=916" -OutFile ".\images\project2.png"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801375564009623/image.png?ex=6a2cb037&is=6a2b5eb7&hm=4056fdf1365441a36d51fb19d0316fd02ccfd57b67f356559734110c0bb19372&=&format=webp&quality=lossless&width=1376&height=910" -OutFile ".\images\project3.png"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801494187184168/image.png?ex=6a2cb053&is=6a2b5ed3&hm=694fe9240d4b4aba8958d3e0b4316152d9b8b5b6628c361e6d467eff6557ee7f&=&format=webp&quality=lossless&width=1376&height=915" -OutFile ".\images\project4.png"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801563951169678/image.png?ex=6a2cb064&is=6a2b5ee4&hm=9bad42e02f48ff36c93c9db9ff48236f506b9110aa941cd44af598f35ee232d4&=&format=webp&quality=lossless&width=1376&height=908" -OutFile ".\images\project5.png"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514801616191099052/image.png?ex=6a2cb070&is=6a2b5ef0&hm=42e6a2ff7d530e3f588b1806138aa3b49c2672d764a5fa884303550ec7a426e4&=&format=webp&quality=lossless&width=1376&height=911" -OutFile ".\images\project6.png"

Write-Host "Finished downloading images to .\images"

# Additional background images for main page
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514805247397335251/Destin_1.jpg?ex=6a2cb3d2&is=6a2b6252&hm=dc80ff048f5ce611030640929002a62bb480259292d732ffd332bdb952621a1d&=&format=webp&width=1285&height=856" -OutFile ".\images\bg-destin-1.jpg"
Invoke-WebRequest -Uri "https://media.discordapp.net/attachments/1514774948915187752/1514805247015387308/Destin_2.jpg?ex=6a2cb3d2&is=6a2b6252&hm=8be1af8a42e1564490e63969665e42095b74cfebf1971961683323a3b77b5889&=&format=webp" -OutFile ".\images\bg-destin-2.jpg"

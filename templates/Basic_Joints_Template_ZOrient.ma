//Maya ASCII 2016 scene
//Name: Basic_Joints_Template_ZOrient.ma
//Last modified: Sat, May 27, 2017 10:34:14 AM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "E366093A-4746-0673-73EC-3FA215D73F7A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.077147537954704 228.79697490278332 360.9245672176072 ;
	setAttr ".r" -type "double3" -17.13835272960408 -1.0000000000008171 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3F1CBE92-4339-66B6-0814-118DA9B9BA33";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 409.64709885834077;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C586F7FB-44C5-97BC-427F-569D95F03B73";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "90C5DECA-4811-8890-D619-968F39BFE603";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A88136B3-4E05-EB7B-E408-BD88FD4618EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2E6D3DE1-44A1-C196-F622-D5B5A777278E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "22325B22-4E4A-E240-6DF7-708F30C46539";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6E23BA16-43EA-81C4-B3F2-918CA2ED6855";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root_jnt";
	rename -uid "5861E87D-4C37-FC30-0ABD-2B82FA13A677";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".r" -type "double3" 4.2964952914991011e-031 7.0167092985348752e-015 7.0167092985348752e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 7.016709298534876e-015 180 ;
	setAttr ".bps" -type "matrix" -1 0 -1.2246467991473532e-016 0 -1.2246467991473532e-016 2.2204460492503131e-016 1 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "waist_jnt" -p "root_jnt";
	rename -uid "7FD4CDC0-4A7C-F9EF-757D-FBBA7C2BB7B5";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 1.3637865782839202e-014 -3.0590892180231162 111.36162518314998 ;
	setAttr ".jo" -type "double3" 90 -89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503126e-016 1 -3.3306690738754696e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -4.4408920985006262e-016 -1 0
		 -1.326323540092338e-014 111.36162518314998 -3.059089218023141 1;
	setAttr ".typ" 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "spine01_jnt" -p "waist_jnt";
	rename -uid "4BBBB3F1-4A4E-6B20-560B-0C8DA325734D";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 10.030518666374107 -1.2347961427618538e-014 -2.2204460492503131e-015 ;
	setAttr ".jo" -type "double3" 0 0 1.8817614338431775e-045 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503126e-016 1 -3.3306690738754696e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -4.4408920985006262e-016 -1 0
		 -1.4575183982086738e-014 121.39214384952409 -3.0590892180231419 1;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "spine02_jnt" -p "spine01_jnt";
	rename -uid "413BC1D6-4F97-3EA8-8B9F-468F3667CAB6";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 10.561426139785837 -1.2934016716520189e-015 8.8817841970012523e-016 ;
	setAttr ".r" -type "double3" 0 -1.987846675914698e-016 0 ;
	setAttr ".jo" -type "double3" 0 -1.3328848146695202 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.1655335369313129e-016 0.99972942330118608 -0.02326113036543815 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.3858881474244659e-016 -0.023261130365438261 -0.99972942330118608 0
		 -3.7220736896127698e-015 131.95356998930993 -3.0590892180231486 1;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "chest_jnt" -p "spine02_jnt";
	rename -uid "C547A5FC-4882-0E41-3228-668C7ECA191C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 9.6405043480484096 7.7131473774880215e-015 4.8849813083506888e-015 ;
	setAttr ".r" -type "double3" 0 3.975693351829396e-016 0 ;
	setAttr ".jo" -type "double3" 0 -2.6364061983346527 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.0534959696149973e-016 0.99760129455625957 -0.069221796420456283 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.482972423199612e-016 -0.069221796420456394 -0.99760129455625957 0
		 3.196791811664174e-015 141.59146584151694 -3.2833382464516805 1;
	setAttr ".typ" 6;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "neck_jnt" -p "chest_jnt";
	rename -uid "A2CF4E53-4A22-3C1A-CA2A-238159672698";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 14.848146551287897 -3.658496355466147e-015 0.25432361617601007 ;
	setAttr ".r" -type "double3" 0 -1.5902773407317584e-015 0 ;
	setAttr ".jo" -type "double3" 0 13.569654063463695 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.5787465604535295e-016 0.98599498033291 0.16677499440355054 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 1.9318550485333728e-016 0.16677499440355043 -0.98599498033291 0
		 -2.2947783560764694e-015 156.38639132525896 -4.5648671929794435 1;
	setAttr ".typ" 7;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "head_jnt" -p "neck_jnt";
	rename -uid "3AF09DB9-4AC5-671D-F52F-97914E1F1740";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 18.093331136750635 -2.0256407076276255e-014 1.0658141036401503e-014 ;
	setAttr ".r" -type "double3" 0 2.5444437451708134e-014 0 ;
	setAttr ".jo" -type "double3" 0 -9.6003630504595279 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503121e-016 1 -4.7184478546569153e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -5.8286708792820718e-016 -0.99999999999999989 0
		 -8.6242226189301144e-015 174.22632500359623 -1.5473519939062768 1;
	setAttr ".typ" 8;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "jaw_jnt" -p "head_jnt";
	rename -uid "2C2A4E00-456D-7ADE-1A9A-CBB5690EE130";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -0.95059358202243516 9.8841943416164424e-015 -1.2650362838259817 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9772061691092763e-030 69.072687250692567 180 ;
	setAttr ".bps" -type "matrix" -9.503189261851488e-017 -0.35718329161706774 0.93403431210507271 0
		 -1 -4.5553158730228231e-016 -1.224646799147352e-016 0 4.0518114179436481e-016 -0.93403431210507282 -0.35718329161706791 0
		 2.2322751552179425e-014 173.27573142157379 -0.28231571008027712 1;
	setAttr ".radi" 0.96302923185730072;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "jaw_tip_jnt" -p "jaw_jnt";
	rename -uid "186C7381-4EAC-0C13-9234-0DB12E096D97";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 12.991560554050707 -1.4954775739413369e-015 1.1368683772161603e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -9.503189261851488e-017 -0.35718329161706774 0.93403431210507271 0
		 -1 -4.5553158730228231e-016 -1.224646799147352e-016 0 4.0518114179436481e-016 -0.93403431210507282 -0.35718329161706791 0
		 2.2583616538601327e-014 168.63536305963541 11.85224761519383 1;
	setAttr ".radi" 0.96302923185730072;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_lid_low_jnt" -p "head_jnt";
	rename -uid "9476920E-4CBE-5212-BB57-47970A002A91";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 3.2825480625033285 -7.3808896220884108 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999687 99.142697465380976 -2.5444437451708134e-014 ;
	setAttr ".bps" -type "matrix" -1.3972801248396708e-016 -0.15889385524968355 0.98729567139934948 0
		 5.0727471941201534e-015 0.98729567139934959 0.15889385524968366 0 -1 4.9404924595819466e-015 7.6571373978538742e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_lid_upp_jnt" -p "head_jnt";
	rename -uid "D7F05D33-4D3F-1257-473B-75B9C3375AFD";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 3.2825480625033285 -7.3808896220884108 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000000000000028 51.770403110677819 0 ;
	setAttr ".bps" -type "matrix" -3.7632826194732667e-016 0.61881425755778952 0.7855373413423461 0
		 -4.1414995488702905e-016 -0.78553734134234621 0.61881425755778929 0 1 2.5884498452564454e-031 5.6655388976479796e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_eye_jnt" -p "head_jnt";
	rename -uid "3C705F12-4888-708B-AC2C-A1A36C074651";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 3.2825480625033285 -7.3808896220884108 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000071 80.399636949540508 -1.9070932622953212e-014 ;
	setAttr ".bps" -type "matrix" -3.2275963157201658e-016 0.16677499440355073 0.98599498033291 0
		 -1.5122627052370049e-015 0.98599498033291011 -0.1667749944035507 0 -1 -1.6098233857064768e-015 3.2162452993532791e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_eye_jnt" -p "head_jnt";
	rename -uid "37F0914B-4247-F38E-6CC7-198B53FA3E59";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 -3.2825480625033494 -7.3808896220884144 ;
	setAttr ".jo" -type "double3" -90 -80.399636949540508 -179.99999999999986 ;
	setAttr ".bps" -type "matrix" -1.0307275815530381e-017 -0.16677499440355095 -0.98599498033291 0
		 -2.4845401834135584e-015 -0.98599498033291011 0.16677499440355073 0 -1 2.1649348980190556e-015 -1.2246467991473643e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_lid_low_jnt" -p "head_jnt";
	rename -uid "9573BE2E-49D4-637C-28D2-10A2AE04619B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 -3.2825480625033494 -7.3808896220884144 ;
	setAttr ".jo" -type "double3" 89.999999999999844 -80.857302534619038 0 ;
	setAttr ".bps" -type "matrix" 1.9523916371522508e-016 0.158893855249683 -0.98729567139934982 0
		 2.6988139782559432e-015 -0.98729567139934993 -0.15889385524968327 0 -1.0000000000000002 -2.9976021664879234e-015 -3.4450928483976527e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_lid_upp_jnt" -p "head_jnt";
	rename -uid "48F1CDF8-44D0-73CE-9C7B-3390A3D75DDB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 6.615615230854786 -3.2825480625033494 -7.3808896220884144 ;
	setAttr ".jo" -type "double3" 89.999999999999929 -51.770403110677812 -179.99999999999991 ;
	setAttr ".bps" -type "matrix" -5.1185015775279856e-016 -0.61881425755778929 -0.78553734134234587 0
		 1.9210534996199779e-016 0.78553734134234598 -0.61881425755778929 0 0.99999999999999978 -2.2204460492503185e-016 -6.5469143732287404e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".radi" 0.5;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_clavicle_jnt" -p "chest_jnt";
	rename -uid "773ED188-49AB-12F0-4BD6-2698DFD84B45";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 10.166439863767607 1.9284487326965329 1.1642145060273679 ;
	setAttr ".r" -type "double3" -5.5659706925611528e-015 3.975693351829395e-016 3.7272125173400562e-017 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -3.2839477400714236 -0.51275688091434668 90.029420848719838 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.99995982348824519 -0.001131716495524057 -0.0088921666162716413 0
		 1.907894501920075e-016 -0.9919981045520041 0.12625276458450771 0 -0.0089638947649877745 -0.12624769218882739 -0.99195824952849565 0
		 1.9284487326965356 151.6529303911139 -5.1484993753762875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_upperarm_jnt" -p "l_clavicle_jnt";
	rename -uid "BAE85194-4272-873A-57EA-02AA90FE62DF";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 13.837276500425366 -0.00020000000040454324 -0.034980629270714658 ;
	setAttr ".r" -type "double3" -3.5781240166464568e-015 7.9513867036587888e-015 -1.2846459143098733e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46896235721420365 -0.86688044021777089 0.16909349450508576 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.022278438188901559 -0.17978027802913865 -0.98345448436805105 0
		 15.765482862299541 151.64188514038327 -5.236868670307679 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_forearm_jnt" -p "l_upperarm_jnt";
	rename -uid "63C2C71E-4554-756C-463A-D39CE3AAD838";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 35.840568218077848 -2.9842794901924208e-013 -7.815970093361102e-014 ;
	setAttr ".r" -type "double3" 0 6.361109362927032e-015 0 ;
	setAttr ".jo" -type "double3" 0 5 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.37373616766111623 -0.61229910399464371 0.69671449262186202 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.28415365257905989 -0.63944699017803441 -0.71439782227987803 0
		 32.573360217746028 120.57239758584048 0.82353825473515041 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_hand_jnt" -p "l_forearm_jnt";
	rename -uid "78EB12AB-462F-1526-AE7E-9DB21924A529";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 29.027263435166283 2.8421709430404007e-014 3.2684965844964609e-013 ;
	setAttr ".r" -type "double3" 5.5651587627983976e-007 1.0456859877729752e-016 -1.8333827129983815e-008 ;
	setAttr ".jo" -type "double3" 0 -1.8868651500646261 13.348292357888736 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.16906534654528646 -0.72377849787201776 0.66900044440616624 0
		 -0.94536869129138268 -0.31104748818917893 -0.097608901321657712 0 0.27873813180751 -0.61594979187376009 -0.73682488270085689 0
		 43.421898411694762 102.79903019307137 21.047253371167898 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_thumb01_jnt" -p "l_hand_jnt";
	rename -uid "E6F0BD9B-4240-0513-A63F-7293EBBF449B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 3.9224468392521032 1.4023082631538415 -1.9666730678996487 ;
	setAttr ".r" -type "double3" -9.5416640443905509e-014 -9.5416640443905755e-015 -2.8624992133171654e-014 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 171.17954635983298 32.235634572325978 24.099621486673755 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.34465562444885423 -0.3377360313184754 0.87586921037619359 0
		 0.93818199220884846 -0.1557812323451892 0.30910638483222991 0 0.032047621297172313 0.92825997479060807 0.37054874061442089 0
		 42.21116314153101 100.73523491571041 24.983587933472574 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_thumb02_jnt" -p "l_thumb01_jnt";
	rename -uid "F5A1DF51-4D1B-F630-C52C-2BBA7F70A46B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 4.7952227128103715 -1.7763568394002505e-014 9.9475983006414026e-014 ;
	setAttr ".r" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr ".jo" -type "double3" 0 10.276347398111808 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.34484409171294694 -0.49791622922809109 0.79571476113111872 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.029951659481727837 0.85311877034812367 0.52085627746432872 0
		 40.558462663075986 99.115715427397632 29.183575864519735 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_thumb03_jnt" -p "l_thumb02_jnt";
	rename -uid "CCE72582-4FF9-F8C8-2A99-90A6C5805A2C";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 3.9180792776780891 -4.2632564145606011e-014 1.4210854715202004e-014 ;
	setAttr ".r" -type "double3" 0 -6.3611093629270335e-015 0 ;
	setAttr ".jo" -type "double3" 0 27.117111128454688 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.29328540931154723 -0.83204434565853314 0.47083529555739867 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.18384291713306478 0.53238558818461545 0.82629738430744659 0
		 39.207336173305762 97.164840167639454 32.301249381050191 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_thumb04_jnt" -p "l_thumb03_jnt";
	rename -uid "DB0E9655-4E8F-0FD3-DA6D-8DB1E4F542AD";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 3.7525081963536735 -4.2632564145606011e-014 -5.6843418860808015e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.29328540931154723 -0.83204434565853314 0.47083529555739867 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.18384291713306478 0.53238558818461545 0.82629738430744659 0
		 38.106780270993262 94.042586940825998 34.068062686761849 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_index01_jnt" -p "l_hand_jnt";
	rename -uid "6071F24A-446C-6884-E337-A985CD7EE956";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 11.662075939938532 -0.0041372777547934447 -2.4143817102610399 ;
	setAttr ".r" -type "double3" 3.1407977479452228e-014 -9.5416640443905535e-015 1.1131941385122306e-014 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
	setAttr ".jo" -type "double3" 98.473663741085474 3.6021128623819738 13.910121303951808 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.080546429274852685 -0.73709449945791139 0.67097240748033893 0
		 0.41243423549691555 -0.63747561737428959 -0.6507863233376554 0 0.90741956895426612 0.22431347735292059 0.35534939110218672 0
		 44.724482327386049 95.846695188986118 30.628567713279622 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_index02_jnt" -p "l_index01_jnt";
	rename -uid "E727CFD2-4E84-6687-A8C2-8FBE99452978";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 5.0416173532940434 -1.2789769243681803e-013 8.5265128291212022e-014 ;
	setAttr ".r" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 34.190986768667926 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.57655289533219101 -0.73575539987241789 0.35531781610643454 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.70532599574533095 -0.22866750711862557 0.67098912875993078 0
		 44.318398051808103 92.130546769501677 34.011353846414067 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_index03_jnt" -p "l_index02_jnt";
	rename -uid "346E1A35-4328-75B0-3F24-B8B6E409B73B";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.8243809230391292 -0.10019777683378095 0.040349551879771184 ;
	setAttr ".r" -type "double3" 0 -7.9513867036587888e-015 0 ;
	setAttr ".jo" -type "double3" 0 13.321281227925921 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.72355479316698801 -0.66327114167974377 0.19115400571247868 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.55350380547486044 -0.39204110737028247 0.73480426472410376 0
		 42.677127647479416 90.107140262283792 35.1071881612949 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_index04_jnt" -p "l_index03_jnt";
	rename -uid "6B887A9D-4853-84F3-2491-648DB10C3E30";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.9276442820741977 -0.0673409269194849 -0.010916407908478476 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.72355479316698801 -0.66327114167974377 0.19115400571247868 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.55350380547486044 -0.39204110737028247 0.73480426472410376 0
		 40.525000617465537 88.212526176487756 35.702622224268069 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_middle01_jnt" -p "l_hand_jnt";
	rename -uid "57D91770-4BF4-A2C4-2984-3B99F5DE4BEA";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 11.66278158057132 -0.91189224513512102 0.14212334930330428 ;
	setAttr ".r" -type "double3" 1.9878466759146976e-015 4.7708320221952752e-015 -7.9513867036587919e-015 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 91.000985967427923 -8.1828891022454258 20.775669792893712 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13578114018754017 -0.86670453588455043 0.47998617630773194 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.93846189829719651 0.042779258945624808 0.3427232125906946 0
		 46.295360196549176 94.553860604600914 28.833948211574171 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_middle02_jnt" -p "l_middle01_jnt";
	rename -uid "E77B962E-4857-A8B5-4024-B59C4EACC2F6";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 5.1528625156310994 -0.00031000000005576567 -1.2789769243681803e-013 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 17.237541162043211 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.40778052466899989 -0.84045292993745324 0.35686680464877263 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.85607376801703317 -0.21597613312202157 0.46956577136198752 0
		 45.595600201249958 90.088005354580901 31.307501331267233 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_middle03_jnt" -p "l_middle02_jnt";
	rename -uid "A11B166B-4583-DF9A-AD16-9A8793E231DD";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 3.0227032349895211 -0.00017000000005396032 -1.9184653865522705e-013 ;
	setAttr ".r" -type "double3" 0 1.9083328088781101e-014 0 ;
	setAttr ".jo" -type "double3" 0 14.980072138512748 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61520300344694567 -0.75606462367852623 0.22336416313210572 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.72157641115550841 -0.42587921097494236 0.54585197675129615 0
		 44.362946702720393 87.547650051697389 32.386341061435878 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_middle04_jnt" -p "l_middle03_jnt";
	rename -uid "A0C294A6-4950-C152-CF93-A18ACBB07EC7";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 4.1644816726642233 -0.0001200000000025625 6.5725203057809267e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61520300344694567 -0.75606462367852623 0.22336416313210572 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.72157641115550841 -0.42587921097494236 0.54585197675129615 0
		 41.800906961111792 84.399092421128799 33.316633932397629 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_ring01_jnt" -p "l_hand_jnt";
	rename -uid "B6B876DA-4AF2-CBB4-DE51-14BF4D82BB9F";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 11.306097688688936 -1.0160623503138879 2.6339332266873186 ;
	setAttr ".r" -type "double3" 1.9878466759146992e-016 -3.1805546814635168e-015 -3.1805546814635168e-015 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 82.791703161800157 -14.3129380232257 22.835136501643394 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13560408053601369 -0.91558568400926377 0.37856886900440034 0
		 0.20216035297912183 -0.39962933620458896 -0.89410714421037718 0 0.96991892703737859 -0.044712961006492954 0.23928649375318417 0
		 47.028098896807016 93.309592810279284 26.769466938293085 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_ring02_jnt" -p "l_ring01_jnt";
	rename -uid "C7D85B6B-4BD7-4E10-36C3-57AB0F06F92E";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 4.4547050685016814 -9.2370555648813024e-014 -2.9842794901924208e-013 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854064e-014 0 ;
	setAttr ".jo" -type "double3" 0 31.06102243320802 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61659128527440465 -0.76123774771386643 0.20082897793689361 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.76088525981715194 -0.51069901615354552 0.40030005782261152 0
		 46.424022711933439 89.230928623075698 28.455879597823955 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_ring03_jnt" -p "l_ring02_jnt";
	rename -uid "672B892B-4A94-CFD8-6EC9-5B89A93D1004";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.8862563356863262 4.2632564145606011e-014 1.2212453270876722e-014 ;
	setAttr ".r" -type "double3" 0 -1.4312496066585827e-014 0 ;
	setAttr ".jo" -type "double3" 0 8.1869769100621355 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.71866044444693356 -0.68075412655802081 0.14177794173129341 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.66532575274875172 -0.61389755889635678 0.42481929088778608 0
		 44.644382208281257 87.033801350772947 29.03552350778369 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_ring04_jnt" -p "l_ring03_jnt";
	rename -uid "AA0F0DDE-45B4-F6C7-A0CD-23BF112CCAD2";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.8658498364173539 9.9999995484267856e-007 3.4283687000424834e-013 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.71866044444693356 -0.68075412655802081 0.14177794173129341 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.66532575274875172 -0.61389755889635678 0.42481929088778608 0
		 42.584809493283906 85.082861848906745 29.441836904794936 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_pinky01_jnt" -p "l_hand_jnt";
	rename -uid "E4F33558-45CD-195E-0394-66A7C0B63B05";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 10.490233441534897 -0.35155884018308825 4.7625265909811816 ;
	setAttr ".r" -type "double3" -1.3914926731402886e-015 -6.3611093629270335e-015 -7.9513867036587909e-016 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 66.221060885393015 -17.070590795270196 34.372590321557453 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.2949953328541009 -0.9197600035318142 0.25888084034446479 0
		 -0.0033791643512603442 -0.26993199499581777 -0.96287345966428328 0 0.95549271836188587 -0.28491797763696125 0.076520658496112726 0
		 46.85528384913826 92.382299022112164 24.59039138086003 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_pinky02_jnt" -p "l_pinky01_jnt";
	rename -uid "BA7330CF-4CA7-E5A7-65EA-29ABCD858019";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 3.4569320276867472 2.1316282072803006e-014 0.0095695113456137904 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 35.017805010916234 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.78988474637299833 -0.58976455249590587 0.1681066925097508 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.6132460099303958 -0.76112711861875049 0.21122225405379741 0
		 45.844648633385738 89.200024682298135 25.486057114510842 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_pinky03_jnt" -p "l_pinky02_jnt";
	rename -uid "6F744C88-432F-E343-1EBA-19AAEDB8FE1A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.61050405472416 -5.6843418860808015e-014 2.1316282072803006e-014 ;
	setAttr ".r" -type "double3" 0 -2.0673605429512861e-014 0 ;
	setAttr ".jo" -type "double3" 0 7.5381980785872162 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86350825475687432 -0.48481749276793895 0.1389442070506956 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.50432338356953477 -0.83191869601769808 0.23145022791345071 0
		 43.782651300214319 87.660441926675034 25.924900316933929 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_pinky04_jnt" -p "l_pinky03_jnt";
	rename -uid "7AF0C646-464A-C6F9-4A23-AABB79A2B990";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 2.1785154081004237 2.1316282072803006e-014 1.9184653865522705e-013 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86350825475687432 -0.48481749276793895 0.1389442070506956 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.50432338356953477 -0.83191869601769808 0.23145022791345071 0
		 41.901485262204574 86.604259548563192 26.227592412860144 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_clavicle_jnt" -p "chest_jnt";
	rename -uid "046F9C68-4CD6-8B97-49E5-F2A868578193";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 10.166439863767522 -1.9284487326965722 1.1642145060273714 ;
	setAttr ".r" -type "double3" 3.975693351829396e-016 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 176.71605225992857 0.51275688091433114 89.970579151280191 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.9999598234882453 0.0011317164955241504 0.0088921666162716517 0
		 4.7534436458308647e-016 0.9919981045520041 -0.12625276458450777 0 -0.0089638947649879931 0.12624769218882748 0.99195824952849565 0
		 -1.9284487326965696 151.65293039111381 -5.1484993753762849 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_upperarm_jnt" -p "r_clavicle_jnt";
	rename -uid "2C8B4806-4EB4-4A46-00C4-FFB58CB9464D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -13.837276500425361 0.00019999999977926564 0.034980629270711106 ;
	setAttr ".r" -type "double3" 4.7708324992559754e-015 359.99999852122056 -3.6967736212717716e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.46896235778920076 0.86688044485782234 -0.16909346912254769 0
		 -0.88293713179815969 0.46497027216759723 -0.064997440660610459 0 0.022278426085184214 0.1797802556553266 0.98345448873228081 0
		 -15.765482862299532 151.64188514038258 -5.2368686703075999 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_forearm_jnt" -p "r_upperarm_jnt";
	rename -uid "6ACE3A51-41AC-4E05-84EC-66B028DE2D0C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -35.840568218077919 1.9895196601282805e-013 1.2079226507921703e-013 ;
	setAttr ".r" -type "double3" 0 -6.3611093629270335e-015 0 ;
	setAttr ".jo" -type "double3" 0 5 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.37373616766111678 0.61229910399464427 -0.69671449262186103 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.28415365257905939 0.63944699017803386 0.71439782227987836 0
		 -32.573360217745972 120.57239758584053 0.82353825473516551 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_hand_jnt" -p "r_forearm_jnt";
	rename -uid "10423B2B-4EF5-7DA0-88CC-32AF4818B7FF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -29.027263435166333 1.9895196601282805e-013 1.7053025658242404e-013 ;
	setAttr ".r" -type "double3" 8.9773642171250948e-007 1.4388298184520768e-006 -2.9574966214375593e-008 ;
	setAttr ".jo" -type "double3" 0 -1.8868651500646314 13.348292357888738 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.16906533954552652 0.72377848240409126 -0.66900046290954562 0
		 -0.94536869129138246 0.31104748818917882 0.097608901321657449 0 0.27873813605313208 0.61594981004951477 0.73682486590070517 0
		 -43.421898411694805 102.79903019307187 21.047253371168225 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_index01_jnt" -p "r_hand_jnt";
	rename -uid "C32774DA-4CDC-2214-073C-8890931C9D10";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -11.662077020687612 0.00413685790067575 2.4143828121203086 ;
	setAttr ".r" -type "double3" 1.9480897423964037e-014 3.1805546814635168e-015 -3.1805546814635152e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".jo" -type "double3" 98.473663741085474 3.6021128623819796 13.910121303951808 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.080546429274852074 0.73709449945791206 -0.67097240748033837 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.90741956895426601 -0.22431347735292029 -0.35534939110218622 0
		 -44.724481806056154 95.846694954858961 30.628569207197266 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_index02_jnt" -p "r_index01_jnt";
	rename -uid "723585C1-451E-2AE5-DF77-318DA55C2402";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -5.0416173532940789 -8.3886916968367586e-008 1.2130840332247317e-008 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 34.190986768667941 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.57655289533219056 0.73575539987241811 -0.35531781610643398 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.70532599574533117 0.2286675071186263 -0.67098912875993011 0
		 -44.318398075398214 92.130546713304895 34.011353787510956 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_index03_jnt" -p "r_index02_jnt";
	rename -uid "B734391A-4F4C-0375-5881-53AF4A3EF626";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.8243809246267517 0.10019773450741809 -0.040349545856642521 ;
	setAttr ".r" -type "double3" 0 -6.361109362927032e-015 0 ;
	setAttr ".jo" -type "double3" 0 13.321281227925921 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.72355479316698768 0.66327114167974388 -0.19115400571247831 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.55350380547486078 0.39204110737028325 -0.73480426472410287 0
		 -42.677127659772673 90.107140235511281 35.107188130272178 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_index04_jnt" -p "r_index03_jnt";
	rename -uid "C6C3163C-441E-DD1A-54BF-B8A27517F8A9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.9276442820742119 0.0673409269194849 0.010916407908474923 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.72355479316698768 0.66327114167974388 -0.19115400571247831 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.55350380547486078 0.39204110737028325 -0.73480426472410287 0
		 -40.525000617465579 88.212526176488126 35.702622224268168 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_middle01_jnt" -p "r_hand_jnt";
	rename -uid "82A37E4F-458D-8FD5-C2BB-12802CAAAA45";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -11.66278262063522 0.91189184050607253 -0.14212224204936774 ;
	setAttr ".r" -type "double3" 3.4588532160915748e-014 1.9083328088781101e-014 -3.1805546814635116e-015 ;
	setAttr ".jo" -type "double3" 91.000985967427923 -8.1828891022454222 20.775669792893719 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13578114018753973 0.86670453588455088 -0.47998617630773116 0
		 0.31757321583186821 0.49698408674846761 0.80756056745299132 0 0.93846189829719628 -0.042779258945624267 -0.34272321259069377 0
		 -46.295359681230423 94.553860407979371 28.833949683734442 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_middle02_jnt" -p "r_middle01_jnt";
	rename -uid "453C40C2-46FD-710F-E997-A3BC8B443236";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -5.1528625156364711 0.00030991277426295483 5.6144244808820076e-010 ;
	setAttr ".r" -type "double3" 0 1.5902773407317584e-014 0 ;
	setAttr ".jo" -type "double3" 0 17.237541162043211 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.4077805246689995 0.84045292993745369 -0.35686680464877218 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.8560737680170335 0.21597613312202232 -0.46956577136198663 0
		 -45.595600228423194 90.088005311202664 31.307501260637405 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_middle03_jnt" -p "r_middle02_jnt";
	rename -uid "B3352245-4187-4FBC-E41B-8C93BE4BA167";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -3.0227032349921359 0.00016995120226681593 3.2870417498997995e-010 ;
	setAttr ".r" -type "double3" 0 1.5902773407317584e-014 0 ;
	setAttr ".jo" -type "double3" 0 14.980072138512748 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61520300344694534 0.75606462367852645 -0.22336416313210555 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.72157641115550875 0.42587921097494319 -0.54585197675129526 0
		 -44.362946717935152 87.54765002751455 32.386341021875445 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_middle04_jnt" -p "r_middle03_jnt";
	rename -uid "76BE6F86-47A3-A342-442D-358FFBB5B776";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -4.1644816726642233 0.00011999999998124622 -4.6185277824406512e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61520300344694534 0.75606462367852645 -0.22336416313210555 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.72157641115550875 0.42587921097494319 -0.54585197675129526 0
		 -41.800906961111984 84.399092421128969 33.316633932397593 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_pinky01_jnt" -p "r_hand_jnt";
	rename -uid "72BFC6EC-42D0-6086-4604-B5A2EE1C9959";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -10.490234408499248 0.35155846284044401 -4.762525468485272 ;
	setAttr ".r" -type "double3" 2.3655375443384907e-014 -9.5416640443905535e-015 1.3119788061037004e-014 ;
	setAttr ".jo" -type "double3" 66.22106088539303 -17.070590795270196 34.372590321557446 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.29499533285410034 0.91976000353181386 -0.25888084034446401 0
		 -0.0033791643512611769 0.26993199499581699 0.96287345966428273 0 0.95549271836188543 0.28491797763696114 -0.076520658496111893 0
		 -46.855283343008097 92.382298896274165 24.590392818010727 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_pinky02_jnt" -p "r_pinky01_jnt";
	rename -uid "B769BCD8-487A-21DF-A82B-AF8F8A9BBBE4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -3.4569320276319928 -5.3433176105954772e-008 -0.0095695311121062332 ;
	setAttr ".r" -type "double3" 0 -6.3611093629270335e-015 0 ;
	setAttr ".jo" -type "double3" 0 35.017805010916234 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.78988474637299833 0.5897645524959062 -0.16810669250975088 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.61324600993039657 0.76112711861875115 -0.21122225405379652 0
		 -45.844648652108084 89.200024662293728 25.486057064559958 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_pinky03_jnt" -p "r_pinky02_jnt";
	rename -uid "CC6B6ADB-4A74-59B5-E529-56BC6B8F3727";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.6105040547242595 -2.7165327765032998e-008 -1.4926719416052947e-008 ;
	setAttr ".r" -type "double3" 0 -1.5902773407317584e-015 0 ;
	setAttr ".jo" -type "double3" 0 7.5381980785872162 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86350825475687443 0.48481749276793917 -0.13894420705069582 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.50432338356953554 0.83191869601769874 -0.23145022791344982 0
		 -43.782651309276154 87.660441907981422 25.924900293930083 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_pinky04_jnt" -p "r_pinky03_jnt";
	rename -uid "E70A5F23-4535-56B0-817B-3090DD981B98";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.1785154081004237 -2.1316282072803006e-014 -2.2026824808563106e-013 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.86350825475687443 0.48481749276793917 -0.13894420705069582 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.50432338356953554 0.83191869601769874 -0.23145022791344982 0
		 -41.901485262204552 86.604259548563547 26.227592412860304 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_ring01_jnt" -p "r_hand_jnt";
	rename -uid "41256886-4050-BFF8-926F-1182D5D49CA1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -11.306098689250028 1.0160619604548202 -2.6339321131612508 ;
	setAttr ".r" -type "double3" 2.6239576122074008e-014 -1.0014049913701295e-030 4.3732626870123344e-015 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".jo" -type "double3" 82.791703161800129 -14.312938023225687 22.835136501643401 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.13560408053601358 0.91558568400926421 -0.37856886900439946 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.96991892703737859 0.044712961006493246 -0.23928649375318353 0
		 -47.0280983870245 93.309592650706506 26.769468390089102 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_ring02_jnt" -p "r_ring01_jnt";
	rename -uid "AF65AFA7-42AF-76AC-82CD-719D44251F5D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -4.4547050685015677 -7.473683183434332e-008 -9.572765691245877e-009 ;
	setAttr ".r" -type "double3" 0 1.2722218725854064e-014 0 ;
	setAttr ".jo" -type "double3" 0 31.061022433208027 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.61659128527440465 0.76123774771386654 -0.20082897793689314 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.76088525981715194 0.51069901615354596 -0.40030005782261047 0
		 -46.424022736327487 89.230928592781098 28.455879533291817 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_ring03_jnt" -p "r_ring02_jnt";
	rename -uid "338AACA8-48CF-514B-18E2-7B825E2275CF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.8862563356863262 -4.0454928296185244e-008 -6.2023612912298631e-009 ;
	setAttr ".r" -type "double3" 0 4.7708320221952744e-015 0 ;
	setAttr ".jo" -type "double3" 0 8.1869769100621497 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.71866044444693367 0.68075412655802059 -0.14177794173129299 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.6653257527487515 0.61389755889635733 -0.42481929088778497 0
		 -44.644382221178972 87.033801331438895 29.035523474095449 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_ring04_jnt" -p "r_ring03_jnt";
	rename -uid "829D20A2-4AC5-1089-BA5C-24ACE98EBA8F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -2.8658498364173397 -9.9999996194810592e-007 -3.4638958368304884e-013 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.71866044444693367 0.68075412655802059 -0.14177794173129299 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.6653257527487515 0.61389755889635733 -0.42481929088778497 0
		 -42.584809493283984 85.082861848907186 29.441836904794911 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_thumb01_jnt" -p "r_hand_jnt";
	rename -uid "0ED64662-4E04-9BAA-4A04-90B66F461ECB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -3.9224479131832766 -1.4023086818603048 1.966674284015582 ;
	setAttr ".r" -type "double3" -2.4649298781342257e-014 -6.3611093629270351e-015 -3.1805546814635156e-015 ;
	setAttr ".jo" -type "double3" 171.17954635983298 32.235634572325985 24.09962148667374 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.344655624448853 0.33773603131847596 -0.87586921037619292 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 0.032047621297172313 -0.92825997479060751 -0.37054874061442111 0
		 -42.211162588285703 100.73523475725125 24.983589507128222 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_thumb02_jnt" -p "r_thumb01_jnt";
	rename -uid "D8B9EFE3-4DE0-DCCA-5C9B-BAA96AADA577";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -4.7952227128103928 -1.5821669308024866e-008 7.9531787378073204e-008 ;
	setAttr ".r" -type "double3" 0 4.7708320221952752e-015 0 ;
	setAttr ".jo" -type "double3" 0 10.27634739811181 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.3448440917129455 0.49791622922809109 -0.79571476113111739 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.029951659481727559 -0.85311877034812267 -0.52085627746432861 0
		 -40.558462675370812 99.115715351107013 29.183575839940008 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_thumb03_jnt" -p "r_thumb02_jnt";
	rename -uid "4C481484-4712-0C8C-2AD5-83B20DCA764E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -3.9180792776781246 -1.2182269415461633e-008 6.4983851189026609e-008 ;
	setAttr ".r" -type "double3" 0 3.1805546814635168e-015 0 ;
	setAttr ".jo" -type "double3" 0 27.117111128454688 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.29328540931154612 0.83204434565853269 -0.47083529555739756 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.18384291713306389 -0.53238558818461457 -0.82629738430744593 0
		 -39.207336186681417 97.164840110303132 32.301249350968696 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_thumb04_jnt" -p "r_thumb03_jnt";
	rename -uid "E7682EA5-4B41-1935-3523-E9AF08F97164";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -3.7525081963536735 3.5527136788005009e-014 7.1054273576010019e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.29328540931154612 0.83204434565853269 -0.47083529555739756 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.18384291713306389 -0.53238558818461457 -0.82629738430744593 0
		 -38.10678027099334 94.042586940826567 34.068062686762005 1;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "hips_jnt" -p "waist_jnt";
	rename -uid "26B331CD-4A96-74EF-4518-B8AD44534BF0";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 0 1.5777218104420236e-030 0 ;
	setAttr ".jo" -type "double3" -1.272221872585407e-014 6.3611093629270335e-015 -6.5559993560784194e-016 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -2.2204460492503126e-016 1 -3.3306690738754696e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -4.4408920985006262e-016 -1 0
		 -1.326323540092338e-014 111.36162518314998 -3.059089218023141 1;
	setAttr ".typ" 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_thigh_jnt" -p "hips_jnt";
	rename -uid "D585994E-4F73-4AD5-2AF9-B28E99CC9123";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -5.4007886072847953 7.3141478862386506 0.52371604275975647 ;
	setAttr ".r" -type "double3" 5.5659706925611543e-015 7.9513867036587811e-016 2.1543288350225537e-014 ;
	setAttr ".jo" -type "double3" -4.981948828893187 3.7054863184473801 178.69443883493787 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022736736906670673 -0.99765037972180992 0.064627862689130663 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.085352398883703592 -0.066345629273669868 -0.99413943965677065 0
		 7.3141478862386515 105.96083657586519 -3.5828052607828949 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_calf_jnt" -p "l_thigh_jnt";
	rename -uid "9257561F-4FD8-C9AA-52FB-CABB72A0EBE8";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 52.495111987391361 -2.4868995751603507e-014 0.26728854052461193 ;
	setAttr ".r" -type "double3" 0 -7.9513867036587899e-016 0 ;
	setAttr ".jo" -type "double3" 0 -3.9374153038384923 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.016822195516287965 -0.99985131740386768 -0.0037890399525216112 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.086712196018655804 0.0023164128606444623 -0.99623071087629156 0
		 8.4849017182543065 53.571334741686528 -0.45588045131504895 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_foot_jnt" -p "l_calf_jnt";
	rename -uid "74DD9598-436E-3308-02BC-40A49A377AE7";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 40.805196263751675 -2.8421709430404007e-014 -2.4525564912281084e-010 ;
	setAttr ".r" -type "double3" 0 -1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 52.107518194676928 0 ;
	setAttr ".bps" -type "matrix" 0.086712196018655818 -0.0023164128606446848 0.99623071087629178 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 0.016822195516287948 -0.9998513174038679 -0.0037890399525218332 0
		 9.1713347079049399 12.772205500450468 -0.6104929699845596 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_toes_jnt" -p "l_foot_jnt";
	rename -uid "A4B40AED-4F1C-836A-48BE-C0B4D04C4819";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 16.685101830906341 0.91655238118801208 7.8156210437039064 ;
	setAttr ".r" -type "double3" 8.4785220259200081e-008 -4.1809976055448764e-016 3.614378304065186e-008 ;
	setAttr ".jo" -type "double3" -1.0273158400296984 2.0268767834417374 2.6276488586445974 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.040334569316809586 0.032267627247979679 0.9986650703563299 0
		 -0.99918617032857848 0.00095671098870978022 0.040324703696284318 0 0.00034574866090629833 -0.9994788066466791 0.032279955421189048 0
		 9.8366425206262527 4.9034354734885142 16.061532925159941 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "l_toestip_jnt" -p "l_toes_jnt";
	rename -uid "91A021B2-4627-EE7A-3A47-0780A608153A";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" 8.8391188721217802 0.35691130093121437 0.28570776286380006 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.040334569316809586 0.032267627247979679 0.9986650703563299 0
		 -0.99918617032857848 0.00095671098870978022 0.040324703696284318 0 0.00034574866090629833 -0.9994788066466791 0.032279955421189048 0
		 9.8366425206245438 4.9034354735083241 24.912467171764391 1;
	setAttr ".sd" 1;
	setAttr ".typ" 5;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_thigh_jnt" -p "hips_jnt";
	rename -uid "2FBB5534-4883-2F88-EE07-E096958EE075";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -5.4007886072847811 -7.3141478862386542 0.52371604275976225 ;
	setAttr ".r" -type "double3" -5.3982461292808511e-015 -1.5902773407317584e-015 -4.9696166897867444e-015 ;
	setAttr ".jo" -type "double3" 175.01805117110683 -3.7054863184473801 1.3055611650621681 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.022736736906670687 0.99765037972181003 -0.064627862689130677 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.085352398883703925 0.066345629273669854 0.99413943965677065 0
		 -7.3141478862386533 105.9608365758652 -3.5828052607829024 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_calf_jnt" -p "r_thigh_jnt";
	rename -uid "BD029896-4EE9-AF20-E1AD-0DA80F121E9A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -52.495111987391454 3.1974423109204508e-014 -0.26728854052461015 ;
	setAttr ".r" -type "double3" 0 -1.5902773407317578e-014 0 ;
	setAttr ".jo" -type "double3" 0 -3.937415303838494 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.016822195516287955 0.99985131740386779 0.0037890399525216251 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.086712196018656137 -0.0023164128606445039 0.99623071087629156 0
		 -8.4849017182543172 53.571334741686435 -0.45588045131504318 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_foot_jnt" -p "r_calf_jnt";
	rename -uid "85D59139-4C7B-0246-01C3-6CB7D7BC24AA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -40.805196263751647 7.1054273576010019e-015 2.4525084740822933e-010 ;
	setAttr ".r" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".jo" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.086712196018656151 0.0023164128606447264 -0.99623071087629178 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 0.016822195516287938 0.99985131740386801 0.0037890399525218471 0
		 -9.171334707904931 12.772205500450418 -0.61049296998455982 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_toes_jnt" -p "r_foot_jnt";
	rename -uid "3D65A62B-4A68-3FA7-DA7B-CBACF4DE0795";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -16.685101830906323 -0.91655238118802274 -7.8156210437039277 ;
	setAttr ".r" -type "double3" 8.478543121942856e-008 -1.4477097401109536e-016 3.6143870695372248e-008 ;
	setAttr ".jo" -type "double3" -1.0273158400292999 2.0268767834417449 2.6276488586446232 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.040334569316809468 -0.032267627247979769 -0.99866507035633001 0
		 -0.99918617032857848 -0.00095671098870305643 -0.0403247036962842 0 0.00034574866091324763 0.99947880664667921 -0.032279955421188875 0
		 -9.8366425206262456 4.90343547348842 16.061532925159927 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode joint -n "r_toestip_jnt" -p "r_toes_jnt";
	rename -uid "CEB33446-451D-4906-F20D-33B837A06562";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotXLimited" -ln "rotXLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotYLimited" -ln "rotYLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotZLimited" -ln "rotZLimited" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "rotLimitMin" -ln "rotLimitMin" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMinX" -ln "rotLimitMinX" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinY" -ln "rotLimitMinY" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMinZ" -ln "rotLimitMinZ" -at "float" -p "rotLimitMin";
	addAttr -ci true -sn "rotLimitMax" -ln "rotLimitMax" -at "float3" -nc 3;
	addAttr -ci true -sn "rotLimitMaxX" -ln "rotLimitMaxX" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxY" -ln "rotLimitMaxY" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "rotLimitMaxZ" -ln "rotLimitMaxZ" -at "float" -p "rotLimitMax";
	addAttr -ci true -sn "spring" -ln "spring" -at "float3" -nc 3;
	addAttr -ci true -sn "springX" -ln "springX" -at "float" -p "spring";
	addAttr -ci true -sn "springY" -ln "springY" -at "float" -p "spring";
	addAttr -ci true -sn "springZ" -ln "springZ" -at "float" -p "spring";
	addAttr -ci true -sn "springTension" -ln "springTension" -at "float3" -nc 3;
	addAttr -ci true -sn "springTensionX" -ln "springTensionX" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionY" -ln "springTensionY" -at "float" -p "springTension";
	addAttr -ci true -sn "springTensionZ" -ln "springTensionZ" -at "float" -p "springTension";
	addAttr -ci true -sn "damping" -ln "damping" -at "float3" -nc 3;
	addAttr -ci true -sn "dampingX" -ln "dampingX" -at "float" -p "damping";
	addAttr -ci true -sn "dampingY" -ln "dampingY" -at "float" -p "damping";
	addAttr -ci true -sn "dampingZ" -ln "dampingZ" -at "float" -p "damping";
	setAttr ".t" -type "double3" -8.8391188721218121 -0.35691130093122325 -0.28570776286381872 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.040334569316809468 -0.032267627247979769 -0.99866507035633001 0
		 -0.99918617032857848 -0.00095671098870305643 -0.0403247036962842 0 0.00034574866091324763 0.99947880664667921 -0.032279955421188875 0
		 -9.8366425206245403 4.903435473508214 24.912467171764433 1;
	setAttr ".radi" 3;
	setAttr ".springTension" -type "float3" 1 1 1 ;
	setAttr ".damping" -type "float3" 1 1 1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7ABAA3BE-4908-0680-59B8-3D9A69424FDF";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "A93E7275-41C1-6F73-AB85-13A15CBA9C07";
	setAttr ".cdl" 1;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
createNode displayLayer -n "defaultLayer";
	rename -uid "60C62767-4561-4B78-9A11-1796F4B1CA9D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "30D09324-4B62-5693-48F3-44A969DF9C5A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0FEC509F-44C8-BED5-AECC-71A9CCB6C129";
	setAttr ".g" yes;
createNode shadingEngine -n "Box001SG";
	rename -uid "E343106A-462D-8FCC-04E7-B8BEB3157CC0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B7B229E6-40AA-B2A6-ABCE-38A844C0D4C3";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "F3001297-4DE2-CA67-076E-BAA26B6DF9EE";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E007C27F-48A0-4060-E6FA-9EB172712942";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 662\n                -height 739\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 662\n            -height 739\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 41 100 -ps 2 59 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 662\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 662\\n    -height 739\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3BF152F1-45F0-E955-B980-7FA839C35073";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode shadingEngine -n "TrendySG";
	rename -uid "AD0FEC6A-41DF-9E61-50C0-4AAB7E60927F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "E972A147-4668-E507-4DD3-6E8E134C3DB3";
createNode shadingEngine -n "TrendySG1";
	rename -uid "863AA78D-445A-CD15-BD91-BEAD7B29EACF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "45BCD275-4A65-2E17-13DF-7E9A48BECE58";
createNode shadingEngine -n "TrendySG2";
	rename -uid "3E7EF449-4EF9-BD16-0E98-6797128736D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "A84589FE-48CD-7C40-0F87-EF82E3C15BDE";
createNode shadingEngine -n "TrendySG3";
	rename -uid "DF404C36-4002-885A-5C94-49B855661620";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "2F97A2DC-4D5C-3EA3-AFCC-E795FF406E58";
createNode shadingEngine -n "TrendySG4";
	rename -uid "7568A7CB-431F-BD9B-EA00-82872A4E57E0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "2CB8092C-4EFB-D1A3-C7E9-A780ADB46BAE";
createNode shadingEngine -n "TrendySG5";
	rename -uid "37FDC135-4EAE-E92E-C075-6DA5C1656C5E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "B0348E9B-485E-588D-45CE-48B32FC2CB4A";
createNode shadingEngine -n "TrendySG6";
	rename -uid "B8DFB55F-48F4-14AE-A36C-669C45F3149F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "4410D0FE-4921-701A-49D2-3FB29548EE87";
createNode shadingEngine -n "TrendySG7";
	rename -uid "0E38C85E-4A59-B2C4-72ED-A28646681282";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
	rename -uid "3D551333-49B6-51B1-CA8A-A5A284C6ACCB";
createNode shadingEngine -n "TrendySG8";
	rename -uid "A9D21885-44E1-A2B8-9F00-97BBDB98F66B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
	rename -uid "8A2A0307-4514-8F6C-00BA-7095A7E0CE8C";
createNode shadingEngine -n "TrendySG9";
	rename -uid "F35469D5-43C0-B730-F1AD-3B9ED6A451CA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "FE9E604D-46B0-648E-C538-9E8C404AA3FC";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8";
	rename -uid "7961338A-434E-967F-16CA-348DC1F7F55B";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "57AB81A2-4AD9-1878-A6CF-F4AEB447945C";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8";
	rename -uid "9159FA31-4531-05D7-1C2B-3AA829E656C7";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "00628E48-4EBE-15F3-7C86-5EB32CBEF7CC";
createNode bump2d -n "bump2d1";
	rename -uid "C79A18D7-452F-10CE-FD70-77A6E0AD7CB2";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8";
	rename -uid "38CC7C65-4FA4-6B02-7EF4-DF8969C393BF";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "F1C4C406-4F8B-3B8D-2300-68B504212321";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7";
	rename -uid "26A66875-4569-3EAA-DB69-D19625296263";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "5E8942C7-4EC5-DB89-511A-0CBDF48FCB68";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7";
	rename -uid "38A7D59B-4918-5DD5-D696-CF9E753910B9";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "CFAEA8BD-4E2F-2BB0-4989-59975A3FE024";
createNode bump2d -n "bump2d2";
	rename -uid "BC087B82-4ED1-EEDC-F053-D7B6BD6A7BE5";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7";
	rename -uid "78BC1929-4186-BA12-CCAC-518D1C6AFA07";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "048398DD-40CF-65D3-27CA-B895771584D7";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5";
	rename -uid "A5C2D56F-4FC0-2473-A849-B898B1359F36";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "4B4AEEE9-46C1-5533-0F79-B89A0C010151";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5";
	rename -uid "CE0860F4-49A2-FCF6-28A0-609407892E70";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "DD7C3A3C-4E31-8FB0-54B8-62AF03A1D944";
createNode bump2d -n "bump2d3";
	rename -uid "44932E7B-49E1-3FC6-9055-78ABEC891F41";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5";
	rename -uid "5E24C052-4B8D-A4A4-1A1C-A8B74CE4E786";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "BE5B4BA7-48E9-F3B5-3758-5E9EB12ED7DA";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4";
	rename -uid "AC9C8223-4FF0-0DCD-DCBC-079EB4FA913D";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "BF1F0220-4754-B7CB-6710-4091F50A79BC";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4";
	rename -uid "6206BADA-4A45-EA12-086F-238F9744472A";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "311D7A6D-4909-5BC4-D50C-2EB8E995E4BA";
createNode bump2d -n "bump2d4";
	rename -uid "5A935B6D-4E75-D20C-7068-D2A85DED2D5D";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4";
	rename -uid "998FCE93-4CAD-2CEF-C13B-30B0345B7110";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture12";
	rename -uid "C6ADE47D-473C-92D4-FEDE-03936E07F8C8";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9";
	rename -uid "A0441436-4FDC-76C4-18DF-E98DAE104977";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture13";
	rename -uid "541A229D-48BA-4408-8629-CF8FD3B39F1C";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9";
	rename -uid "9A817D60-4BDA-4DAA-7C10-77BEAE469D2E";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture14";
	rename -uid "53C5903F-402F-F286-F212-28BA74B552DA";
createNode bump2d -n "bump2d5";
	rename -uid "5E5216D8-4BA1-7360-08F1-169639C280C5";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9";
	rename -uid "B98F8D38-41BA-C337-AFA6-18B23445B126";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture15";
	rename -uid "60A68411-479F-26BE-B3C1-EAA6B554BE6D";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3";
	rename -uid "DA3E6A8C-4A22-8918-807B-9BB364EAB37C";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture16";
	rename -uid "56022713-4619-2198-037A-A39E1001A776";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3";
	rename -uid "32D8A191-4D64-B027-9067-A9B96B45DCB5";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture17";
	rename -uid "259BE4C2-4C05-BF24-013B-F3A696C6CF9D";
createNode bump2d -n "bump2d6";
	rename -uid "FDF5FB35-4DAD-4B16-A4D3-65B171FF74B9";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3";
	rename -uid "67CA99F0-4F1D-ED21-FB97-EE8FA9DC092A";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture18";
	rename -uid "0D1E46D5-40FB-7CA4-1E9D-9D9F7BF4C5E6";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga";
	rename -uid "E8E1C481-45E4-8B54-AAC8-3B8A3C1CCA21";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture19";
	rename -uid "4A68915F-4DAE-1580-F4B3-CDB44879B366";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga";
	rename -uid "4D56FBEA-4B38-4A36-E2CE-C281A620F392";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture20";
	rename -uid "EAF88D0B-418F-A47A-FED7-2F92ACE8BE18";
createNode bump2d -n "bump2d7";
	rename -uid "8EE5E8C7-48D1-3615-1BF8-00A2A428F99E";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga";
	rename -uid "1E4A758A-4564-A1DF-AB23-A591550351CD";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture21";
	rename -uid "8AAB89C8-4289-8145-94A4-5997A3C57B36";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1";
	rename -uid "9482E3F8-4EFA-ACD3-A9AC-1CA550DB291C";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture22";
	rename -uid "EB90E412-4AA8-C35C-02D4-2CB1C6CDF234";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1";
	rename -uid "05F113F4-432E-61D5-A374-CA95CC23FA3C";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture23";
	rename -uid "B43FFE90-4CDE-701B-F447-668DFBA19908";
createNode bump2d -n "bump2d8";
	rename -uid "62C85235-4E91-9880-15FC-FDB28B3D5FAC";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1";
	rename -uid "F6570732-448E-8C4C-EC90-3898A7AFDF8E";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture24";
	rename -uid "A4C46EEA-4160-FB29-8195-A3AD1377C69C";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2";
	rename -uid "A19778E9-4AEC-381E-DC45-169600596D94";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture25";
	rename -uid "7DB2FAC3-4C4B-B0FB-F31D-E3ABBE93EF2D";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2";
	rename -uid "1B395134-4792-89A5-C3D4-DEA4A20427AC";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture26";
	rename -uid "173045E2-4287-0879-08CC-A8BDA708DE54";
createNode bump2d -n "bump2d9";
	rename -uid "6B7071A9-426D-AB63-AEEC-598360D7AF49";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2";
	rename -uid "F1445C09-44F1-B739-ADE7-2791F36E8F1D";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture27";
	rename -uid "0FB8659A-45C2-9822-5D06-79ACFF6B1EE8";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6";
	rename -uid "1F8C7C17-4E76-F368-672E-8DA66ABE39F3";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_diff.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture28";
	rename -uid "1837A622-4526-F353-8851-92807B118DBA";
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6";
	rename -uid "1BF59E8F-44E3-D039-D2D0-EF816581925A";
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_spec.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture29";
	rename -uid "8DB25061-4B64-05E9-3C75-F69A2FDDA722";
createNode bump2d -n "bump2d10";
	rename -uid "206275AD-4FF1-1D76-7C59-A5AB58D16154";
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6";
	rename -uid "5C851E68-492C-47B1-950B-9AADBFF11EF2";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:\\Amazon\\Lumberyard\\1.5.0.0\\dev\\Coffence\\Objects\\CharacterModels\\trendy\\textures\\trendy_ddna.tga";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture30";
	rename -uid "2436AD9D-4F18-CDBC-260C-ABB64C6ED178";
createNode dagPose -n "bindPose13";
	rename -uid "B170C579-4258-B63A-6836-2AA7A76114AE";
	setAttr -s 74 ".wm";
	setAttr ".wm[95]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 98 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.1554436208840472e-030
		 111.36162518314998 -3.059089218023141 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70710678118654746 0.70710678118654757 4.3297802811774664e-017 4.3297802811774658e-017 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.030518666374107 2.1436582311610929e-015
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 -6.9388939039072284e-018 0 0 10.561426139785837
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.011631352002538592 0 0.99993235353727461 1
		 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -1.3877787807814457e-017 0 0 9.6405043480484096
		 8.8659866225924314e-015 -1.4190038033490282e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.023004954662940974 0 0.99973535101093436 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 0.99999999999999978 0 0 0 0 14.848146551287925
		 1.4934278001560694e-014 0.25432361617599764 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.11814100876609397 0 0.99299682882058071 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 0.99999999999999978 0 0 0 0 18.093331136750635
		 8.9066808136066149e-016 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.083681000433461633 0 0.99649259413527758 1 1 1.0000000000000002 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.95059358202243516 9.8841943416164424e-015
		 -1.2650362838259817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.56692887930627223 3.4714381869331123e-017 0.82376674235400771 5.0441165213393894e-017 1
		 1 1.0000000000000002 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.9915605540507 -1.4954775739413495e-015
		 1.4210854715202004e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.45855919594702033 0.53825966207066145 -0.53825966207065845 0.45855919594702288 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.63616315862320061 0.30870120765969267 0.30870120765969278 0.63616315862320028 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.54008679728436992 0.45640579685090771 -0.45640579685090832 0.54008679728436926 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.45640579685090865 0.54008679728436904 -0.54008679728437015 -0.45640579685090732 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53825966207065912 -0.45855919594702232 0.4585591959470211 0.53825966207066056 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30870120765969239 -0.63616315862320039 -0.63616315862320061 0.30870120765969289 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 0.99999999999999978 1.3877787807814454e-017
		 3.4694469519536134e-018 2.4074124304840437e-035 0 10.166439863767579 1.9284487326965509
		 1.164214506027375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.017092425103000474 -0.023428317113706337 0.70690016905083453 0.70671855356798141 1
		 1 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -1.0408340855860841e-016 -1.7000290064572707e-016
		 1.0809495659680478e-016 0 13.837276500425327 -0.00019999999977926564 -0.034980629270689789 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015184726211261428 0.027348818514755277 0.51482186867992152 0.85672627469025919 1
		 1 1.0000000000000002 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 2.2204460492503126e-016 0 0 35.840568218077948
		 -2.5579538487363607e-013 -1.7763568394002505e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.2967589937911303 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 9.7130353534508052e-009 1.6223277813031598e-016
		 -3.199856916843419e-010 0 29.027263435166255 -1.4210854715202004e-014 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0019136349502990736 -0.01635367877276921 0.11620681725525497 0.99308855134639318 1
		 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999999999999989 1 1 -3.8857805861880479e-016
		 -2.7755575615628914e-016 5.5511151231257876e-017 0 3.9224468392521672 1.4023082631538557
		 -1.9666730678995208 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93228695664245786 0.22083957692703857 -0.25527055911650559 0.13003020182010525 1
		 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 -1.9428902930940239e-016 0 0 4.795222712810407
		 3.907985046680551e-014 1.2789769243681803e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.089557896156696459 0 0.9959816179207257 1.0000000000000002 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 -2.7755575615628914e-016 0 0 3.9180792776780535
		 2.8421709430404007e-014 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.23443899156912285 0 0.97213083442099124 1 1 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7525081963536451 -4.6185277824406512e-014
		 -4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 5.8113236445223038e-016 2.2204460492503136e-016
		 -2.2204460492503123e-016 0 11.662075939938468 -0.004137277754864499 -2.4143817102610967 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74898510365388482 0.11204085571783885 0.055395464084937757 0.65069155804682788 1
		 1 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.0416173532941144 1.4210854715202004e-014
		 2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.29396514615418945 0 0.9558161396662781 1
		 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 1.3877787807814452e-016 0 0 2.824380923039115
		 -0.10019777683381648 0.040349551879771184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.11598845017483093 0 0.99325056225810449 1 1 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9276442820741693 -0.067340926919492006
		 -0.010916407908482029 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999967
		 0.99999999999999978 4.0245584642661915e-016 -4.7184478546569153e-016 1.5265566588595893e-016 0 11.662781580571256
		 -0.91189224513509259 0.1421233493033327 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70879509749352421 0.079090991252074749 0.17611366128948591 0.67848220549924665 1
		 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.1528625156311278 -0.00031000000006287109
		 -1.0658141036401503e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.14985926035016278 0 0.98870733894682006 1.0000000000000002
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 -5.5511151231257827e-017 0 0 3.0227032349894927
		 -0.00017000000001843318 -1.8474111129762605e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.13035377461696829 0 0.99146754533020831 1 1 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1644816726642233 -0.00011999999999545707
		 7.460698725481052e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 0.99999999999999989 -2.0816681711721685e-017 -1.1102230246251565e-016 2.0816681711721685e-017 0 11.306097688688894
		 -1.0160623503139874 2.6339332266873186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66162215176050521 0.038276432292178059 0.22809187587802018 0.71327774337156158 1
		 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251563e-016 0 0 4.4547050685016103
		 -6.3948846218409017e-014 -2.7000623958883807e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.26775149179667884 0 0.96348800648511079 1.0000000000000002 1.0000000000000002
		 1.0000000000000002 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 -5.5511151231257815e-017 0 0 2.8862563356862836
		 -7.1054273576010019e-015 -8.6819440525687241e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.071384086821748682 0 0.9974489020238706 1 1 1 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8658498364173539 9.9999995484267856e-007
		 3.4461322684364859e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 0.99999999999999989 -1.1449174941446924e-016
		 -2.7755575615628918e-016 -3.538835890992687e-016 0 10.490233441534912 -0.3515588401830172
		 4.7625265909812384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.55281870401295663 0.040852551383058378 0.32221244177677505 0.76739930408046242 1
		 1 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-016 0 0 3.456932027686733
		 -4.2632564145606011e-014 0.0095695113456280012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.30085398253662393 0 0.95367021616062475 1 1 1.0000000000000002 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 4.9960036108132044e-016 0 0 2.6105040547242595
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.065735753001022468 0 0.99783706624748536 1
		 1 1 no;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1785154081004379 2.1316282072803006e-014
		 2.0605739337042905e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[39]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999989 6.9388939039072284e-018
		 6.9388939039072284e-018 2.4074124304840448e-035 0 10.166439863767522 -1.9284487326965556
		 1.1642145060273767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.7069001690508343 0.70671855356798152 0.017092425103000602 0.02342831711370626 1
		 1 1 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 8.326672684688711e-017 6.2831853071795853
		 -6.6298962847488576e-016 0 -13.83727650042532 0.00020000000000663931 0.034980629270737751 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015184726211261424 0.02734881851475527 0.51482186867992152 0.85672627469025919 1.0000000000000002
		 1 1.0000000000000002 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 5.7731597280508132e-015 0 0 -35.840568218078005
		 1.7053025658242404e-013 5.3290705182007514e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.29675899379113035 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 9.7130372213143063e-009 6.5972979336058916e-015
		 -3.199858612535304e-010 0 -29.027263435166233 1.4210854715202004e-013 1.4210854715202004e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0019136349502990794 -0.016353678772769255 0.11620681725525502 0.99308855134639318 1
		 1 1 no;
	setAttr ".xm[43]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000004 -4.8572257327350617e-017
		 4.1633363423443358e-017 -6.106226635438361e-016 0 -11.66207593993834 0.004137277754864499
		 2.4143817102610541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74898510365388482 0.11204085571783889 0.055395464084937722 0.65069155804682788 1
		 1 1 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 -2.2204460492503131e-016 0 0 -5.0416173532941357
		 -7.815970093361102e-014 2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.29396514615418956 0 0.9558161396662781 0.99999999999999978 0.99999999999999978
		 0.99999999999999956 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 5.5511151231257815e-017 0 0 -2.8243809230391008
		 0.10019777683387332 -0.040349551879771184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.11598845017483093 0 0.99325056225810449 1 1 1 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9276442820742119 0.067340926919492006
		 0.010916407908469594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1.0000000000000002 1.1171619185290642e-015
		 2.7755575615629154e-017 -4.163336342344338e-016 0 -11.662781580571192 0.91189224513509259
		 -0.14212334930341797 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70879509749352421 0.079090991252074805 0.17611366128948594 0.67848220549924665 1
		 1 1 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 -5.5511151231257827e-017 0 0 -5.1528625156311136
		 0.00031000000005576567 6.3948846218409017e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.14985926035016278 0 0.98870733894682006 1 1 0.99999999999999978 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 5.5511151231257827e-017 0 0 -3.0227032349894642
		 0.00016999999999001147 1.8474111129762605e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.13035377461696829 0 0.99146754533020831 1 1 1 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1644816726642091 0.00011999999997414079
		 -4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[51]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000004 1.0000000000000004 7.5633943552588789e-016
		 5.5511151231258049e-017 -5.7592819402429996e-016 0 -10.490233441534762 0.35155884018305983
		 -4.7625265909812313 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.55281870401295663 0.040852551383058378 0.32221244177677499 0.76739930408046242 1
		 1 1 no;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-016 0 0 -3.4569320276867757
		 2.8421709430404007e-014 -0.0095695113456244485 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.30085398253662399 0 0.95367021616062475 0.99999999999999978 0.99999999999999956
		 0.99999999999999956 no;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-016 0 0 -2.6105040547242453
		 2.8421709430404007e-014 7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.065735753001022468 0 0.99783706624748536 1 1 1 no;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1785154081004237 -2.1316282072803006e-014
		 -2.2026824808563106e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 7.3899220076611963e-016 1.665334536937737e-016
		 -6.3837823915946471e-016 0 -11.306097688688787 1.01606235031403 -2.6339332266873896 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66162215176050498 0.038276432292178059 0.22809187587802016 0.71327774337156169 1
		 1 1 no;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 -2.2204460492503126e-016 0 0 -4.4547050685016245
		 7.815970093361102e-014 2.6290081223123707e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.2677514917966789 0 0.96348800648511079 1 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 1.3877787807814452e-016 0 0 -2.8862563356862836
		 -2.1316282072803006e-014 1.0413891970983968e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.071384086821748793 0 0.9974489020238706 1 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8658498364173397 -9.9999996905353328e-007
		 -3.4816594052244909e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1.0000000000000002 1 5.4123372450476401e-016
		 -6.6613381477509373e-016 -6.1062266354383629e-016 0 -3.9224468392520251 -1.4023082631538415
		 1.9666730678994924 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93228695664245786 0.22083957692703854 -0.25527055911650565 0.13003020182010525 1
		 1 1 no;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 -4.163336342344337e-016 0 0 -4.7952227128103857
		 -7.460698725481052e-014 -9.9475983006414026e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.089557896156696473 0 0.9959816179207257 1 0.99999999999999978 1 no;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 -4.4408920985006262e-016 0 0 -3.9180792776780393
		 -7.1054273576010019e-015 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.23443899156912285 0 0.97213083442099124 1 1 1 no;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7525081963536735 3.5527136788005009e-014
		 7.1054273576010019e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 1.1102230246251565e-016 2.7755575615628892e-017
		 3.8380756905986857e-016 0 -5.4007886072847811 7.3141478862386506 0.52371604275976269 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.032793087343778185 -0.043068475641448126 0.9984839990039035 0.0099711364226107348 1
		 1 1 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 -1.3877787807814454e-017 0 0 52.495111987391404
		 -2.8421709430404007e-014 0.26728854052460882 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.034353669722520817 0 0.9994097384839693 1 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 -2.2204460492503131e-016 0 0 40.805196263751689
		 -2.6645352591003757e-014 -8.1254059036695025e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.70710678118654746 0 0.70710678118654757 1 1 1 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 1.4797855353186268e-009 -5.2914461011313126e-018
		 6.3082983639290553e-010 0 16.685101830874913 0.91655238118801741 7.8156210437709603 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0093666621061891699 0.017476033992765143 0.023082564514930185 0.99953691732336036 1
		 1 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 -1.4853569763051418e-016 -6.106226635438359e-016
		 4.4061976289810895e-016 0 -5.4007886072847811 -7.3141478862386524 0.52371604275976047 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9984839990039035 0.0099711364226109517 0.032793087343778199 0.043068475641448049 1
		 1 1 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 -1.5265566588595898e-016 0 0 -52.495111987391446
		 3.3750779948604759e-014 -0.26728854052461015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.034353669722520831 0 0.9994097384839693 1 1 1 no;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 -4.4408920985006262e-016 0 0 -40.805196263751682
		 1.5987211554602254e-014 8.1255224770870882e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.70710678118654746 0 0.70710678118654757 1 1 1 no;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 1.479786159602238e-009 -7.9477417931008058e-018
		 6.3083006949637283e-010 0 -16.68510183087492 -0.91655238118802274 -7.8156210437709754 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0093666621061857021 0.017476033992765289 0.023082564514930355 0.99953691732336047 1
		 1 1 no;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 -0.0050916403565934784 0 0 1.4210854715202004e-014
		 -3.5527136788005009e-015 1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0.0050916403565934654 0 0 -26.247896228710715
		 2.4868995751603507e-014 -4.6984638402136625e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 -0.0050916403566152743 0 0 -26.247555993695748
		 1.2434497875801753e-014 -0.13364427026230574 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4210854715202004e-014
		 -1.7763568394002505e-015 -2.7755575615628914e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.402598131875841 7.1054273576010019e-015
		 1.0156264718119701e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.402598131875859 1.2434497875801753e-014
		 7.1099098830629259e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0.0021454273305635163 0.062536514547131106
		 1.082254923414717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.015184726211261433 -0.027348818514755284 -0.51482186867992175 0.85672627469025919 1
		 1 1 no;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0.0021454273305634743 0.062536514547131106
		 1.082254923414717 0 17.92028410903896 -8.5265128291212022e-014 -7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.015184726211261454 -0.027348818514755277 -0.51482186867992175 0.85672627469025919 1
		 1 1 no;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 0.0021454273305635094 0.062536514547131092
		 1.0822549234147163 0 17.920284109038974 -1.7053025658242404e-013 -1.7763568394002505e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.015184726211261422 -0.027348818514755277 -0.51482186867992152 0.8567262746902593 1
		 1 1 no;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 0.60259392588977601 0 0 0 -2.8421709430404007e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.2967589937911303 0 0.95495240698375949 1
		 1 1 no;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0.60259392588977612 0 0 14.513631717583138
		 4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.29675899379113035 0 0.95495240698375949 1
		 1 1 no;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0.60259392588977589 0 0 14.513631717583117
		 -2.8421709430404007e-014 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 -0.29675899379113024 0 0.95495240698375961 1 1 1 no;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0.0021454273305635371 0.062536514547131064
		 1.082254923414717 0 4.2632564145606011e-014 1.4210854715202004e-014 7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.015184726211261417 -0.027348818514755277 -0.51482186867992175 0.85672627469025919 1
		 1 1 no;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0.0021454273305634669 0.062536514547131217
		 1.0822549234147165 0 -17.920284109039017 9.9475983006414026e-014 7.1054273576010019e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.01518472621126148 -0.027348818514755326 -0.51482186867992163 0.8567262746902593 1
		 1 1 no;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0.0021454273305635159 0.06253651454713112
		 1.0822549234147165 0 -17.920284109038974 7.1054273576010019e-014 3.907985046680551e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.015184726211261435 -0.027348818514755298 -0.51482186867992163 0.8567262746902593 1
		 1 1 no;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 0.60259392588977612 0 0 0 -1.4210854715202004e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 -0.29675899379113035 0 0.95495240698375949 1
		 1 1 no;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 0 0.60259392588977612 0 0 -14.513631717583152
		 5.6843418860808015e-014 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.29675899379113041 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 0.60259392588977612 0 0 -14.513631717583088
		 8.5265128291212022e-014 1.2789769243681803e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.29675899379113035 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 -0.0050916403565934845 0 0 -1.4210854715202004e-014
		 1.7763568394002505e-015 -1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 0 0.0050916403565934784 0 0 26.247896228710729
		 -1.0658141036401503e-014 4.7206683007061656e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 -0.0050916403566152683 0 0 26.247555993695656
		 -1.5987211554602254e-014 0.13364427026229819 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1054273576010019e-015
		 1.7763568394002505e-015 5.5511151231257827e-017 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.402598131875848 -1.5987211554602254e-014
		 -1.0155293272973154e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.402598131875841 -1.0658141036401503e-014
		 -7.1098488207965715e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 1.9887216873359486e-012 0 0 8.8391188721206611
		 0.35691130093057311 0.28570776289922684 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 1.988735565117139e-012 0 0 -8.8391188721206895
		 -0.35691130093057133 -0.28570776289922417 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr -s 90 ".m";
	setAttr -s 98 ".p";
	setAttr -s 3 ".g[95:97]" yes no no;
	setAttr ".bp" yes;
createNode dagPose -n "bindPose14";
	rename -uid "182B1D3C-444E-4F66-6AF3-0C90BDC3B0A9";
	setAttr -s 99 ".wm";
	setAttr ".wm[0]" -type "matrix" -1 0 -1.2246467991473532e-016 0 -1.2246467991473532e-016 2.2204460492503131e-016 1 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" -1 0 -1.2246467991473532e-016 0 -1.2246467991473532e-016 2.2204460492503131e-016 1 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" -2.2204460492503126e-016 1 -3.3306690738754696e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -4.4408920985006262e-016 -1 0
		 -9.5313718234750369e-030 111.36162518314998 -3.059089218023141 1;
	setAttr ".wm[3]" -type "matrix" -2.2204460492503126e-016 1 -3.3306690738754696e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -4.4408920985006262e-016 -1 0
		 -8.3564323307106759e-017 121.39214384952409 -3.0590892180231442 1;
	setAttr ".wm[4]" -type "matrix" -2.1655335369313129e-016 0.99972942330118608 -0.02326113036543815 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.3858881474244659e-016 -0.023261130365438261 -0.99972942330118608 0
		 -2.4286720179607509e-015 131.95356998930993 -3.0590892180231481 1;
	setAttr ".wm[5]" -type "matrix" -2.0534959696149973e-016 0.99760129455625957 -0.069221796420456283 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.482972423199612e-016 -0.069221796420456394 -0.99760129455625957 0
		 4.3496310567685862e-015 141.59146584151694 -3.283338246451676 1;
	setAttr ".wm[6]" -type "matrix" -2.5787465604535295e-016 0.98599498033291 0.16677499440355054 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 1.9318550485333728e-016 0.16677499440355043 -0.98599498033290989 0
		 1.6297996000950383e-014 156.38639132525896 -4.56486719297944 1;
	setAttr ".wm[7]" -type "matrix" -2.2204460492503121e-016 1 -4.7184478546569153e-016 0
		 1 3.3306690738754696e-016 1.2246467991473525e-016 0 2.33486982377251e-016 -5.8286708792820718e-016 -0.99999999999999989 0
		 1.2522852538706799e-014 174.22632500359623 -1.547351993906259 1;
	setAttr ".wm[8]" -type "matrix" -9.503189261851488e-017 -0.35718329161706774 0.93403431210507271 0
		 -1 -4.5553158730228231e-016 -1.224646799147352e-016 0 4.0518114179436481e-016 -0.93403431210507282 -0.35718329161706791 0
		 2.2322751552179425e-014 173.27573142157379 -0.28231571008027712 1;
	setAttr ".wm[9]" -type "matrix" -9.503189261851488e-017 -0.35718329161706774 0.93403431210507271 0
		 -1 -4.5553158730228231e-016 -1.224646799147352e-016 0 4.0518114179436481e-016 -0.93403431210507282 -0.35718329161706791 0
		 2.2583616538601327e-014 168.63536305963541 11.85224761519383 1;
	setAttr ".wm[10]" -type "matrix" -1.3972801248396708e-016 -0.15889385524968355 0.98729567139934948 0
		 5.0727471941201534e-015 0.98729567139934959 0.15889385524968366 0 -1 4.9404924595819466e-015 7.6571373978538742e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".wm[11]" -type "matrix" -3.7632826194732667e-016 0.61881425755778952 0.7855373413423461 0
		 -4.1414995488702905e-016 -0.78553734134234621 0.61881425755778929 0 1 2.5884498452564454e-031 5.6655388976479796e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".wm[12]" -type "matrix" -3.2275963157201658e-016 0.16677499440355073 0.98599498033291 0
		 -1.5122627052370049e-015 0.98599498033291011 -0.1667749944035507 0 -1 -1.6098233857064768e-015 3.2162452993532791e-016 0
		 3.2825480625033379 180.84194023445102 5.8335376281821478 1;
	setAttr ".wm[13]" -type "matrix" -1.0307275815530381e-017 -0.16677499440355095 -0.98599498033291 0
		 -2.4845401834135584e-015 -0.98599498033291011 0.16677499440355073 0 -1 2.1649348980190556e-015 -1.2246467991473643e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".wm[14]" -type "matrix" 1.9523916371522508e-016 0.158893855249683 -0.98729567139934982 0
		 2.6988139782559432e-015 -0.98729567139934993 -0.15889385524968327 0 -1.0000000000000002 -2.9976021664879234e-015 -3.4450928483976527e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".wm[15]" -type "matrix" -5.1185015775279856e-016 -0.61881425755778929 -0.78553734134234587 0
		 1.9210534996199779e-016 0.78553734134234598 -0.61881425755778929 0 0.99999999999999978 -2.2204460492503185e-016 -6.5469143732287404e-016 0
		 -3.2825480625033401 180.84194023445102 5.8335376281821514 1;
	setAttr ".wm[16]" -type "matrix" 0.99995982348824519 -0.001131716495524057 -0.0088921666162716413 0
		 1.907894501920075e-016 -0.99199810455200399 0.12625276458450768 0 -0.0089638947649877763 -0.12624769218882742 -0.99195824952849576 0
		 1.9284487326965534 151.65293039111387 -5.148499375376292 1;
	setAttr ".wm[17]" -type "matrix" 0.46896235721420365 -0.86688044021777089 0.16909349450508576 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.022278438188901559 -0.17978027802913865 -0.98345448436805105 0
		 15.765482862299505 151.6418851403827 -5.2368686703076053 1;
	setAttr ".wm[18]" -type "matrix" 0.37373616766111623 -0.61229910399464371 0.69671449262186202 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.28415365257905989 -0.63944699017803441 -0.71439782227987803 0
		 32.573360217746 120.57239758584039 0.82353825473512465 1;
	setAttr ".wm[19]" -type "matrix" 0.16906534654528646 -0.72377849787201776 0.66900044440616624 0
		 -0.94536869129138268 -0.31104748818917893 -0.097608901321657712 0 0.27873813180751 -0.61594979187376009 -0.73682488270085689 0
		 43.42189841169472 102.79903019307156 21.04725337116799 1;
	setAttr ".wm[20]" -type "matrix" -0.34465562444885439 -0.33773603131847563 0.87586921037619392 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 0.032047621297172285 0.92825997479060851 0.370548740614421 0
		 42.211163141530989 100.73523491571032 24.983587933472492 1;
	setAttr ".wm[21]" -type "matrix" -0.34484409171294694 -0.49791622922809109 0.79571476113111872 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.029951659481727837 0.85311877034812367 0.52085627746432872 0
		 40.558462663076021 99.115715427397632 29.183575864519788 1;
	setAttr ".wm[22]" -type "matrix" -0.29328540931154723 -0.83204434565853314 0.47083529555739867 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.18384291713306478 0.53238558818461545 0.82629738430744659 0
		 39.207336173305812 97.164840167639397 32.30124938105017 1;
	setAttr ".wm[23]" -type "matrix" -0.29328540931154723 -0.83204434565853314 0.47083529555739867 0
		 0.93818199220884912 -0.15578123234518931 0.30910638483223019 0 -0.18384291713306478 0.53238558818461545 0.82629738430744659 0
		 38.106780270993262 94.042586940825998 34.068062686761849 1;
	setAttr ".wm[24]" -type "matrix" -0.080546429274852685 -0.7370944994579115 0.67097240748033904 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.90741956895426612 0.22431347735292059 0.35534939110218672 0
		 44.724482327386049 95.846695188986175 30.628567713279597 1;
	setAttr ".wm[25]" -type "matrix" -0.57655289533219101 -0.73575539987241789 0.35531781610643454 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.70532599574533095 -0.22866750711862557 0.67098912875993078 0
		 44.318398051808089 92.130546769501535 34.011353846414039 1;
	setAttr ".wm[26]" -type "matrix" -0.72355479316698801 -0.66327114167974377 0.19115400571247868 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.55350380547486044 -0.39204110737028247 0.73480426472410376 0
		 42.677127647479395 90.107140262283778 35.107188161294886 1;
	setAttr ".wm[27]" -type "matrix" -0.72355479316698801 -0.66327114167974377 0.19115400571247868 0
		 0.4124342354969156 -0.6374756173742897 -0.65078632333765551 0 0.55350380547486044 -0.39204110737028247 0.73480426472410376 0
		 40.525000617465537 88.212526176487756 35.702622224268069 1;
	setAttr ".wm[28]" -type "matrix" -0.13578114018754017 -0.86670453588455043 0.47998617630773194 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.93846189829719651 0.042779258945624808 0.3427232125906946 0
		 46.295360196549034 94.553860604600942 28.833948211574111 1;
	setAttr ".wm[29]" -type "matrix" -0.40778052466899989 -0.84045292993745324 0.35686680464877263 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.85607376801703317 -0.21597613312202157 0.46956577136198752 0
		 45.595600201249979 90.088005354580929 31.30750133126724 1;
	setAttr ".wm[30]" -type "matrix" -0.61520300344694567 -0.75606462367852623 0.22336416313210572 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.72157641115550841 -0.42587921097494236 0.54585197675129615 0
		 44.362946702720436 87.547650051697417 32.386341061435857 1;
	setAttr ".wm[31]" -type "matrix" -0.61520300344694567 -0.75606462367852623 0.22336416313210572 0
		 0.31757321583186887 -0.49698408674846839 -0.80756056745299121 0 0.72157641115550841 -0.42587921097494236 0.54585197675129615 0
		 41.800906961111792 84.399092421128799 33.316633932397629 1;
	setAttr ".wm[32]" -type "matrix" -0.13560408053601367 -0.91558568400926366 0.37856886900440029 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.96991892703737836 -0.044712961006492982 0.23928649375318417 0
		 47.028098896807037 93.309592810279298 26.769466938293093 1;
	setAttr ".wm[33]" -type "matrix" -0.61659128527440465 -0.76123774771386643 0.20082897793689361 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.76088525981715194 -0.51069901615354552 0.40030005782261152 0
		 46.424022711933468 89.230928623075712 28.455879597823955 1;
	setAttr ".wm[34]" -type "matrix" -0.71866044444693356 -0.68075412655802081 0.14177794173129341 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.66532575274875172 -0.61389755889635678 0.42481929088778608 0
		 44.644382208281201 87.033801350773018 29.03552350778368 1;
	setAttr ".wm[35]" -type "matrix" -0.71866044444693356 -0.68075412655802081 0.14177794173129341 0
		 0.20216035297912183 -0.39962933620458907 -0.8941071442103774 0 0.66532575274875172 -0.61389755889635678 0.42481929088778608 0
		 42.584809493283906 85.082861848906745 29.441836904794936 1;
	setAttr ".wm[36]" -type "matrix" -0.29499533285410084 -0.91976000353181364 0.25888084034446457 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.95549271836188543 -0.28491797763696103 0.07652065849611267 0
		 46.855283849138175 92.382299022112107 24.590391380859973 1;
	setAttr ".wm[37]" -type "matrix" -0.78988474637299833 -0.58976455249590587 0.1681066925097508 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.6132460099303958 -0.76112711861875049 0.21122225405379741 0
		 45.844648633385781 89.200024682298178 25.486057114510899 1;
	setAttr ".wm[38]" -type "matrix" -0.86350825475687432 -0.48481749276793895 0.1389442070506956 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.50432338356953477 -0.83191869601769808 0.23145022791345071 0
		 43.782651300214233 87.660441926674935 25.924900316933883 1;
	setAttr ".wm[39]" -type "matrix" -0.86350825475687432 -0.48481749276793895 0.1389442070506956 0
		 -0.0033791643512603997 -0.26993199499581771 -0.96287345966428284 0 0.50432338356953477 -0.83191869601769808 0.23145022791345071 0
		 41.901485262204574 86.604259548563192 26.227592412860144 1;
	setAttr ".wm[40]" -type "matrix" 0.37373616766111623 -0.61229910399464371 0.69671449262186202 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.28415365257905989 -0.63944699017803441 -0.71439782227987803 0
		 32.573360217745986 120.57239758584036 0.8235382547351312 1;
	setAttr ".wm[41]" -type "matrix" 0.37373616766111623 -0.61229910399464371 0.69671449262186202 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.28415365257905989 -0.63944699017803441 -0.71439782227987803 0
		 37.997629314720371 111.68571388945598 10.935395812951578 1;
	setAttr ".wm[42]" -type "matrix" 0.37373616766111623 -0.61229910399464371 0.69671449262186202 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.28415365257905989 -0.63944699017803441 -0.71439782227987803 0
		 43.421898411694713 102.79903019307152 21.047253371167972 1;
	setAttr ".wm[43]" -type "matrix" 0.46896235721420365 -0.86688044021777089 0.16909349450508576 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.022278438188901559 -0.17978027802913865 -0.98345448436805105 0
		 15.7654828622995 151.64188514038264 -5.2368686703075999 1;
	setAttr ".wm[44]" -type "matrix" 0.46896235721420365 -0.86688044021777089 0.16909349450508576 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.022278438188901559 -0.17978027802913865 -0.98345448436805105 0
		 24.169421540022753 136.10714136311151 -2.2066652077862488 1;
	setAttr ".wm[45]" -type "matrix" 0.46896235721420365 -0.86688044021777089 0.16909349450508576 0
		 -0.88293713179815991 -0.46497027216759712 0.064997440660610403 0 0.022278438188901559 -0.17978027802913865 -0.98345448436805105 0
		 32.573360217745993 120.57239758584036 0.82353825473512776 1;
	setAttr ".wm[46]" -type "matrix" 0.99995982348824497 0.00113171649552415 0.0088921666162716483 0
		 4.7534436458308627e-016 0.99199810455200399 -0.12625276458450774 0 -0.0089638947649879914 0.12624769218882745 0.99195824952849543 0
		 -1.9284487326965527 151.65293039111381 -5.1484993753762884 1;
	setAttr ".wm[47]" -type "matrix" 0.46896235721420382 0.86688044021777111 -0.16909349450508468 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.022278438188900802 0.17978027802913771 0.98345448436805094 0
		 -15.765482862299503 151.64188514038287 -5.2368686703076115 1;
	setAttr ".wm[48]" -type "matrix" 0.37373616766111678 0.61229910399464427 -0.69671449262186103 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.28415365257905939 0.63944699017803386 0.71439782227987836 0
		 -32.57336021774595 120.57239758584052 0.82353825473510867 1;
	setAttr ".wm[49]" -type "matrix" 0.16906534654528707 0.7237784978720182 -0.66900044440616513 0
		 -0.94536869129138246 0.31104748818917882 0.097608901321657449 0 0.27873813180750945 0.61594979187375942 0.73682488270085722 0
		 -43.421898411694727 102.79903019307193 21.047253371168207 1;
	setAttr ".wm[50]" -type "matrix" -0.080546429274852033 0.73709449945791194 -0.67097240748033826 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.90741956895426601 -0.22431347735292029 -0.35534939110218622 0
		 -44.724482327386106 95.846695188986487 30.628567713279722 1;
	setAttr ".wm[51]" -type "matrix" -0.57655289533219056 0.73575539987241811 -0.35531781610643398 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.70532599574533117 0.2286675071186263 -0.67098912875993011 0
		 -44.318398051808117 92.130546769501848 34.011353846414075 1;
	setAttr ".wm[52]" -type "matrix" -0.72355479316698768 0.66327114167974388 -0.19115400571247831 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.55350380547486078 0.39204110737028325 -0.73480426472410287 0
		 -42.677127647479445 90.107140262284162 35.107188161294985 1;
	setAttr ".wm[53]" -type "matrix" -0.72355479316698768 0.66327114167974388 -0.19115400571247831 0
		 0.41243423549691516 0.63747561737428926 0.65078632333765596 0 0.55350380547486078 0.39204110737028325 -0.73480426472410287 0
		 -40.525000617465579 88.212526176488126 35.702622224268168 1;
	setAttr ".wm[54]" -type "matrix" -0.13578114018753976 0.8667045358845511 -0.47998617630773127 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.93846189829719662 -0.042779258945624274 -0.34272321259069388 0
		 -46.29536019654919 94.553860604601198 28.833948211574192 1;
	setAttr ".wm[55]" -type "matrix" -0.4077805246689995 0.84045292993745369 -0.35686680464877218 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.8560737680170335 0.21597613312202232 -0.46956577136198663 0
		 -45.595600201250164 90.088005354581071 31.307501331267304 1;
	setAttr ".wm[56]" -type "matrix" -0.61520300344694534 0.75606462367852645 -0.22336416313210555 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.72157641115550875 0.42587921097494319 -0.54585197675129526 0
		 -44.362946702720635 87.547650051697588 32.386341061435857 1;
	setAttr ".wm[57]" -type "matrix" -0.61520300344694534 0.75606462367852645 -0.22336416313210555 0
		 0.31757321583186826 0.49698408674846767 0.80756056745299143 0 0.72157641115550875 0.42587921097494319 -0.54585197675129526 0
		 -41.800906961111984 84.399092421128969 33.316633932397593 1;
	setAttr ".wm[58]" -type "matrix" -0.29499533285410046 0.91976000353181431 -0.25888084034446412 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.95549271836188598 0.28491797763696131 -0.076520658496111893 0
		 -46.855283849138189 92.382299022112491 24.590391380860087 1;
	setAttr ".wm[59]" -type "matrix" -0.78988474637299833 0.5897645524959062 -0.16810669250975088 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.61324600993039657 0.76112711861875115 -0.21122225405379652 0
		 -45.844648633385752 89.200024682298547 25.486057114511013 1;
	setAttr ".wm[60]" -type "matrix" -0.86350825475687443 0.48481749276793917 -0.13894420705069582 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.50432338356953554 0.83191869601769874 -0.23145022791344982 0
		 -43.782651300214198 87.660441926675304 25.924900316934036 1;
	setAttr ".wm[61]" -type "matrix" -0.86350825475687443 0.48481749276793917 -0.13894420705069582 0
		 -0.0033791643512611769 0.2699319949958171 0.96287345966428295 0 0.50432338356953554 0.83191869601769874 -0.23145022791344982 0
		 -41.901485262204552 86.604259548563547 26.227592412860304 1;
	setAttr ".wm[62]" -type "matrix" -0.13560408053601355 0.91558568400926399 -0.37856886900439934 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.96991892703737836 0.044712961006493232 -0.23928649375318345 0
		 -47.02809889680713 93.309592810279696 26.769466938293114 1;
	setAttr ".wm[63]" -type "matrix" -0.61659128527440465 0.76123774771386654 -0.20082897793689314 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.76088525981715194 0.51069901615354596 -0.40030005782261047 0
		 -46.424022711933532 89.230928623076153 28.455879597823916 1;
	setAttr ".wm[64]" -type "matrix" -0.71866044444693367 0.68075412655802059 -0.14177794173129299 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.6653257527487515 0.61389755889635733 -0.42481929088778497 0
		 -44.644382208281264 87.033801350773444 29.035523507783662 1;
	setAttr ".wm[65]" -type "matrix" -0.71866044444693367 0.68075412655802059 -0.14177794173129299 0
		 0.20216035297912119 0.39962933620458863 0.89410714421037796 0 0.6653257527487515 0.61389755889635733 -0.42481929088778497 0
		 -42.584809493283984 85.082861848907186 29.441836904794911 1;
	setAttr ".wm[66]" -type "matrix" -0.34465562444885295 0.33773603131847585 -0.8758692103761927 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 0.032047621297172313 -0.92825997479060751 -0.37054874061442111 0
		 -42.211163141531003 100.73523491571071 24.983587933472609 1;
	setAttr ".wm[67]" -type "matrix" -0.3448440917129455 0.49791622922809109 -0.79571476113111739 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.029951659481727559 -0.85311877034812267 -0.52085627746432861 0
		 -40.558462663076085 99.115715427398058 29.183575864519895 1;
	setAttr ".wm[68]" -type "matrix" -0.29328540931154612 0.83204434565853269 -0.47083529555739756 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.18384291713306389 -0.53238558818461457 -0.82629738430744593 0
		 -39.207336173305876 97.164840167639966 32.301249381050333 1;
	setAttr ".wm[69]" -type "matrix" -0.29328540931154612 0.83204434565853269 -0.47083529555739756 0
		 0.93818199220884835 0.15578123234518934 -0.30910638483222896 0 -0.18384291713306389 -0.53238558818461457 -0.82629738430744593 0
		 -38.10678027099334 94.042586940826567 34.068062686762005 1;
	setAttr ".wm[70]" -type "matrix" 0.37373616766111678 0.61229910399464427 -0.69671449262186103 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.28415365257905939 0.63944699017803386 0.71439782227987836 0
		 -32.573360217745964 120.57239758584049 0.82353825473511333 1;
	setAttr ".wm[71]" -type "matrix" 0.37373616766111678 0.61229910399464427 -0.69671449262186103 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.28415365257905939 0.63944699017803386 0.71439782227987836 0
		 -37.997629314720399 111.68571388945612 10.935395812951619 1;
	setAttr ".wm[72]" -type "matrix" 0.37373616766111678 0.61229910399464427 -0.69671449262186103 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.28415365257905939 0.63944699017803386 0.71439782227987836 0
		 -43.421898411694727 102.79903019307193 21.047253371168221 1;
	setAttr ".wm[73]" -type "matrix" 0.46896235721420382 0.86688044021777111 -0.16909349450508468 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.022278438188900802 0.17978027802913771 0.98345448436805094 0
		 -15.765482862299523 151.64188514038287 -5.2368686703076062 1;
	setAttr ".wm[74]" -type "matrix" 0.46896235721420382 0.86688044021777111 -0.16909349450508468 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.022278438188900802 0.17978027802913771 0.98345448436805094 0
		 -24.169421540022739 136.10714136311174 -2.2066652077862705 1;
	setAttr ".wm[75]" -type "matrix" 0.46896235721420382 0.86688044021777111 -0.16909349450508468 0
		 -0.88293713179815958 0.46497027216759712 -0.064997440660610445 0 0.022278438188900802 0.17978027802913771 0.98345448436805094 0
		 -32.573360217745957 120.57239758584053 0.82353825473511089 1;
	setAttr ".wm[76]" -type "matrix" 0.022736736906670673 -0.99765037972180992 0.064627862689130663 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.085352398883703592 -0.066345629273669868 -0.99413943965677065 0
		 7.3141478862386498 105.9608365758652 -3.5828052607828993 1;
	setAttr ".wm[77]" -type "matrix" 0.016822195516287965 -0.99985131740386768 -0.0037890399525216112 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.086712196018655804 0.0023164128606444623 -0.99623071087629156 0
		 8.4849017182543118 53.571334741686528 -0.45588045131504762 1;
	setAttr ".wm[78]" -type "matrix" 0.086712196018655818 -0.0023164128606446848 0.99623071087629178 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 0.016822195516287948 -0.9998513174038679 -0.0037890399525218332 0
		 9.1713347078978895 12.772205500450653 -0.61049297006550374 1;
	setAttr ".wm[79]" -type "matrix" 0.040334569316809586 0.032267627247979679 0.9986650703563299 0
		 -0.99918617032857848 0.00095671098870978022 0.040324703696284318 0 0.00034574866090629833 -0.9994788066466791 0.032279955421189048 0
		 9.8366425206254586 4.9034354734553238 16.061532925144292 1;
	setAttr ".wm[80]" -type "matrix" 0.040334569316809586 0.032267627247979679 0.9986650703563299 0
		 -0.99918617032857848 0.00095671098870978022 0.040324703696284318 0 0.00034574866090629833 -0.9994788066466791 0.032279955421189048 0
		 9.8366425206248387 4.9034354734907604 24.912467171764373 1;
	setAttr ".wm[81]" -type "matrix" 0.016822195516287965 -0.99985131740386768 -0.0037890399525216112 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.086712196018655804 0.0023164128606444623 -0.99623071087629156 0
		 8.4849017182543083 53.571334741686542 -0.4558804513150474 1;
	setAttr ".wm[82]" -type "matrix" 0.016822195516287965 -0.99985131740386768 -0.0037890399525216112 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.086712196018655804 0.0023164128606444623 -0.99623071087629156 0
		 8.8281182130707716 33.171770121068761 -0.53318671075154711 1;
	setAttr ".wm[83]" -type "matrix" 0.016822195516287965 -0.99985131740386768 -0.0037890399525216112 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.086712196018655804 0.0023164128606444623 -0.99623071087629156 0
		 9.1713347078978824 12.772205500450649 -0.61049297006550318 1;
	setAttr ".wm[84]" -type "matrix" 0.022301860343670273 -0.99797525442960133 0.059565246338646544 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.085467059301098186 -0.061265114289970675 -0.99445561366280166 0
		 7.3141478862386515 105.96083657586522 -3.5828052607828957 1;
	setAttr ".wm[85]" -type "matrix" 0.022736736906670645 -0.99765037972180981 0.06462786268913033 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.085352398883703606 -0.066345629273669535 -0.99413943965677076 0
		 7.8995248022464777 79.766085658775879 -2.0193428560489721 1;
	setAttr ".wm[86]" -type "matrix" 0.022301860343670273 -0.99797525442960122 0.059565246338646537 0
		 -0.99609136568872736 -0.017087343772777194 0.08666033627419735 0 -0.085467059301098186 -0.061265114289970668 -0.99445561366280177 0
		 8.4849017182543065 53.571334741686556 -0.45588045131504806 1;
	setAttr ".wm[87]" -type "matrix" 0.022736736906670687 0.99765037972181003 -0.064627862689130677 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.085352398883703925 0.066345629273669854 0.99413943965677065 0
		 -7.3141478862386515 105.9608365758652 -3.5828052607829015 1;
	setAttr ".wm[88]" -type "matrix" 0.016822195516287955 0.99985131740386779 0.0037890399525216251 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.086712196018656137 -0.0023164128606445039 0.99623071087629156 0
		 -8.4849017182543243 53.571334741686456 -0.45588045131504451 1;
	setAttr ".wm[89]" -type "matrix" 0.086712196018656151 0.0023164128606447264 -0.99623071087629178 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 0.016822195516287938 0.99985131740386801 0.0037890399525218471 0
		 -9.1713347078978895 12.772205500450582 -0.61049297006550218 1;
	setAttr ".wm[90]" -type "matrix" 0.040334569316809468 -0.032267627247979769 -0.99866507035633001 0
		 -0.99918617032857848 -0.00095671098870305643 -0.0403247036962842 0 0.00034574866091324763 0.99947880664667921 -0.032279955421188875 0
		 -9.8366425206254622 4.9034354734552323 16.061532925144302 1;
	setAttr ".wm[91]" -type "matrix" 0.040334569316809468 -0.032267627247979769 -0.99866507035633001 0
		 -0.99918617032857848 -0.00095671098870305643 -0.0403247036962842 0 0.00034574866091324763 0.99947880664667921 -0.032279955421188875 0
		 -9.8366425206248493 4.903435473490668 24.912467171764419 1;
	setAttr ".wm[92]" -type "matrix" 0.016822195516287955 0.99985131740386779 0.0037890399525216251 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.086712196018656137 -0.0023164128606445039 0.99623071087629156 0
		 -8.4849017182543225 53.571334741686464 -0.45588045131504479 1;
	setAttr ".wm[93]" -type "matrix" 0.016822195516287955 0.99985131740386779 0.0037890399525216251 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.086712196018656137 -0.0023164128606445039 0.99623071087629156 0
		 -8.8281182130707698 33.171770121068676 -0.53318671075154278 1;
	setAttr ".wm[94]" -type "matrix" 0.016822195516287955 0.99985131740386779 0.0037890399525216251 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.086712196018656137 -0.0023164128606445039 0.99623071087629156 0
		 -9.1713347078978877 12.772205500450578 -0.61049297006550196 1;
	setAttr ".wm[95]" -type "matrix" 0.022301860343670286 0.99797525442960144 -0.059565246338646564 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.085467059301098519 0.061265114289970668 0.99445561366280166 0
		 -7.3141478862386498 105.96083657586522 -3.5828052607828988 1;
	setAttr ".wm[96]" -type "matrix" 0.022736736906670659 0.99765037972180992 -0.06462786268913033 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.085352398883703939 0.066345629273669507 0.99413943965677076 0
		 -7.8995248022464875 79.766085658775864 -2.019342856048973 1;
	setAttr ".wm[97]" -type "matrix" 0.022301860343668423 0.99797525442960267 -0.05956524633862488 0
		 -0.99609136568872736 0.017087343772776965 -0.086660336274197447 0 -0.085467059301099019 0.061265114289948908 0.99445561366280311 0
		 -8.4849017182543189 53.571334741686442 -0.45588045131504362 1;
	setAttr ".wm[98]" -type "matrix" -1 0 -1.2246467991473532e-016 0 -1.2246467991473532e-016 2.2204460492503131e-016 1 0
		 2.4651903288156619e-032 1 -2.2204460492503131e-016 0 0 0 0 1;
	setAttr -s 99 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 3.1415926535897931
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 -7.4987989133092867e-033 -1.224646799147353e-016
		 1.2246467991473535e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3637865782839202e-014
		 -3.0590892180231162 111.36162518314998 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000000000011 -0.5 0.49999999999999989 0.50000000000000011 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.030518666374107 -1.2347961427618536e-014
		 -2.6645352591003757e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 -3.4694469519536142e-018 0 0 10.561426139785837
		 -1.293401671652012e-015 8.8817841970012523e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.011631352002538594 0 0.99993235353727461 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 -6.9388939039072284e-018 0 0 9.6405043480484096
		 7.7131473774880152e-015 5.0601883794243463e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.023004954662940977 0 0.99973535101093436 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 0.99999999999999989 0 -2.7755575615628914e-017
		 0 0 14.848146551287897 -3.6584963554661462e-015 0.25432361617600829 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.11814100876609396 0 0.99299682882058071 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 4.7184478546569153e-016 0 0 18.093331136750635
		 -2.0256407076276255e-014 1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.083681000433461661 0 0.99649259413527758 1 1 1.0000000000000002 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.95059358202243516 9.8841943416164409e-015
		 -1.2650362838259817 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.56692887930627223 3.4714381869331123e-017 0.82376674235400771 5.0441165213393894e-017 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.991560554050714 -1.4954775739413353e-015
		 8.5265128291212022e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.45855919594702044 0.53825966207066145 -0.53825966207065856 0.45855919594702288 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.63616315862320061 0.30870120765969267 0.30870120765969278 0.63616315862320028 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 3.2825480625033285
		 -7.3808896220884108 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.54008679728436981 0.45640579685090787 -0.45640579685090849 0.54008679728436915 1
		 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.45640579685090876 0.54008679728436881 -0.54008679728437003 -0.45640579685090749 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.53825966207065912 -0.45855919594702232 0.4585591959470211 0.53825966207066056 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.615615230854786 -3.2825480625033494
		 -7.3808896220884144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30870120765969239 -0.63616315862320028 -0.6361631586232005 0.30870120765969294 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 0.99999999999999989 0.99999999999999989 -9.7144514654701173e-017
		 6.9388939039072268e-018 6.5052130349130218e-019 0 10.166439863767607 1.9284487326965329
		 1.1642145060273679 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.017092425103000478 -0.02342831711370634 0.70690016905083453 0.70671855356798141 1
		 1 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -1.1796119636642286e-016 1.4224732503009813e-016
		 1.0733601507606489e-016 0 13.837276500425366 -0.00020000000037612153 -0.034980629270707553 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015184726211261428 0.027348818514755277 0.51482186867992152 0.85672627469025919 1
		 1.0000000000000002 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 -4.4408920985006246e-015 0 0 35.840568218077877
		 -2.9842794901924208e-013 -7.460698725481052e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.2967589937911303 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 9.7130335480373475e-009 -4.2685762410039055e-015
		 -3.1998557866983945e-010 0 29.027263435166276 4.2632564145606011e-014 3.2684965844964609e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0019136349502990736 -0.01635367877276921 0.11620681725525497 0.99308855134639318 1
		 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000004 1.0000000000000002 -1.1379786002407855e-015
		 2.2204460492503109e-016 -3.8857805861880494e-016 0 3.9224468392521104 1.4023082631538415
		 -1.9666730678996487 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93228695664245786 0.22083957692703868 -0.25527055911650554 0.13003020182010527 1
		 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 -8.3266726846886741e-017 0 0 4.7952227128103644
		 -2.4868995751603507e-014 1.1368683772161603e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.089557896156696459 0 0.9959816179207257 0.99999999999999956 0.99999999999999956
		 0.99999999999999978 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9180792776780962 -4.6185277824406512e-014
		 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.23443899156912285 0 0.97213083442099124 1
		 1 1 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7525081963536593 -4.2632564145606011e-014
		 -7.1054273576010019e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1 5.4817261840867104e-016 -1.6653345369377353e-016 1.9428902930940235e-016 0 11.662075939938532
		 -0.0041372777547934447 -2.4143817102610399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0.74898510365388482 0.11204085571783885 0.055395464084937757 0.65069155804682788 1
		 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 5.5511151231257827e-016 0 0 5.0416173532940434
		 -1.2079226507921703e-013 8.5265128291212022e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.29396514615418945 0 0.9558161396662781 1 1 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 2.7755575615628904e-016 0 0 2.8243809230391435
		 -0.10019777683376674 0.040349551879771184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.11598845017483096 0 0.99325056225810449 1 1 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9276442820741977 -0.0673409269194849
		 -0.010916407908474923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 0.99999999999999978 1 1.0000000000000002 3.4694469519536136e-017
		 8.3266726846886741e-017 -1.3877787807814457e-016 0 11.66278158057132 -0.91189224513512102
		 0.14212334930330428 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70879509749352421 0.079090991252074749 0.17611366128948591 0.67848220549924665 1
		 1 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-016 0 0 5.1528625156311136
		 -0.00031000000005576567 -1.2789769243681803e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.14985926035016278 0 0.98870733894682006 1.0000000000000002 1 0.99999999999999978 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 2.7755575615628914e-016 0 0 3.0227032349895211
		 -0.00017000000005396032 -1.9895196601282805e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.13035377461696829 0 0.99146754533020831 1 1 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.1644816726642517 -0.00011999999998835165
		 6.2172489379008766e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1 0.99999999999999978 1.0000000000000002 3.4694469519536165e-018
		 -5.5511151231257827e-017 -5.5511151231257827e-017 0 11.306097688688936 -1.0160623503138879
		 2.6339332266873186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66162215176050521 0.038276432292178031 0.22809187587802021 0.71327774337156158 1
		 1 1 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 3.3306690738754691e-016 0 0 4.4547050685016956
		 -9.2370555648813024e-014 -2.9132252166164108e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.26775149179667884 0 0.96348800648511079 1.0000000000000002 1.0000000000000002
		 1 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 5.5511151231257815e-017 0 0 2.8862563356863262
		 3.5527136788005009e-014 3.9968028886505635e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.071384086821748682 0 0.9974489020238706 1 1 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8658498364173539 9.9999994063182385e-007
		 3.4816594052244909e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000002 -2.4286128663675299e-017
		 -1.1102230246251565e-016 -1.3877787807814455e-017 0 10.490233441534897 -0.35155884018308825
		 4.7625265909811816 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.55281870401295663 0.040852551383058378 0.32221244177677505 0.76739930408046242 1
		 1 1 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 2.2204460492503131e-016 0 0 3.4569320276867472
		 2.8421709430404007e-014 0.0095695113456031322 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.30085398253662399 0 0.95367021616062475 1.0000000000000002 1.0000000000000002
		 1.0000000000000002 no;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 1.1102230246251565e-016 0 0 2.6105040547241316
		 -4.9737991503207013e-014 2.1316282072803006e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.065735753001022468 0 0.99783706624748536 1 1 1 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1785154081004237 2.8421709430404007e-014
		 2.0605739337042905e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8421709430404007e-014
		 -4.2632564145606011e-014 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.513631717583152 2.8421709430404007e-014
		 8.5265128291212022e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 14.513631717583131 4.2632564145606011e-014
		 2.4158453015843406e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8421709430404007e-014
		 2.8421709430404007e-014 1.0658141036401503e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.920284109039002 -1.2789769243681803e-013
		 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 17.920284109038789 -2.1316282072803006e-013
		 -7.815970093361102e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 6.9388939039072284e-018
		 0 0 0 10.166439863767522 -1.9284487326965722 1.1642145060273714 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.7069001690508343 0.70671855356798152 0.017092425103000602 0.02342831711370626 1
		 1 1 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 9.3675067702747953e-017 6.2831853071795853
		 -6.6266436782314021e-016 0 -13.837276500425361 0.00019999999975084393 0.034980629270709329 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.015184726211261426 0.02734881851475527 0.51482186867992152 0.85672627469025919 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 -7.7715611723760938e-016 0 0 -35.840568218077905
		 2.1316282072803006e-013 1.2434497875801753e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.29675899379113035 0 0.95495240698375949 1 1 1 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 9.7130340467703469e-009 -7.9614773255182436e-016
		 -3.1998567016293343e-010 0 -29.02726343516634 1.9895196601282805e-013 1.5631940186722204e-013 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.001913634950299079 -0.016353678772769255 0.11620681725525499 0.99308855134639318 1
		 1 1 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 -5.8980598183211441e-017 1.3877787807814472e-017
		 4.9960036108132044e-016 0 -11.662077020687626 0.00413685790067575 2.4143828121203086 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.74898510365388482 0.11204085571783888 0.055395464084937715 0.65069155804682788 1
		 1 1 no;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 0 3.3306690738754696e-016 0 0 -5.0416173532941002
		 -8.3886916968367586e-008 1.2130854543102032e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.29396514615418956 0 0.9558161396662781 1 1 1 no;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 2.2204460492503126e-016 0 0 -2.8243809246267659
		 0.10019773450740388 -0.040349545856642521 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.11598845017483096 0 0.99325056225810449 1 1 1 no;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.9276442820742119 0.067340926919499111
		 0.010916407908483805 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 6.0368376963992887e-016 3.3306690738754696e-016
		 -5.5511151231257728e-017 0 -11.66278262063522 0.91189184050607253 -0.14212224204936774 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70879509749352421 0.079090991252074805 0.17611366128948594 0.67848220549924665 1
		 1 1 no;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 0 0 0 0 -5.1528625156364711 0.00030991277426295483
		 5.6146376437027357e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.14985926035016278 0 0.98870733894682006 0.99999999999999978
		 0.99999999999999978 0.99999999999999956 no;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 1.6653345369377348e-016 0 0 -3.0227032349921359
		 0.00016995120226681593 3.2869706956262235e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.13035377461696829 0 0.99146754533020831 1 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.1644816726642233 0.00011999999997414079
		 -4.2632564145606011e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 4.1286418728248009e-016 -1.6653345369377353e-016
		 2.2898349882893849e-016 0 -10.490234408499248 0.35155846284044401 -4.762525468485272 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.55281870401295663 0.040852551383058378 0.32221244177677499 0.76739930408046242 1
		 1 1 no;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251565e-016 0 0 -3.4569320276319786
		 -5.3433169000527414e-008 -0.0095695311121062332 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.30085398253662399 0 0.95367021616062475 0.99999999999999956 0.99999999999999978
		 0.99999999999999956 no;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 -1.3877787807814457e-016 0 0 -2.6105040547242737
		 -2.7165320659605641e-008 -1.4926733626907662e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.065735753001022468 0 0.99783706624748536 1 1 1 no;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.1785154081004094 -1.4210854715202004e-014
		 -2.1316282072803006e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[62]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 4.5796699765787697e-016
		 -1.7477814245314157e-032 7.6327832942979488e-017 0 -11.306098689250028 1.0160619604548202
		 -2.6339321131612508 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.66162215176050498 0.038276432292178086 0.22809187587802021 0.71327774337156169 1
		 1 1 no;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 -1.1102230246251563e-016 0 0 -4.4547050685015535
		 -7.4736838939770678e-008 -9.572765691245877e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.2677514917966789 0 0.96348800648511079 1 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 -2.7755575615628907e-017 0 0 -2.8862563356863262
		 -4.0454914085330529e-008 -6.2023552960255302e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.071384086821748807 0 0.9974489020238706 1 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 0 0 0 0 -2.8658498364173397 -9.9999996905353328e-007
		 -3.4283687000424834e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 -4.3021142204224821e-016 -1.1102230246251568e-016
		 -5.5511151231257809e-017 0 -3.9224479131832766 -1.4023086818603048 1.966674284015582 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.93228695664245786 0.22083957692703854 -0.25527055911650565 0.13003020182010525 1
		 1 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 0 6.3837823915946501e-016 0 0 -4.7952227128103821
		 -1.5821676413452224e-008 7.9531773167218489e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.089557896156696473 0 0.9959816179207257 1.0000000000000002 1 1 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1 1 1 0 3.8857805861880479e-016 0 0 -3.9180792776781246
		 -1.2182262310034275e-008 6.4983865399881324e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.23443899156912285 0 0.97213083442099124 1 1 1 no;
	setAttr ".xm[69]" -type "matrix" "xform" 1 1 1 0 0 0 0 -3.7525081963536877 3.907985046680551e-014
		 7.1054273576010019e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[70]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4210854715202004e-014
		 2.8421709430404007e-014 1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[71]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.513631717583252 -1.4210854715202004e-014
		 -5.6843418860808015e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[72]" -type "matrix" "xform" 1 1 1 0 0 0 0 -14.513631717583102 1.5631940186722204e-013
		 1.8474111129762605e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[73]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.4210854715202004e-014
		 -1.4210854715202004e-014 -3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[74]" -type "matrix" "xform" 1 1 1 0 0 0 0 -17.920284109039073 1.4210854715202004e-014
		 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[75]" -type "matrix" "xform" 1 1 1 0 0 0 0 -17.920284109038903 1.8474111129762605e-013
		 1.1723955140041653e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[76]" -type "matrix" "xform" 1 1 1 9.7144514654701197e-017 1.3877787807814438e-017
		 3.7600131341797294e-016 0 -5.4007886072847953 7.3141478862386506 0.52371604275975647 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.032793087343778185 -0.043068475641448126 0.9984839990039035 0.0099711364226107348 1
		 1 1 no;
	setAttr ".xm[77]" -type "matrix" "xform" 1 1 1 0 2.0270451983606104e-012 0 0 52.49511198739134
		 -2.4868995751603507e-014 0.2672885405246106 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.034353669722520824 0 0.9994097384839693 1 1 1 no;
	setAttr ".xm[78]" -type "matrix" "xform" 1 1 1 0 2.0277113321753859e-012 0 0 40.805196263751675
		 -2.6645352591003757e-014 -2.4525553810050837e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0.70710678118654746 0 0.70710678118654768 1 1 1 no;
	setAttr ".xm[79]" -type "matrix" "xform" 1 1 1 1.4798753807680549e-009 2.0253092491399991e-012
		 6.3086813957664493e-010 0 16.685101830906344 0.91655238118800852 7.8156210437039055 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0093666621061891716 0.017476033992765153 0.023082564514930189 0.99953691732336036 1
		 1 1 no;
	setAttr ".xm[80]" -type "matrix" "xform" 1 1 1 0 2.0253382304602496e-012 0 0 8.8391188721217837
		 0.35691130093121437 0.28570776286379918 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[81]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.4210854715202004e-014
		 1.7763568394002505e-015 1.1102230246251565e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[82]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.402598131875742 -1.0658141036401503e-014
		 -3.0654978555588741e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[83]" -type "matrix" "xform" 1 1 1 0 0 0 0 20.402598131875941 -1.7763568394002505e-014
		 -2.1460044852261717e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[84]" -type "matrix" "xform" 1 1 1 0 -0.0050916403565938175 0 0 0
		 1.7763568394002505e-015 -1.7763568394002505e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[85]" -type "matrix" "xform" 1 1 1 0 0.0050916403565934854 0 0 26.247896228710644
		 -1.4210854715202004e-014 4.6274095666376525e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[86]" -type "matrix" "xform" 1 1 1 0 -0.0050916403565934906 0 0 26.247555993695684
		 -8.8817841970012523e-015 0.13364427026229331 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[87]" -type "matrix" "xform" 1 1 1 -9.4217168788990323e-017 -2.7755575615628914e-017
		 -8.6736173798840342e-017 0 -5.4007886072847811 -7.3141478862386542 0.52371604275976225 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9984839990039035 0.0099711364226109517 0.032793087343778199 0.043068475641448049 1
		 1 1 no;
	setAttr ".xm[88]" -type "matrix" "xform" 1 1 1 0 2.0276835765997699e-012 0 0 -52.495111987391432
		 3.5527136788005009e-014 -0.26728854052460749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.034353669722520838 0 0.9994097384839693 1 1 1 no;
	setAttr ".xm[89]" -type "matrix" "xform" 1 1 1 0 2.0279333767803105e-012 0 0 -40.80519626375164
		 8.8817841970012523e-015 2.4525087516380495e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.70710678118654746 0 0.70710678118654768 1 1 1 no;
	setAttr ".xm[90]" -type "matrix" "xform" 1 1 1 1.479877230308541e-009 2.0253776080858321e-012
		 6.3086889477766818e-010 0 -16.685101830906323 -0.91655238118802096 -7.8156210437039286 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0093666621061857004 0.017476033992765296 0.023082564514930355 0.99953691732336047 1
		 1 1 no;
	setAttr ".xm[91]" -type "matrix" "xform" 1 1 1 0 2.025393741598246e-012 0 0 -8.8391188721218086
		 -0.35691130093122148 -0.28570776286381783 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[92]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1054273576010019e-015
		 0 -2.4980018054066022e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[93]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.402598131875799 -7.1054273576010019e-015
		 3.0656754912428141e-011 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[94]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20.402598131875855 1.2434497875801753e-014
		 2.1459461985173789e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[95]" -type "matrix" "xform" 1 1 1 0 -0.0050916403565938115 0 0 1.4210854715202004e-014
		 0 2.6645352591003757e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[96]" -type "matrix" "xform" 1 1 1 0 0.0050916403565934663 0 0 -26.247896228710701
		 1.0658141036401503e-014 -4.6229686745391518e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[97]" -type "matrix" "xform" 1 1 1 0 -0.0050916403566152752 0 0 -26.247555993695755
		 1.2434497875801753e-014 -0.13364427026229331 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[98]" -type "matrix" "xform" 1 1 1 -1.5707963267948966 3.1415926535897931
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 90 ".m";
	setAttr -s 99 ".p";
	setAttr -s 99 ".g[0:98]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no yes;
	setAttr ".bp" yes;
createNode network -n "net_FK_hips_jnt";
	rename -uid "166E762A-47C6-C842-A6E6-E78CE8B9975B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "hips_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_Leg_l_leg";
	rename -uid "552C646D-42B4-6459-B67F-2BAFADA4E6A7";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -s false -ci true -sn "ctrl_elbow" -ln "ctrl_elbow" -nn "ctrl_elbow" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "STATE_IK" -ln "STATE_IK" -nn "STATE_IK" -at "float";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "sysIK" -ln "sysIK" -nn "sysIK" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "ctrl_attrs" -ln "ctrl_attrs" -nn "ctrl_attrs" -at "message";
	addAttr -ci true -sn "create_twist" -ln "create_twist" -nn "create_twist" -min 0 
		-max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "offset_ctrl_ik" -ln "offset_ctrl_ik" -nn "offset_ctrl_ik" 
		-at "matrix";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "STATE_FK" -ln "STATE_FK" -nn "STATE_FK" -at "float";
	addAttr -s false -ci true -m -sn "sys_twist" -ln "sys_twist" -nn "sys_twist" -at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attState" -ln "attState" -nn "attState" -at "float";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "sysFK" -ln "sysFK" -nn "sysFK" -at "message";
	setAttr ".globalScale" 1;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".STATE_IK" 1;
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_twist" yes;
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "Leg";
	setAttr ".offset_ctrl_ik" -type "matrix" 0.99999999999999967 -9.7144514654701197e-017 -2.3852447794681098e-017 0
		 4.163336342344337e-017 1 2.4391296274406393e-015 0 6.2016364266170854e-017 -2.7169022240314256e-015 1 0
		 -1.992850329202156e-014 1.7763568394002505e-015 3.5527136788005009e-015 1;
	setAttr "._class_namespace" -type "string" "Module.Limb.Leg";
	setAttr -s 2 ".sys_twist";
	setAttr ".canPinTo" yes;
	setAttr ".attState" 1;
	setAttr ".name" -type "string" "l_leg";
createNode network -n "net_LegIk_l_leg_ik";
	rename -uid "1CB9BFF3-4D4D-815D-E45A-0EAA6F3589A3";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "pivot_foot_heel_pos" -ln "pivot_foot_heel_pos" -nn "pivot_foot_heel_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_heel_posX" -ln "pivot_foot_heel_posX" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "pivot_foot_heel_posY" -ln "pivot_foot_heel_posY" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "pivot_foot_heel_posZ" -ln "pivot_foot_heel_posZ" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "pivot_toes_heel_pos" -ln "pivot_toes_heel_pos" -nn "pivot_toes_heel_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_toes_heel_posX" -ln "pivot_toes_heel_posX" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "pivot_toes_heel_posY" -ln "pivot_toes_heel_posY" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "pivot_toes_heel_posZ" -ln "pivot_toes_heel_posZ" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_inn" -ln "pivot_foot_inn" -nn "pivot_foot_inn" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_back_pos" -ln "pivot_foot_back_pos" -nn "pivot_foot_back_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_back_posX" -ln "pivot_foot_back_posX" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -ci true -sn "pivot_foot_back_posY" -ln "pivot_foot_back_posY" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -ci true -sn "pivot_foot_back_posZ" -ln "pivot_foot_back_posZ" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "pivot_foot_out_pos" -ln "pivot_foot_out_pos" -nn "pivot_foot_out_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_out_posX" -ln "pivot_foot_out_posX" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -ci true -sn "pivot_foot_out_posY" -ln "pivot_foot_out_posY" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -ci true -sn "pivot_foot_out_posZ" -ln "pivot_foot_out_posZ" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "pivot_foot_heel" -ln "pivot_foot_heel" -nn "pivot_foot_heel" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_front_pos" -ln "pivot_foot_front_pos" -nn "pivot_foot_front_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_front_posX" -ln "pivot_foot_front_posX" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -ci true -sn "pivot_foot_front_posY" -ln "pivot_foot_front_posY" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -ci true -sn "pivot_foot_front_posZ" -ln "pivot_foot_front_posZ" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -s false -ci true -sn "ctrl_ik" -ln "ctrl_ik" -nn "ctrl_ik" -at "message";
	addAttr -s false -ci true -sn "pivot_toes_heel" -ln "pivot_toes_heel" -nn "pivot_toes_heel" 
		-at "message";
	addAttr -s false -ci true -sn "pivot_foot_front" -ln "pivot_foot_front" -nn "pivot_foot_front" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_back" -ln "pivot_foot_back" -nn "pivot_foot_back" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_inn_pos" -ln "pivot_foot_inn_pos" -nn "pivot_foot_inn_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_inn_posX" -ln "pivot_foot_inn_posX" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -ci true -sn "pivot_foot_inn_posY" -ln "pivot_foot_inn_posY" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -ci true -sn "pivot_foot_inn_posZ" -ln "pivot_foot_inn_posZ" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -s false -ci true -sn "pivot_toes_ankle" -ln "pivot_toes_ankle" -nn "pivot_toes_ankle" 
		-at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "ctrl_swivel" -ln "ctrl_swivel" -nn "ctrl_swivel" 
		-at "message";
	addAttr -s false -ci true -sn "pivot_foot_out" -ln "pivot_foot_out" -nn "pivot_foot_out" 
		-at "message";
	addAttr -ci true -sn "swivelDistance" -ln "swivelDistance" -nn "swivelDistance" 
		-at "float";
	addAttr -s false -ci true -sn "pivot_foot_toes_fk" -ln "pivot_foot_toes_fk" -nn "pivot_foot_toes_fk" 
		-at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_ankle" -ln "pivot_foot_ankle" -nn "pivot_foot_ankle" 
		-at "message";
	addAttr -ci true -sn "attrAutoRollThreshold" -ln "attrAutoRollThreshold" -nn "attrAutoRollThreshold" 
		-at "float";
	addAttr -ci true -sn "pivot_toes_ankle_pos" -ln "pivot_toes_ankle_pos" -nn "pivot_toes_ankle_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_toes_ankle_posX" -ln "pivot_toes_ankle_posX" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "pivot_toes_ankle_posY" -ln "pivot_toes_ankle_posY" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "pivot_toes_ankle_posZ" -ln "pivot_toes_ankle_posZ" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "chain_length" -ln "chain_length" -nn "chain_length" -at "float";
	setAttr ".pivot_foot_heel_pos" -type "double3" -1.7347841262817383 -12.772205352783203 
		0.11456893384456635 ;
	setAttr ".globalScale" 1;
	setAttr ".pivot_toes_heel_pos" -type "double3" -1.7347841262817383 -12.772205352783203 
		0.11456893384456635 ;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".pivot_foot_back_pos" -type "double3" -2.394960880279541 -12.772205352783203 
		-6.1954388618469238 ;
	setAttr ".pivot_foot_out_pos" -type "double3" 2.051682710647583 -12.772205352783203 
		16.49317741394043 ;
	setAttr ".iCtrlIndex" 2;
	setAttr ".pivot_foot_front_pos" -type "double3" 0.92244762182235718 -12.772205352783203 
		25.512542724609375 ;
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "LegIk";
	setAttr ".pivot_foot_inn_pos" -type "double3" -1.7379440069198608 -12.772205352783203 
		16.889663696289063 ;
	setAttr "._class_namespace" -type "string" "Module.IK.LegIk";
	setAttr ".swivelDistance" 93.300987243652344;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_leg_ik";
	setAttr ".attrAutoRollThreshold" 25;
	setAttr ".pivot_toes_ankle_pos" -type "double3" 0.23063932359218597 -7.868769645690918 
		16.68370246887207 ;
	setAttr ".chain_length" 93.300987243652344;
createNode network -n "net_Twistbone_l_leg_bend_thigh_jnt";
	rename -uid "F1CC9B73-4049-4BE3-C9DD-ACA3CF09887B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "l_leg_bend_thigh_jnt";
createNode network -n "net_Twistbone_l_leg_bend_calf_jnt";
	rename -uid "804ADFDF-4173-DBFD-A6D8-C98219DBEEF4";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "l_leg_bend_calf_jnt";
createNode network -n "net_FK_l_leg_fk";
	rename -uid "38CCEDEA-4D44-08D6-9E06-0E94DBEBCE23";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_leg_fk";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_Leg_r_leg";
	rename -uid "F88D45FD-4D22-80CA-BB7A-6FB0C765B1DB";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -s false -ci true -sn "ctrl_elbow" -ln "ctrl_elbow" -nn "ctrl_elbow" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "STATE_IK" -ln "STATE_IK" -nn "STATE_IK" -at "float";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "sysIK" -ln "sysIK" -nn "sysIK" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "ctrl_attrs" -ln "ctrl_attrs" -nn "ctrl_attrs" -at "message";
	addAttr -ci true -sn "create_twist" -ln "create_twist" -nn "create_twist" -min 0 
		-max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "offset_ctrl_ik" -ln "offset_ctrl_ik" -nn "offset_ctrl_ik" 
		-at "matrix";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "STATE_FK" -ln "STATE_FK" -nn "STATE_FK" -at "float";
	addAttr -s false -ci true -m -sn "sys_twist" -ln "sys_twist" -nn "sys_twist" -at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attState" -ln "attState" -nn "attState" -at "float";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "sysFK" -ln "sysFK" -nn "sysFK" -at "message";
	setAttr ".globalScale" 1;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".STATE_IK" 1;
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_twist" yes;
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "Leg";
	setAttr ".offset_ctrl_ik" -type "matrix" 0.99999999999999989 4.0245584642661925e-016 -1.2793585635328952e-016 0
		 1.3877787807814457e-017 1 -4.0115480381963664e-016 0 4.9092674370143641e-016 3.857049228617182e-016 1 0
		 -1.7208456881689926e-015 2.6645352591003757e-014 1.7763568394002505e-015 1;
	setAttr "._class_namespace" -type "string" "Module.Limb.Leg";
	setAttr -s 2 ".sys_twist";
	setAttr ".canPinTo" yes;
	setAttr ".attState" 1;
	setAttr ".name" -type "string" "r_leg";
createNode network -n "net_LegIk_r_leg_ik";
	rename -uid "BD7B8DB5-4095-9286-7EA3-E1A0B4768856";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "pivot_foot_heel_pos" -ln "pivot_foot_heel_pos" -nn "pivot_foot_heel_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_heel_posX" -ln "pivot_foot_heel_posX" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "pivot_foot_heel_posY" -ln "pivot_foot_heel_posY" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "pivot_foot_heel_posZ" -ln "pivot_foot_heel_posZ" -at "double" 
		-p "pivot_foot_heel_pos";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "pivot_toes_heel_pos" -ln "pivot_toes_heel_pos" -nn "pivot_toes_heel_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_toes_heel_posX" -ln "pivot_toes_heel_posX" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "pivot_toes_heel_posY" -ln "pivot_toes_heel_posY" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "pivot_toes_heel_posZ" -ln "pivot_toes_heel_posZ" -at "double" 
		-p "pivot_toes_heel_pos";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_inn" -ln "pivot_foot_inn" -nn "pivot_foot_inn" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_back_pos" -ln "pivot_foot_back_pos" -nn "pivot_foot_back_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_back_posX" -ln "pivot_foot_back_posX" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -ci true -sn "pivot_foot_back_posY" -ln "pivot_foot_back_posY" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -ci true -sn "pivot_foot_back_posZ" -ln "pivot_foot_back_posZ" -at "double" 
		-p "pivot_foot_back_pos";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "pivot_foot_out_pos" -ln "pivot_foot_out_pos" -nn "pivot_foot_out_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_out_posX" -ln "pivot_foot_out_posX" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -ci true -sn "pivot_foot_out_posY" -ln "pivot_foot_out_posY" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -ci true -sn "pivot_foot_out_posZ" -ln "pivot_foot_out_posZ" -at "double" 
		-p "pivot_foot_out_pos";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "pivot_foot_heel" -ln "pivot_foot_heel" -nn "pivot_foot_heel" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_front_pos" -ln "pivot_foot_front_pos" -nn "pivot_foot_front_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_front_posX" -ln "pivot_foot_front_posX" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -ci true -sn "pivot_foot_front_posY" -ln "pivot_foot_front_posY" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -ci true -sn "pivot_foot_front_posZ" -ln "pivot_foot_front_posZ" -at "double" 
		-p "pivot_foot_front_pos";
	addAttr -s false -ci true -sn "ctrl_ik" -ln "ctrl_ik" -nn "ctrl_ik" -at "message";
	addAttr -s false -ci true -sn "pivot_toes_heel" -ln "pivot_toes_heel" -nn "pivot_toes_heel" 
		-at "message";
	addAttr -s false -ci true -sn "pivot_foot_front" -ln "pivot_foot_front" -nn "pivot_foot_front" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_back" -ln "pivot_foot_back" -nn "pivot_foot_back" 
		-at "message";
	addAttr -ci true -sn "pivot_foot_inn_pos" -ln "pivot_foot_inn_pos" -nn "pivot_foot_inn_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_foot_inn_posX" -ln "pivot_foot_inn_posX" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -ci true -sn "pivot_foot_inn_posY" -ln "pivot_foot_inn_posY" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -ci true -sn "pivot_foot_inn_posZ" -ln "pivot_foot_inn_posZ" -at "double" 
		-p "pivot_foot_inn_pos";
	addAttr -s false -ci true -sn "pivot_toes_ankle" -ln "pivot_toes_ankle" -nn "pivot_toes_ankle" 
		-at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "ctrl_swivel" -ln "ctrl_swivel" -nn "ctrl_swivel" 
		-at "message";
	addAttr -s false -ci true -sn "pivot_foot_out" -ln "pivot_foot_out" -nn "pivot_foot_out" 
		-at "message";
	addAttr -ci true -sn "swivelDistance" -ln "swivelDistance" -nn "swivelDistance" 
		-at "float";
	addAttr -s false -ci true -sn "pivot_foot_toes_fk" -ln "pivot_foot_toes_fk" -nn "pivot_foot_toes_fk" 
		-at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "pivot_foot_ankle" -ln "pivot_foot_ankle" -nn "pivot_foot_ankle" 
		-at "message";
	addAttr -ci true -sn "attrAutoRollThreshold" -ln "attrAutoRollThreshold" -nn "attrAutoRollThreshold" 
		-at "float";
	addAttr -ci true -sn "pivot_toes_ankle_pos" -ln "pivot_toes_ankle_pos" -nn "pivot_toes_ankle_pos" 
		-at "double3" -nc 3;
	addAttr -ci true -sn "pivot_toes_ankle_posX" -ln "pivot_toes_ankle_posX" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "pivot_toes_ankle_posY" -ln "pivot_toes_ankle_posY" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "pivot_toes_ankle_posZ" -ln "pivot_toes_ankle_posZ" -at "double" 
		-p "pivot_toes_ankle_pos";
	addAttr -ci true -sn "chain_length" -ln "chain_length" -nn "chain_length" -at "float";
	setAttr ".pivot_foot_heel_pos" -type "double3" 1.7347841262817383 -12.772205352783203 
		0.11456893384456635 ;
	setAttr ".globalScale" 1;
	setAttr ".pivot_toes_heel_pos" -type "double3" 1.7347841262817383 -12.772205352783203 
		0.11456893384456635 ;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".pivot_foot_back_pos" -type "double3" 2.394960880279541 -12.772205352783203 
		-6.1954383850097656 ;
	setAttr ".pivot_foot_out_pos" -type "double3" 1.7379432916641235 -12.772205352783203 
		16.889663696289063 ;
	setAttr ".iCtrlIndex" 2;
	setAttr ".pivot_foot_front_pos" -type "double3" -0.92244762182235718 -12.772205352783203 
		25.512542724609375 ;
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "LegIk";
	setAttr ".pivot_foot_inn_pos" -type "double3" -2.0516831874847412 -12.772205352783203 
		16.49317741394043 ;
	setAttr "._class_namespace" -type "string" "Module.IK.LegIk";
	setAttr ".swivelDistance" 93.300987243652344;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_leg_ik";
	setAttr ".attrAutoRollThreshold" 25;
	setAttr ".pivot_toes_ankle_pos" -type "double3" -0.23063932359218597 -7.868769645690918 
		16.68370246887207 ;
	setAttr ".chain_length" 93.300987243652344;
createNode network -n "net_Twistbone_r_leg_bend_thigh_jnt";
	rename -uid "5E531DBF-4B6B-331A-CBEA-9BB1BF6408E5";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "r_leg_bend_thigh_jnt";
createNode network -n "net_Twistbone_r_leg_bend_calf_jnt";
	rename -uid "CB011AA8-4AF7-4292-1214-FF99F62E472A";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "r_leg_bend_calf_jnt";
createNode network -n "net_FK_r_leg_fk";
	rename -uid "72C9F981-44A6-3E03-401D-0B9134BEFAE6";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_leg_fk";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 5 ".input";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_FK_spine01_jnt";
	rename -uid "CAFBFC3A-4AA3-CC8A-103A-89BA2B626C8B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "spine01_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "FK";
createNode network -n "net_FK_neck_jnt";
	rename -uid "A7BCC489-4F22-4B90-75DA-62A369B0175B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "neck_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_neck_jnt_anm";
	rename -uid "C36E5783-48DF-3BDA-3077-A08B399B2577";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".rx" 7.0622501593165195e-031;
	setAttr ".rz" 1.2358937896353344e-030;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 3 ".targets_indexes[0:2]"  -3 -1 0;
createNode network -n "net_FK_head_jnt";
	rename -uid "5693D63A-48C9-04F1-6D4D-C9AA3630CB31";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "head_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_head_jnt_anm";
	rename -uid "D1C114E3-41E1-0D9F-D712-9C90B74ACF0D";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 2 ".targets";
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 4 ".targets_indexes[0:3]"  -3 -1 0 1;
createNode network -n "net_FK_l_clavicle_jnt";
	rename -uid "C498BC8E-42FA-00FA-0316-3CB5CA6F2609";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_clavicle_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_l_clavicle_jnt_anm";
	rename -uid "8ADE909B-4C3F-F947-7CC6-B1B4698850E3";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".ry" 9.9392334955922197e-017;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 3 ".targets_indexes[0:2]"  -3 -1 0;
createNode network -n "net_FK_r_clavicle_jnt";
	rename -uid "FADEDFD0-413E-7D03-1D1B-C3878042CB07";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_clavicle_jnt";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_r_clavicle_jnt_anm";
	rename -uid "0C4BA014-4308-46FD-5ABB-3DB2F5E3A413";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".tz" -3.5527136788005009e-015;
	setAttr ".tx" 2.2204460492503131e-016;
	setAttr ".rx" -1.5902773592947552e-015;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 3 ".targets_indexes[0:2]"  -3 -1 0;
createNode network -n "net_Arm_l_arm";
	rename -uid "9CE30DC1-47F4-E3FF-AF0F-84A36CD77092";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -s false -ci true -sn "ctrl_elbow" -ln "ctrl_elbow" -nn "ctrl_elbow" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "STATE_IK" -ln "STATE_IK" -nn "STATE_IK" -at "float";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "sysIK" -ln "sysIK" -nn "sysIK" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "ctrl_attrs" -ln "ctrl_attrs" -nn "ctrl_attrs" -at "message";
	addAttr -ci true -sn "create_twist" -ln "create_twist" -nn "create_twist" -min 0 
		-max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "offset_ctrl_ik" -ln "offset_ctrl_ik" -nn "offset_ctrl_ik" 
		-at "matrix";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "STATE_FK" -ln "STATE_FK" -nn "STATE_FK" -at "float";
	addAttr -s false -ci true -m -sn "sys_twist" -ln "sys_twist" -nn "sys_twist" -at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attState" -ln "attState" -nn "attState" -at "float";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "sysFK" -ln "sysFK" -nn "sysFK" -at "message";
	setAttr ".globalScale" 1;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".STATE_IK" 1;
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_twist" yes;
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "Arm";
	setAttr ".offset_ctrl_ik" -type "matrix" 1.0000000000000004 -2.9143354396410359e-016 2.2204460492503131e-016 0
		 1.6653345369377348e-016 1.0000000000000002 1.1102230246251565e-016 0 -6.6613381477509392e-016 9.7144514654701197e-017 1 0
		 -3.5527136788005009e-014 -1.4210854715202004e-014 0 1;
	setAttr "._class_namespace" -type "string" "Module.Limb.Arm";
	setAttr -s 2 ".sys_twist";
	setAttr ".canPinTo" yes;
	setAttr ".attState" 1;
	setAttr ".name" -type "string" "l_arm";
createNode network -n "net_ArmIk_l_arm_ik";
	rename -uid "24A4C9A6-4D7A-DC8A-C568-E8A8EF1E4C90";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "ctrl_ik" -ln "ctrl_ik" -nn "ctrl_ik" -at "message";
	addAttr -ci true -sn "chain_length" -ln "chain_length" -nn "chain_length" -at "float";
	addAttr -s false -ci true -sn "ctrl_swivel" -ln "ctrl_swivel" -nn "ctrl_swivel" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "swivelDistance" -ln "swivelDistance" -nn "swivelDistance" 
		-at "float";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_arm_ik";
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.IK.ArmIk";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".chain_length" 64.867828369140625;
	setAttr -s 3 ".input";
	setAttr ".swivelDistance" 64.867828369140625;
	setAttr "._class" -type "string" "ArmIk";
createNode network -n "net_ctrlikarm_l_arm_ik_anm";
	rename -uid "2EF95185-40CC-4E44-F405-E6813191265A";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 2 ".targets";
	setAttr ".tz" 1.4210854715202004e-014;
	setAttr ".tx" 2.1316282072803006e-014;
	setAttr ".ty" -1.4210854715202004e-014;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlIkArm";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlIk.CtrlIkArm";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 3 ".targets_indexes[0:2]"  -1 0 1;
createNode network -n "net_ctrlikswivel_l_arm_ik_swivel_anm";
	rename -uid "C355FD15-465E-0467-E41A-F78BCC5A4B6B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".targets";
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlIkSwivel";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlIkSwivel";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 4 ".targets_indexes[0:3]"  -1 0 1 2;
createNode network -n "net_Twistbone_l_arm_bend_upperarm_jnt";
	rename -uid "7F049936-40CB-2C1B-F23E-9D95876FC9E3";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "l_arm_bend_upperarm_jnt";
createNode network -n "net_Twistbone_l_arm_bend_forearm_jnt";
	rename -uid "9F7DA31F-405E-4F3C-8AD8-4CA7CA4476F4";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "l_arm_bend_forearm_jnt";
createNode network -n "net_FK_l_arm_fk";
	rename -uid "C85D787E-49BD-680D-F136-B1A11606CA95";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_arm_fk";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_l_arm_fk_upperarm_jnt_anm";
	rename -uid "77BB2293-4947-6212-9084-A0B13EEE10B2";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 2 ".targets";
	setAttr ".tz" 3.5527136788005009e-015;
	setAttr ".tx" -1.4210854715202004e-014;
	setAttr ".ty" 1.4210854715202004e-014;
	setAttr ".rx" 7.9513867964737758e-016;
	setAttr ".rz" 1.3914927026178006e-015;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 4 ".targets_indexes[0:3]"  -3 -1 0 1;
createNode network -n "net_Arm_r_arm";
	rename -uid "58C87AA0-4C69-20E7-AD8D-0383A97EA0FC";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -s false -ci true -sn "ctrl_elbow" -ln "ctrl_elbow" -nn "ctrl_elbow" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "STATE_IK" -ln "STATE_IK" -nn "STATE_IK" -at "float";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "sysIK" -ln "sysIK" -nn "sysIK" -at "message";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -s false -ci true -sn "ctrl_attrs" -ln "ctrl_attrs" -nn "ctrl_attrs" -at "message";
	addAttr -ci true -sn "create_twist" -ln "create_twist" -nn "create_twist" -min 0 
		-max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "offset_ctrl_ik" -ln "offset_ctrl_ik" -nn "offset_ctrl_ik" 
		-at "matrix";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "STATE_FK" -ln "STATE_FK" -nn "STATE_FK" -at "float";
	addAttr -s false -ci true -m -sn "sys_twist" -ln "sys_twist" -nn "sys_twist" -at "message";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attState" -ln "attState" -nn "attState" -at "float";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "sysFK" -ln "sysFK" -nn "sysFK" -at "message";
	setAttr ".globalScale" 1;
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".STATE_IK" 1;
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_twist" yes;
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "Arm";
	setAttr ".offset_ctrl_ik" -type "matrix" 1.0000000000000002 -1.3877787807814457e-017 5.5511151231257827e-017 0
		 3.6082248300317588e-016 1.0000000000000007 6.8001160258290838e-016 0 -5.5511151231257827e-016 -4.8572257327350599e-016 0.99999999999999978 0
		 4.2632564145606011e-014 -2.8421709430404007e-014 2.8421709430404007e-014 1;
	setAttr "._class_namespace" -type "string" "Module.Limb.Arm";
	setAttr -s 2 ".sys_twist";
	setAttr ".canPinTo" yes;
	setAttr ".attState" 1;
	setAttr ".name" -type "string" "r_arm";
createNode network -n "net_ArmIk_r_arm_ik";
	rename -uid "EF6AC3BC-49BD-CE84-7451-779CA3A81693";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "ctrl_ik" -ln "ctrl_ik" -nn "ctrl_ik" -at "message";
	addAttr -ci true -sn "chain_length" -ln "chain_length" -nn "chain_length" -at "float";
	addAttr -s false -ci true -sn "ctrl_swivel" -ln "ctrl_swivel" -nn "ctrl_swivel" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "swivelDistance" -ln "swivelDistance" -nn "swivelDistance" 
		-at "float";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_arm_ik";
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.IK.ArmIk";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".chain_length" 64.867828369140625;
	setAttr -s 3 ".input";
	setAttr ".swivelDistance" 64.867828369140625;
	setAttr "._class" -type "string" "ArmIk";
createNode network -n "net_ctrlikarm_r_arm_ik_anm";
	rename -uid "E4D2851A-4310-D63E-0DCA-BC8E0F6104AF";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 2 ".targets";
	setAttr ".tx" -7.1054273576010019e-015;
	setAttr ".ty" 1.4210854715202004e-014;
	setAttr ".rx" 1.5902774228222262e-014;
	setAttr ".ry" 2.3173007262618734e-030;
	setAttr ".rz" -1.669791285493008e-014;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlIkArm";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlIk.CtrlIkArm";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 3 ".targets_indexes[0:2]"  -1 0 1;
createNode network -n "net_ctrlikswivel_r_arm_ik_swivel_anm";
	rename -uid "D3FA7044-4223-E499-030E-2BB086D39A06";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".targets";
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlIkSwivel";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlIkSwivel";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 4 ".targets_indexes[0:3]"  -1 0 1 2;
createNode network -n "net_Twistbone_r_arm_bend_upperarm_jnt";
	rename -uid "37DECADF-4D64-33AB-28C7-33975806CF91";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "r_arm_bend_upperarm_jnt";
createNode network -n "net_Twistbone_r_arm_bend_forearm_jnt";
	rename -uid "01015F58-4752-9228-7D78-1CB90FC59378";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "create_bend" -ln "create_bend" -nn "create_bend" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "subjnts" -ln "subjnts" -nn "subjnts" -at "message";
	addAttr -ci true -sn "globalScale" -ln "globalScale" -nn "globalScale" -at "float";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "num_twist" -ln "num_twist" -nn "num_twist" -at "long";
	addAttr -ci true -sn "auto_skin" -ln "auto_skin" -nn "auto_skin" -min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	setAttr ".iCtrlIndex" 2;
	setAttr ".create_bend" yes;
	setAttr ".canPinTo" yes;
	setAttr ".globalScale" 1;
	setAttr "._class_namespace" -type "string" "Module.Twistbone";
	setAttr "._class_module" -type "string" "omtk";
	setAttr ".num_twist" 3;
	setAttr ".auto_skin" yes;
	setAttr -s 2 ".input";
	setAttr "._class" -type "string" "Twistbone";
	setAttr ".name" -type "string" "r_arm_bend_forearm_jnt";
createNode network -n "net_FK_r_arm_fk";
	rename -uid "3761E9A2-4ABC-B584-11A7-5E924CE8BDFB";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_arm_fk";
	setAttr "._class_namespace" -type "string" "Module.FK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "FK";
	setAttr ".create_spaceswitch" yes;
createNode network -n "net_ctrlfk_r_arm_fk_upperarm_jnt_anm";
	rename -uid "2F65C040-48AE-8747-A80C-D2ADC8E5FF2C";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "rotateOrder" -ln "rotateOrder" -nn "rotateOrder" -at "long";
	addAttr -ci true -sn "mirror_flip_pos_y" -ln "mirror_flip_pos_y" -nn "mirror_flip_pos_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -ci true -sn "mirror_flip_rot_y" -ln "mirror_flip_rot_y" -nn "mirror_flip_rot_y" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_rot_x" -ln "mirror_flip_rot_x" -nn "mirror_flip_rot_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -m -sn "targets" -ln "targets" -nn "targets" -at "message";
	addAttr -ci true -sn "tz" -ln "tz" -nn "tz" -at "float";
	addAttr -ci true -sn "tx" -ln "tx" -nn "tx" -at "float";
	addAttr -ci true -sn "ty" -ln "ty" -nn "ty" -at "float";
	addAttr -ci true -sn "rx" -ln "rx" -nn "rx" -at "float";
	addAttr -ci true -sn "ry" -ln "ry" -nn "ry" -at "float";
	addAttr -ci true -sn "rz" -ln "rz" -nn "rz" -at "float";
	addAttr -ci true -sn "local_index" -ln "local_index" -nn "local_index" -at "long";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "node" -ln "node" -nn "node" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "mirror_flip_rot_z" -ln "mirror_flip_rot_z" -nn "mirror_flip_rot_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_z" -ln "mirror_flip_pos_z" -nn "mirror_flip_pos_z" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_flip_pos_x" -ln "mirror_flip_pos_x" -nn "mirror_flip_pos_x" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "offset" -ln "offset" -nn "offset" -at "message";
	addAttr -ci true -sn "sz" -ln "sz" -nn "sz" -at "float";
	addAttr -ci true -sn "sy" -ln "sy" -nn "sy" -at "float";
	addAttr -ci true -sn "sx" -ln "sx" -nn "sx" -at "float";
	addAttr -ci true -sn "mirror_x" -ln "mirror_x" -nn "mirror_x" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_y" -ln "mirror_y" -nn "mirror_y" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirror_z" -ln "mirror_z" -nn "mirror_z" -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "targets_indexes" -ln "targets_indexes" -nn "targets_indexes" 
		-at "long";
	setAttr ".mirror_flip_pos_y" yes;
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 2 ".targets";
	setAttr ".tz" -3.5527136788005009e-015;
	setAttr ".rz" 9.9392338926389137e-016;
	setAttr ".local_index" -2;
	setAttr "._class" -type "string" "CtrlFk";
	setAttr "._class_namespace" -type "string" "Node.BaseCtrl.CtrlFk";
	setAttr ".mirror_flip_pos_z" yes;
	setAttr ".mirror_flip_pos_x" yes;
	setAttr ".sz" 1;
	setAttr ".sy" 1;
	setAttr ".sx" 1;
	setAttr -s 4 ".targets_indexes[0:3]"  -3 -1 0 1;
createNode network -n "net_Hand_r_hand";
	rename -uid "0A685121-4A59-8D91-D422-28ABFD332172";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -m -sn "sysFingers" -ln "sysFingers" -nn "sysFingers" 
		-at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr -s 5 ".sysFingers";
	setAttr "._class_namespace" -type "string" "Module.Hand";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 20 ".input";
	setAttr "._class" -type "string" "Hand";
createNode network -n "net_AdditiveFK_r_hand";
	rename -uid "655D1F78-4B9E-D191-5F81-5FA6B342CE9F";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_r_hand1";
	rename -uid "47580258-4BBA-56DB-BCCA-D0ABAF4FF473";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_r_hand2";
	rename -uid "2F984A60-4212-383A-9F52-CF9857F7B501";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_r_hand3";
	rename -uid "D6AF3F71-4766-3014-FB03-5D9243CD6A4F";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_r_hand4";
	rename -uid "DD0A244A-4AFD-9789-672A-808D28E3DCD9";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "r_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_Hand_l_hand";
	rename -uid "EA0C41C1-4709-B6B8-7DFD-718909E04325";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -s false -ci true -m -sn "sysFingers" -ln "sysFingers" -nn "sysFingers" 
		-at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -s false -ci true -sn "grp_rig" -ln "grp_rig" -nn "grp_rig" -at "message";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr -s 5 ".sysFingers";
	setAttr "._class_namespace" -type "string" "Module.Hand";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 20 ".input";
	setAttr "._class" -type "string" "Hand";
createNode network -n "net_AdditiveFK_l_hand";
	rename -uid "93ED7C41-44F6-0E42-ED21-54A817884647";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_l_hand1";
	rename -uid "96FE5A60-4657-0C79-EF0C-E7AEFCDE4557";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_l_hand2";
	rename -uid "FB6A47C9-4153-6DE0-D632-76883D7185AF";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_l_hand3";
	rename -uid "53CCD09D-485B-DB19-98BD-09979C7EED9B";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode network -n "net_AdditiveFK_l_hand4";
	rename -uid "3A4D755A-44EA-01FB-F2A8-D5B0305E9251";
	addAttr -ci true -sn "_uid" -ln "_uid" -nn "_uid" -at "long";
	addAttr -ci true -sn "iCtrlIndex" -ln "iCtrlIndex" -nn "iCtrlIndex" -at "long";
	addAttr -ci true -sn "canPinTo" -ln "canPinTo" -nn "canPinTo" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "locked" -ln "locked" -nn "locked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "name" -ln "name" -nn "name" -dt "string";
	addAttr -ci true -sn "num_ctrls" -ln "num_ctrls" -nn "num_ctrls" -at "long";
	addAttr -s false -ci true -sn "grp_anm" -ln "grp_anm" -nn "grp_anm" -at "message";
	addAttr -ci true -sn "_class_namespace" -ln "_class_namespace" -nn "_class_namespace" 
		-dt "string";
	addAttr -ci true -sn "_class_module" -ln "_class_module" -nn "_class_module" -dt "string";
	addAttr -s false -ci true -m -sn "additive_ctrls" -ln "additive_ctrls" -nn "additive_ctrls" 
		-at "message";
	addAttr -s false -ci true -m -sn "input" -ln "input" -nn "input" -at "message";
	addAttr -ci true -sn "sw_translate" -ln "sw_translate" -nn "sw_translate" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "_class" -ln "_class" -nn "_class" -dt "string";
	addAttr -ci true -sn "create_spaceswitch" -ln "create_spaceswitch" -nn "create_spaceswitch" 
		-min 0 -max 1 -at "bool";
	addAttr -s false -ci true -sn "rig" -ln "rig" -nn "rig" -at "message";
	addAttr -s false -ci true -m -sn "ctrls" -ln "ctrls" -nn "ctrls" -at "message";
	setAttr ".iCtrlIndex" 2;
	setAttr ".canPinTo" yes;
	setAttr ".name" -type "string" "l_hand";
	setAttr ".num_ctrls" 1;
	setAttr "._class_namespace" -type "string" "Module.FK.AdditiveFK";
	setAttr "._class_module" -type "string" "omtk";
	setAttr -s 3 ".input";
	setAttr "._class" -type "string" "AdditiveFK";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D0B9C6B7-4027-A868-4078-A5BCCC54BFC7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -719.52681197628522 -3067.7072162428458 ;
	setAttr ".tgi[0].vh" -type "double2" 1125.851287522757 -2111.4047220580051 ;
	setAttr -s 45 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[1].y" -4811.4287109375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1200;
	setAttr ".tgi[0].ni[2].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[3].y" -4681.4287109375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1182.857177734375;
	setAttr ".tgi[0].ni[4].y" -131.42857360839844;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[5].y" -2081.428466796875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[6].y" -4551.4287109375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[7].y" -261.42855834960937;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[8].y" -4421.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[9].y" -2211.428466796875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[10].y" -391.42855834960937;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[11].y" -4291.4287109375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1192.857177734375;
	setAttr ".tgi[0].ni[12].y" -521.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1194.2857666015625;
	setAttr ".tgi[0].ni[13].y" -4161.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[14].y" -651.4285888671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1175.7142333984375;
	setAttr ".tgi[0].ni[15].y" -4031.428466796875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[16].y" -781.4285888671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[17].y" -3901.428466796875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[18].y" -911.4285888671875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[19].y" -3771.428466796875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[20].y" -1041.4285888671875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[21].y" -3641.428466796875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1174.2857666015625;
	setAttr ".tgi[0].ni[22].y" -1171.4285888671875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[23].y" -2341.428466796875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[24].y" -2471.428466796875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[25].y" -3511.428466796875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[26].y" -1301.4285888671875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[27].y" -3381.428466796875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1181.4285888671875;
	setAttr ".tgi[0].ni[28].y" -1431.4285888671875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[29].y" -3251.428466796875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[30].y" -1561.4285888671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[31].y" -2601.428466796875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[32].y" -3121.428466796875;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[33].y" -1691.4285888671875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[34].y" -2991.428466796875;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1200;
	setAttr ".tgi[0].ni[35].y" -1821.4285888671875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[36].y" -2861.428466796875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[37].y" -1951.4285888671875;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[38].y" -2731.428466796875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[39].y" -2081.428466796875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[40].y" -2601.428466796875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[41].y" -2211.428466796875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[42].y" -2471.428466796875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[43].y" -2731.428466796875;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1221.4285888671875;
	setAttr ".tgi[0].ni[44].y" -2341.428466796875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
createNode partition -n "cryMaterials";
	rename -uid "BB1F73B7-432D-3201-9683-BAB11371F986";
	addAttr -ci true -sn "shouldExportArray" -ln "shouldExportArray" -dt "Int32Array";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "1465D356-4C36-0BFB-BB40-568E63F9CEEC";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -276.25565286801714 -14.285713718050976 ;
	setAttr ".tgi[0].vh" -type "double2" -32.077668213250867 221.42856262979097 ;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 13 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 40 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 30 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "root_jnt.s" "waist_jnt.is";
connectAttr "waist_jnt.s" "spine01_jnt.is";
connectAttr "spine01_jnt.s" "spine02_jnt.is";
connectAttr "spine02_jnt.s" "chest_jnt.is";
connectAttr "chest_jnt.s" "neck_jnt.is";
connectAttr "neck_jnt.s" "head_jnt.is";
connectAttr "head_jnt.s" "jaw_jnt.is";
connectAttr "jaw_jnt.s" "jaw_tip_jnt.is";
connectAttr "head_jnt.s" "l_lid_low_jnt.is";
connectAttr "head_jnt.s" "l_lid_upp_jnt.is";
connectAttr "head_jnt.s" "l_eye_jnt.is";
connectAttr "head_jnt.s" "r_eye_jnt.is";
connectAttr "head_jnt.s" "r_lid_low_jnt.is";
connectAttr "head_jnt.s" "r_lid_upp_jnt.is";
connectAttr "chest_jnt.s" "l_clavicle_jnt.is";
connectAttr "l_clavicle_jnt.s" "l_upperarm_jnt.is";
connectAttr "l_upperarm_jnt.s" "l_forearm_jnt.is";
connectAttr "l_forearm_jnt.s" "l_hand_jnt.is";
connectAttr "l_hand_jnt.s" "l_thumb01_jnt.is";
connectAttr "l_thumb01_jnt.s" "l_thumb02_jnt.is";
connectAttr "l_thumb02_jnt.s" "l_thumb03_jnt.is";
connectAttr "l_thumb03_jnt.s" "l_thumb04_jnt.is";
connectAttr "l_hand_jnt.s" "l_index01_jnt.is";
connectAttr "l_index01_jnt.s" "l_index02_jnt.is";
connectAttr "l_index02_jnt.s" "l_index03_jnt.is";
connectAttr "l_index03_jnt.s" "l_index04_jnt.is";
connectAttr "l_hand_jnt.s" "l_middle01_jnt.is";
connectAttr "l_middle01_jnt.s" "l_middle02_jnt.is";
connectAttr "l_middle02_jnt.s" "l_middle03_jnt.is";
connectAttr "l_middle03_jnt.s" "l_middle04_jnt.is";
connectAttr "l_hand_jnt.s" "l_ring01_jnt.is";
connectAttr "l_ring01_jnt.s" "l_ring02_jnt.is";
connectAttr "l_ring02_jnt.s" "l_ring03_jnt.is";
connectAttr "l_ring03_jnt.s" "l_ring04_jnt.is";
connectAttr "l_hand_jnt.s" "l_pinky01_jnt.is";
connectAttr "l_pinky01_jnt.s" "l_pinky02_jnt.is";
connectAttr "l_pinky02_jnt.s" "l_pinky03_jnt.is";
connectAttr "l_pinky03_jnt.s" "l_pinky04_jnt.is";
connectAttr "chest_jnt.s" "r_clavicle_jnt.is";
connectAttr "r_clavicle_jnt.s" "r_upperarm_jnt.is";
connectAttr "r_upperarm_jnt.s" "r_forearm_jnt.is";
connectAttr "r_forearm_jnt.s" "r_hand_jnt.is";
connectAttr "r_hand_jnt.s" "r_index01_jnt.is";
connectAttr "r_index01_jnt.s" "r_index02_jnt.is";
connectAttr "r_index02_jnt.s" "r_index03_jnt.is";
connectAttr "r_index03_jnt.s" "r_index04_jnt.is";
connectAttr "r_hand_jnt.s" "r_middle01_jnt.is";
connectAttr "r_middle01_jnt.s" "r_middle02_jnt.is";
connectAttr "r_middle02_jnt.s" "r_middle03_jnt.is";
connectAttr "r_middle03_jnt.s" "r_middle04_jnt.is";
connectAttr "r_hand_jnt.s" "r_pinky01_jnt.is";
connectAttr "r_pinky01_jnt.s" "r_pinky02_jnt.is";
connectAttr "r_pinky02_jnt.s" "r_pinky03_jnt.is";
connectAttr "r_pinky03_jnt.s" "r_pinky04_jnt.is";
connectAttr "r_hand_jnt.s" "r_ring01_jnt.is";
connectAttr "r_ring01_jnt.s" "r_ring02_jnt.is";
connectAttr "r_ring02_jnt.s" "r_ring03_jnt.is";
connectAttr "r_ring03_jnt.s" "r_ring04_jnt.is";
connectAttr "r_hand_jnt.s" "r_thumb01_jnt.is";
connectAttr "r_thumb01_jnt.s" "r_thumb02_jnt.is";
connectAttr "r_thumb02_jnt.s" "r_thumb03_jnt.is";
connectAttr "r_thumb03_jnt.s" "r_thumb04_jnt.is";
connectAttr "waist_jnt.s" "hips_jnt.is";
connectAttr "hips_jnt.s" "l_thigh_jnt.is";
connectAttr "l_thigh_jnt.s" "l_calf_jnt.is";
connectAttr "l_calf_jnt.s" "l_foot_jnt.is";
connectAttr "l_foot_jnt.s" "l_toes_jnt.is";
connectAttr "l_toes_jnt.s" "l_toestip_jnt.is";
connectAttr "hips_jnt.s" "r_thigh_jnt.is";
connectAttr "r_thigh_jnt.s" "r_calf_jnt.is";
connectAttr "r_calf_jnt.s" "r_foot_jnt.is";
connectAttr "r_foot_jnt.s" "r_toes_jnt.is";
connectAttr "r_toes_jnt.s" "r_toestip_jnt.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Box001SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG3.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG4.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG5.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG6.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG7.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG8.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "TrendySG9.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Box001SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG4.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG5.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG6.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG7.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG8.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "TrendySG9.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Box001SG.msg" "materialInfo1.sg";
connectAttr "TrendySG.msg" "materialInfo2.sg";
connectAttr "TrendySG1.msg" "materialInfo3.sg";
connectAttr "TrendySG2.msg" "materialInfo4.sg";
connectAttr "TrendySG3.msg" "materialInfo5.sg";
connectAttr "TrendySG4.msg" "materialInfo6.sg";
connectAttr "TrendySG5.msg" "materialInfo7.sg";
connectAttr "TrendySG6.msg" "materialInfo8.sg";
connectAttr "TrendySG7.msg" "materialInfo9.sg";
connectAttr "TrendySG8.msg" "materialInfo10.sg";
connectAttr "TrendySG9.msg" "materialInfo11.sg";
connectAttr "place2dTexture1.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.uv"
		;
connectAttr "place2dTexture1.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.ofu"
		;
connectAttr "place2dTexture1.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.ofv"
		;
connectAttr "place2dTexture1.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.rf"
		;
connectAttr "place2dTexture1.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.reu"
		;
connectAttr "place2dTexture1.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.rev"
		;
connectAttr "place2dTexture1.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.vt1"
		;
connectAttr "place2dTexture1.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.vt2"
		;
connectAttr "place2dTexture1.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.vt3"
		;
connectAttr "place2dTexture1.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.vc1"
		;
connectAttr "place2dTexture1.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.ws"
		;
connectAttr "place2dTexture2.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.uv"
		;
connectAttr "place2dTexture2.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.ofu"
		;
connectAttr "place2dTexture2.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.ofv"
		;
connectAttr "place2dTexture2.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.rf"
		;
connectAttr "place2dTexture2.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.reu"
		;
connectAttr "place2dTexture2.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.rev"
		;
connectAttr "place2dTexture2.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.vt1"
		;
connectAttr "place2dTexture2.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.vt2"
		;
connectAttr "place2dTexture2.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.vt3"
		;
connectAttr "place2dTexture2.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.vc1"
		;
connectAttr "place2dTexture2.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.oa" "bump2d1.bv"
		;
connectAttr "place2dTexture3.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.uv"
		;
connectAttr "place2dTexture3.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.ofu"
		;
connectAttr "place2dTexture3.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.ofv"
		;
connectAttr "place2dTexture3.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.rf"
		;
connectAttr "place2dTexture3.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.reu"
		;
connectAttr "place2dTexture3.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.rev"
		;
connectAttr "place2dTexture3.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.vt1"
		;
connectAttr "place2dTexture3.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.vt2"
		;
connectAttr "place2dTexture3.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.vt3"
		;
connectAttr "place2dTexture3.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.vc1"
		;
connectAttr "place2dTexture3.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.ws"
		;
connectAttr "place2dTexture4.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.uv"
		;
connectAttr "place2dTexture4.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.ofu"
		;
connectAttr "place2dTexture4.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.ofv"
		;
connectAttr "place2dTexture4.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.rf"
		;
connectAttr "place2dTexture4.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.reu"
		;
connectAttr "place2dTexture4.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.rev"
		;
connectAttr "place2dTexture4.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.vt1"
		;
connectAttr "place2dTexture4.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.vt2"
		;
connectAttr "place2dTexture4.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.vt3"
		;
connectAttr "place2dTexture4.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.vc1"
		;
connectAttr "place2dTexture4.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.ws"
		;
connectAttr "place2dTexture5.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.uv"
		;
connectAttr "place2dTexture5.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.ofu"
		;
connectAttr "place2dTexture5.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.ofv"
		;
connectAttr "place2dTexture5.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.rf"
		;
connectAttr "place2dTexture5.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.reu"
		;
connectAttr "place2dTexture5.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.rev"
		;
connectAttr "place2dTexture5.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.vt1"
		;
connectAttr "place2dTexture5.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.vt2"
		;
connectAttr "place2dTexture5.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.vt3"
		;
connectAttr "place2dTexture5.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.vc1"
		;
connectAttr "place2dTexture5.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.oa" "bump2d2.bv"
		;
connectAttr "place2dTexture6.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.uv"
		;
connectAttr "place2dTexture6.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.ofu"
		;
connectAttr "place2dTexture6.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.ofv"
		;
connectAttr "place2dTexture6.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.rf"
		;
connectAttr "place2dTexture6.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.reu"
		;
connectAttr "place2dTexture6.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.rev"
		;
connectAttr "place2dTexture6.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.vt1"
		;
connectAttr "place2dTexture6.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.vt2"
		;
connectAttr "place2dTexture6.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.vt3"
		;
connectAttr "place2dTexture6.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.vc1"
		;
connectAttr "place2dTexture6.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.ws"
		;
connectAttr "place2dTexture7.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.uv"
		;
connectAttr "place2dTexture7.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.ofu"
		;
connectAttr "place2dTexture7.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.ofv"
		;
connectAttr "place2dTexture7.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.rf"
		;
connectAttr "place2dTexture7.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.reu"
		;
connectAttr "place2dTexture7.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.rev"
		;
connectAttr "place2dTexture7.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.vt1"
		;
connectAttr "place2dTexture7.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.vt2"
		;
connectAttr "place2dTexture7.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.vt3"
		;
connectAttr "place2dTexture7.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.vc1"
		;
connectAttr "place2dTexture7.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.ws"
		;
connectAttr "place2dTexture8.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.uv"
		;
connectAttr "place2dTexture8.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.ofu"
		;
connectAttr "place2dTexture8.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.ofv"
		;
connectAttr "place2dTexture8.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.rf"
		;
connectAttr "place2dTexture8.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.reu"
		;
connectAttr "place2dTexture8.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.rev"
		;
connectAttr "place2dTexture8.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.vt1"
		;
connectAttr "place2dTexture8.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.vt2"
		;
connectAttr "place2dTexture8.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.vt3"
		;
connectAttr "place2dTexture8.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.vc1"
		;
connectAttr "place2dTexture8.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.oa" "bump2d3.bv"
		;
connectAttr "place2dTexture9.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.uv"
		;
connectAttr "place2dTexture9.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.ofu"
		;
connectAttr "place2dTexture9.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.ofv"
		;
connectAttr "place2dTexture9.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.rf"
		;
connectAttr "place2dTexture9.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.reu"
		;
connectAttr "place2dTexture9.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.rev"
		;
connectAttr "place2dTexture9.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.vt1"
		;
connectAttr "place2dTexture9.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.vt2"
		;
connectAttr "place2dTexture9.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.vt3"
		;
connectAttr "place2dTexture9.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.vc1"
		;
connectAttr "place2dTexture9.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.ws"
		;
connectAttr "place2dTexture10.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.uv"
		;
connectAttr "place2dTexture10.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.ofu"
		;
connectAttr "place2dTexture10.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.ofv"
		;
connectAttr "place2dTexture10.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.rf"
		;
connectAttr "place2dTexture10.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.reu"
		;
connectAttr "place2dTexture10.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.rev"
		;
connectAttr "place2dTexture10.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.vt1"
		;
connectAttr "place2dTexture10.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.vt2"
		;
connectAttr "place2dTexture10.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.vt3"
		;
connectAttr "place2dTexture10.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.vc1"
		;
connectAttr "place2dTexture10.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.ws"
		;
connectAttr "place2dTexture11.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.uv"
		;
connectAttr "place2dTexture11.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.ofu"
		;
connectAttr "place2dTexture11.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.ofv"
		;
connectAttr "place2dTexture11.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.rf"
		;
connectAttr "place2dTexture11.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.reu"
		;
connectAttr "place2dTexture11.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.rev"
		;
connectAttr "place2dTexture11.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.vt1"
		;
connectAttr "place2dTexture11.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.vt2"
		;
connectAttr "place2dTexture11.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.vt3"
		;
connectAttr "place2dTexture11.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.vc1"
		;
connectAttr "place2dTexture11.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.oa" "bump2d4.bv"
		;
connectAttr "place2dTexture12.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.uv"
		;
connectAttr "place2dTexture12.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.ofu"
		;
connectAttr "place2dTexture12.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.ofv"
		;
connectAttr "place2dTexture12.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.rf"
		;
connectAttr "place2dTexture12.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.reu"
		;
connectAttr "place2dTexture12.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.rev"
		;
connectAttr "place2dTexture12.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.vt1"
		;
connectAttr "place2dTexture12.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.vt2"
		;
connectAttr "place2dTexture12.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.vt3"
		;
connectAttr "place2dTexture12.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.vc1"
		;
connectAttr "place2dTexture12.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.ws"
		;
connectAttr "place2dTexture13.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.uv"
		;
connectAttr "place2dTexture13.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.ofu"
		;
connectAttr "place2dTexture13.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.ofv"
		;
connectAttr "place2dTexture13.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.rf"
		;
connectAttr "place2dTexture13.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.reu"
		;
connectAttr "place2dTexture13.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.rev"
		;
connectAttr "place2dTexture13.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.vt1"
		;
connectAttr "place2dTexture13.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.vt2"
		;
connectAttr "place2dTexture13.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.vt3"
		;
connectAttr "place2dTexture13.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.vc1"
		;
connectAttr "place2dTexture13.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.ws"
		;
connectAttr "place2dTexture14.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.uv"
		;
connectAttr "place2dTexture14.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.ofu"
		;
connectAttr "place2dTexture14.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.ofv"
		;
connectAttr "place2dTexture14.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.rf"
		;
connectAttr "place2dTexture14.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.reu"
		;
connectAttr "place2dTexture14.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.rev"
		;
connectAttr "place2dTexture14.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.vt1"
		;
connectAttr "place2dTexture14.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.vt2"
		;
connectAttr "place2dTexture14.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.vt3"
		;
connectAttr "place2dTexture14.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.vc1"
		;
connectAttr "place2dTexture14.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.oa" "bump2d5.bv"
		;
connectAttr "place2dTexture15.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.uv"
		;
connectAttr "place2dTexture15.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.ofu"
		;
connectAttr "place2dTexture15.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.ofv"
		;
connectAttr "place2dTexture15.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.rf"
		;
connectAttr "place2dTexture15.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.reu"
		;
connectAttr "place2dTexture15.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.rev"
		;
connectAttr "place2dTexture15.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.vt1"
		;
connectAttr "place2dTexture15.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.vt2"
		;
connectAttr "place2dTexture15.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.vt3"
		;
connectAttr "place2dTexture15.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.vc1"
		;
connectAttr "place2dTexture15.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.ws"
		;
connectAttr "place2dTexture16.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.uv"
		;
connectAttr "place2dTexture16.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.ofu"
		;
connectAttr "place2dTexture16.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.ofv"
		;
connectAttr "place2dTexture16.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.rf"
		;
connectAttr "place2dTexture16.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.reu"
		;
connectAttr "place2dTexture16.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.rev"
		;
connectAttr "place2dTexture16.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.vt1"
		;
connectAttr "place2dTexture16.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.vt2"
		;
connectAttr "place2dTexture16.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.vt3"
		;
connectAttr "place2dTexture16.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.vc1"
		;
connectAttr "place2dTexture16.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.ws"
		;
connectAttr "place2dTexture17.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.uv"
		;
connectAttr "place2dTexture17.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.ofu"
		;
connectAttr "place2dTexture17.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.ofv"
		;
connectAttr "place2dTexture17.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.rf"
		;
connectAttr "place2dTexture17.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.reu"
		;
connectAttr "place2dTexture17.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.rev"
		;
connectAttr "place2dTexture17.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.vt1"
		;
connectAttr "place2dTexture17.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.vt2"
		;
connectAttr "place2dTexture17.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.vt3"
		;
connectAttr "place2dTexture17.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.vc1"
		;
connectAttr "place2dTexture17.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.oa" "bump2d6.bv"
		;
connectAttr "place2dTexture18.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.uv"
		;
connectAttr "place2dTexture18.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.ofu"
		;
connectAttr "place2dTexture18.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.ofv"
		;
connectAttr "place2dTexture18.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.rf"
		;
connectAttr "place2dTexture18.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.reu"
		;
connectAttr "place2dTexture18.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.rev"
		;
connectAttr "place2dTexture18.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.vt1"
		;
connectAttr "place2dTexture18.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.vt2"
		;
connectAttr "place2dTexture18.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.vt3"
		;
connectAttr "place2dTexture18.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.vc1"
		;
connectAttr "place2dTexture18.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.ws"
		;
connectAttr "place2dTexture19.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.uv"
		;
connectAttr "place2dTexture19.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.ofu"
		;
connectAttr "place2dTexture19.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.ofv"
		;
connectAttr "place2dTexture19.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.rf"
		;
connectAttr "place2dTexture19.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.reu"
		;
connectAttr "place2dTexture19.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.rev"
		;
connectAttr "place2dTexture19.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.vt1"
		;
connectAttr "place2dTexture19.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.vt2"
		;
connectAttr "place2dTexture19.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.vt3"
		;
connectAttr "place2dTexture19.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.vc1"
		;
connectAttr "place2dTexture19.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.ws"
		;
connectAttr "place2dTexture20.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.uv"
		;
connectAttr "place2dTexture20.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.ofu"
		;
connectAttr "place2dTexture20.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.ofv"
		;
connectAttr "place2dTexture20.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.rf"
		;
connectAttr "place2dTexture20.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.reu"
		;
connectAttr "place2dTexture20.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.rev"
		;
connectAttr "place2dTexture20.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.vt1"
		;
connectAttr "place2dTexture20.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.vt2"
		;
connectAttr "place2dTexture20.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.vt3"
		;
connectAttr "place2dTexture20.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.vc1"
		;
connectAttr "place2dTexture20.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.oa" "bump2d7.bv"
		;
connectAttr "place2dTexture21.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.uv"
		;
connectAttr "place2dTexture21.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.ofu"
		;
connectAttr "place2dTexture21.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.ofv"
		;
connectAttr "place2dTexture21.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.rf"
		;
connectAttr "place2dTexture21.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.reu"
		;
connectAttr "place2dTexture21.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.rev"
		;
connectAttr "place2dTexture21.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.vt1"
		;
connectAttr "place2dTexture21.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.vt2"
		;
connectAttr "place2dTexture21.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.vt3"
		;
connectAttr "place2dTexture21.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.vc1"
		;
connectAttr "place2dTexture21.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.ws"
		;
connectAttr "place2dTexture22.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.uv"
		;
connectAttr "place2dTexture22.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.ofu"
		;
connectAttr "place2dTexture22.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.ofv"
		;
connectAttr "place2dTexture22.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.rf"
		;
connectAttr "place2dTexture22.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.reu"
		;
connectAttr "place2dTexture22.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.rev"
		;
connectAttr "place2dTexture22.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.vt1"
		;
connectAttr "place2dTexture22.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.vt2"
		;
connectAttr "place2dTexture22.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.vt3"
		;
connectAttr "place2dTexture22.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.vc1"
		;
connectAttr "place2dTexture22.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.ws"
		;
connectAttr "place2dTexture23.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.uv"
		;
connectAttr "place2dTexture23.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.ofu"
		;
connectAttr "place2dTexture23.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.ofv"
		;
connectAttr "place2dTexture23.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.rf"
		;
connectAttr "place2dTexture23.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.reu"
		;
connectAttr "place2dTexture23.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.rev"
		;
connectAttr "place2dTexture23.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.vt1"
		;
connectAttr "place2dTexture23.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.vt2"
		;
connectAttr "place2dTexture23.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.vt3"
		;
connectAttr "place2dTexture23.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.vc1"
		;
connectAttr "place2dTexture23.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.oa" "bump2d8.bv"
		;
connectAttr "place2dTexture24.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.uv"
		;
connectAttr "place2dTexture24.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.ofu"
		;
connectAttr "place2dTexture24.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.ofv"
		;
connectAttr "place2dTexture24.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.rf"
		;
connectAttr "place2dTexture24.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.reu"
		;
connectAttr "place2dTexture24.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.rev"
		;
connectAttr "place2dTexture24.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.vt1"
		;
connectAttr "place2dTexture24.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.vt2"
		;
connectAttr "place2dTexture24.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.vt3"
		;
connectAttr "place2dTexture24.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.vc1"
		;
connectAttr "place2dTexture24.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.ws"
		;
connectAttr "place2dTexture25.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.uv"
		;
connectAttr "place2dTexture25.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.ofu"
		;
connectAttr "place2dTexture25.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.ofv"
		;
connectAttr "place2dTexture25.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.rf"
		;
connectAttr "place2dTexture25.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.reu"
		;
connectAttr "place2dTexture25.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.rev"
		;
connectAttr "place2dTexture25.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.vt1"
		;
connectAttr "place2dTexture25.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.vt2"
		;
connectAttr "place2dTexture25.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.vt3"
		;
connectAttr "place2dTexture25.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.vc1"
		;
connectAttr "place2dTexture25.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.ws"
		;
connectAttr "place2dTexture26.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.uv"
		;
connectAttr "place2dTexture26.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.ofu"
		;
connectAttr "place2dTexture26.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.ofv"
		;
connectAttr "place2dTexture26.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.rf"
		;
connectAttr "place2dTexture26.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.reu"
		;
connectAttr "place2dTexture26.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.rev"
		;
connectAttr "place2dTexture26.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.vt1"
		;
connectAttr "place2dTexture26.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.vt2"
		;
connectAttr "place2dTexture26.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.vt3"
		;
connectAttr "place2dTexture26.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.vc1"
		;
connectAttr "place2dTexture26.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.oa" "bump2d9.bv"
		;
connectAttr "place2dTexture27.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.uv"
		;
connectAttr "place2dTexture27.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.ofu"
		;
connectAttr "place2dTexture27.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.ofv"
		;
connectAttr "place2dTexture27.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.rf"
		;
connectAttr "place2dTexture27.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.reu"
		;
connectAttr "place2dTexture27.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.rev"
		;
connectAttr "place2dTexture27.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.vt1"
		;
connectAttr "place2dTexture27.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.vt2"
		;
connectAttr "place2dTexture27.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.vt3"
		;
connectAttr "place2dTexture27.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.vc1"
		;
connectAttr "place2dTexture27.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.ws"
		;
connectAttr "place2dTexture28.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.uv"
		;
connectAttr "place2dTexture28.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.ofu"
		;
connectAttr "place2dTexture28.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.ofv"
		;
connectAttr "place2dTexture28.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.rf"
		;
connectAttr "place2dTexture28.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.reu"
		;
connectAttr "place2dTexture28.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.rev"
		;
connectAttr "place2dTexture28.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.vt1"
		;
connectAttr "place2dTexture28.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.vt2"
		;
connectAttr "place2dTexture28.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.vt3"
		;
connectAttr "place2dTexture28.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.vc1"
		;
connectAttr "place2dTexture28.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.ws"
		;
connectAttr "place2dTexture29.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.uv"
		;
connectAttr "place2dTexture29.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.ofu"
		;
connectAttr "place2dTexture29.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.ofv"
		;
connectAttr "place2dTexture29.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.rf"
		;
connectAttr "place2dTexture29.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.reu"
		;
connectAttr "place2dTexture29.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.rev"
		;
connectAttr "place2dTexture29.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.vt1"
		;
connectAttr "place2dTexture29.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.vt2"
		;
connectAttr "place2dTexture29.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.vt3"
		;
connectAttr "place2dTexture29.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.vc1"
		;
connectAttr "place2dTexture29.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.ws"
		;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.oa" "bump2d10.bv"
		;
connectAttr "place2dTexture30.o" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.uv"
		;
connectAttr "place2dTexture30.ofu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.ofu"
		;
connectAttr "place2dTexture30.ofv" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.ofv"
		;
connectAttr "place2dTexture30.rf" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.rf"
		;
connectAttr "place2dTexture30.reu" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.reu"
		;
connectAttr "place2dTexture30.rev" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.rev"
		;
connectAttr "place2dTexture30.vt1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.vt1"
		;
connectAttr "place2dTexture30.vt2" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.vt2"
		;
connectAttr "place2dTexture30.vt3" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.vt3"
		;
connectAttr "place2dTexture30.vc1" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.vc1"
		;
connectAttr "place2dTexture30.ofs" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.ws"
		;
connectAttr "root_jnt.msg" "bindPose13.m[0]";
connectAttr "hips_jnt.msg" "bindPose13.m[1]";
connectAttr "spine01_jnt.msg" "bindPose13.m[2]";
connectAttr "spine02_jnt.msg" "bindPose13.m[3]";
connectAttr "chest_jnt.msg" "bindPose13.m[4]";
connectAttr "neck_jnt.msg" "bindPose13.m[5]";
connectAttr "head_jnt.msg" "bindPose13.m[6]";
connectAttr "jaw_jnt.msg" "bindPose13.m[7]";
connectAttr "jaw_tip_jnt.msg" "bindPose13.m[8]";
connectAttr "l_lid_low_jnt.msg" "bindPose13.m[9]";
connectAttr "l_lid_upp_jnt.msg" "bindPose13.m[10]";
connectAttr "l_eye_jnt.msg" "bindPose13.m[11]";
connectAttr "r_eye_jnt.msg" "bindPose13.m[12]";
connectAttr "r_lid_low_jnt.msg" "bindPose13.m[13]";
connectAttr "r_lid_upp_jnt.msg" "bindPose13.m[14]";
connectAttr "l_clavicle_jnt.msg" "bindPose13.m[15]";
connectAttr "l_upperarm_jnt.msg" "bindPose13.m[16]";
connectAttr "l_forearm_jnt.msg" "bindPose13.m[17]";
connectAttr "l_hand_jnt.msg" "bindPose13.m[18]";
connectAttr "l_thumb01_jnt.msg" "bindPose13.m[19]";
connectAttr "l_thumb02_jnt.msg" "bindPose13.m[20]";
connectAttr "l_thumb03_jnt.msg" "bindPose13.m[21]";
connectAttr "l_thumb04_jnt.msg" "bindPose13.m[22]";
connectAttr "l_index01_jnt.msg" "bindPose13.m[23]";
connectAttr "l_index02_jnt.msg" "bindPose13.m[24]";
connectAttr "l_index03_jnt.msg" "bindPose13.m[25]";
connectAttr "l_index04_jnt.msg" "bindPose13.m[26]";
connectAttr "l_middle01_jnt.msg" "bindPose13.m[27]";
connectAttr "l_middle02_jnt.msg" "bindPose13.m[28]";
connectAttr "l_middle03_jnt.msg" "bindPose13.m[29]";
connectAttr "l_middle04_jnt.msg" "bindPose13.m[30]";
connectAttr "l_ring01_jnt.msg" "bindPose13.m[31]";
connectAttr "l_ring02_jnt.msg" "bindPose13.m[32]";
connectAttr "l_ring03_jnt.msg" "bindPose13.m[33]";
connectAttr "l_ring04_jnt.msg" "bindPose13.m[34]";
connectAttr "l_pinky01_jnt.msg" "bindPose13.m[35]";
connectAttr "l_pinky02_jnt.msg" "bindPose13.m[36]";
connectAttr "l_pinky03_jnt.msg" "bindPose13.m[37]";
connectAttr "l_pinky04_jnt.msg" "bindPose13.m[38]";
connectAttr "r_clavicle_jnt.msg" "bindPose13.m[39]";
connectAttr "r_upperarm_jnt.msg" "bindPose13.m[40]";
connectAttr "r_forearm_jnt.msg" "bindPose13.m[41]";
connectAttr "r_hand_jnt.msg" "bindPose13.m[42]";
connectAttr "r_index01_jnt.msg" "bindPose13.m[43]";
connectAttr "r_index02_jnt.msg" "bindPose13.m[44]";
connectAttr "r_index03_jnt.msg" "bindPose13.m[45]";
connectAttr "r_index04_jnt.msg" "bindPose13.m[46]";
connectAttr "r_middle01_jnt.msg" "bindPose13.m[47]";
connectAttr "r_middle02_jnt.msg" "bindPose13.m[48]";
connectAttr "r_middle03_jnt.msg" "bindPose13.m[49]";
connectAttr "r_middle04_jnt.msg" "bindPose13.m[50]";
connectAttr "r_pinky01_jnt.msg" "bindPose13.m[51]";
connectAttr "r_pinky02_jnt.msg" "bindPose13.m[52]";
connectAttr "r_pinky03_jnt.msg" "bindPose13.m[53]";
connectAttr "r_pinky04_jnt.msg" "bindPose13.m[54]";
connectAttr "r_ring01_jnt.msg" "bindPose13.m[55]";
connectAttr "r_ring02_jnt.msg" "bindPose13.m[56]";
connectAttr "r_ring03_jnt.msg" "bindPose13.m[57]";
connectAttr "r_ring04_jnt.msg" "bindPose13.m[58]";
connectAttr "r_thumb01_jnt.msg" "bindPose13.m[59]";
connectAttr "r_thumb02_jnt.msg" "bindPose13.m[60]";
connectAttr "r_thumb03_jnt.msg" "bindPose13.m[61]";
connectAttr "r_thumb04_jnt.msg" "bindPose13.m[62]";
connectAttr "l_thigh_jnt.msg" "bindPose13.m[63]";
connectAttr "l_calf_jnt.msg" "bindPose13.m[64]";
connectAttr "l_foot_jnt.msg" "bindPose13.m[65]";
connectAttr "l_toes_jnt.msg" "bindPose13.m[66]";
connectAttr "r_thigh_jnt.msg" "bindPose13.m[67]";
connectAttr "r_calf_jnt.msg" "bindPose13.m[68]";
connectAttr "r_foot_jnt.msg" "bindPose13.m[69]";
connectAttr "r_toes_jnt.msg" "bindPose13.m[70]";
connectAttr "l_toestip_jnt.msg" "bindPose13.m[96]";
connectAttr "r_toestip_jnt.msg" "bindPose13.m[97]";
connectAttr "bindPose13.m[95]" "bindPose13.p[0]";
connectAttr "bindPose13.m[0]" "bindPose13.p[1]";
connectAttr "bindPose13.m[1]" "bindPose13.p[2]";
connectAttr "bindPose13.m[2]" "bindPose13.p[3]";
connectAttr "bindPose13.m[3]" "bindPose13.p[4]";
connectAttr "bindPose13.m[4]" "bindPose13.p[5]";
connectAttr "bindPose13.m[5]" "bindPose13.p[6]";
connectAttr "bindPose13.m[6]" "bindPose13.p[7]";
connectAttr "bindPose13.m[7]" "bindPose13.p[8]";
connectAttr "bindPose13.m[6]" "bindPose13.p[9]";
connectAttr "bindPose13.m[6]" "bindPose13.p[10]";
connectAttr "bindPose13.m[6]" "bindPose13.p[11]";
connectAttr "bindPose13.m[6]" "bindPose13.p[12]";
connectAttr "bindPose13.m[6]" "bindPose13.p[13]";
connectAttr "bindPose13.m[6]" "bindPose13.p[14]";
connectAttr "bindPose13.m[4]" "bindPose13.p[15]";
connectAttr "bindPose13.m[15]" "bindPose13.p[16]";
connectAttr "bindPose13.m[16]" "bindPose13.p[17]";
connectAttr "bindPose13.m[17]" "bindPose13.p[18]";
connectAttr "bindPose13.m[18]" "bindPose13.p[19]";
connectAttr "bindPose13.m[19]" "bindPose13.p[20]";
connectAttr "bindPose13.m[20]" "bindPose13.p[21]";
connectAttr "bindPose13.m[21]" "bindPose13.p[22]";
connectAttr "bindPose13.m[18]" "bindPose13.p[23]";
connectAttr "bindPose13.m[23]" "bindPose13.p[24]";
connectAttr "bindPose13.m[24]" "bindPose13.p[25]";
connectAttr "bindPose13.m[25]" "bindPose13.p[26]";
connectAttr "bindPose13.m[18]" "bindPose13.p[27]";
connectAttr "bindPose13.m[27]" "bindPose13.p[28]";
connectAttr "bindPose13.m[28]" "bindPose13.p[29]";
connectAttr "bindPose13.m[29]" "bindPose13.p[30]";
connectAttr "bindPose13.m[18]" "bindPose13.p[31]";
connectAttr "bindPose13.m[31]" "bindPose13.p[32]";
connectAttr "bindPose13.m[32]" "bindPose13.p[33]";
connectAttr "bindPose13.m[33]" "bindPose13.p[34]";
connectAttr "bindPose13.m[18]" "bindPose13.p[35]";
connectAttr "bindPose13.m[35]" "bindPose13.p[36]";
connectAttr "bindPose13.m[36]" "bindPose13.p[37]";
connectAttr "bindPose13.m[37]" "bindPose13.p[38]";
connectAttr "bindPose13.m[4]" "bindPose13.p[39]";
connectAttr "bindPose13.m[39]" "bindPose13.p[40]";
connectAttr "bindPose13.m[40]" "bindPose13.p[41]";
connectAttr "bindPose13.m[41]" "bindPose13.p[42]";
connectAttr "bindPose13.m[42]" "bindPose13.p[43]";
connectAttr "bindPose13.m[43]" "bindPose13.p[44]";
connectAttr "bindPose13.m[44]" "bindPose13.p[45]";
connectAttr "bindPose13.m[45]" "bindPose13.p[46]";
connectAttr "bindPose13.m[42]" "bindPose13.p[47]";
connectAttr "bindPose13.m[47]" "bindPose13.p[48]";
connectAttr "bindPose13.m[48]" "bindPose13.p[49]";
connectAttr "bindPose13.m[49]" "bindPose13.p[50]";
connectAttr "bindPose13.m[42]" "bindPose13.p[51]";
connectAttr "bindPose13.m[51]" "bindPose13.p[52]";
connectAttr "bindPose13.m[52]" "bindPose13.p[53]";
connectAttr "bindPose13.m[53]" "bindPose13.p[54]";
connectAttr "bindPose13.m[42]" "bindPose13.p[55]";
connectAttr "bindPose13.m[55]" "bindPose13.p[56]";
connectAttr "bindPose13.m[56]" "bindPose13.p[57]";
connectAttr "bindPose13.m[57]" "bindPose13.p[58]";
connectAttr "bindPose13.m[42]" "bindPose13.p[59]";
connectAttr "bindPose13.m[59]" "bindPose13.p[60]";
connectAttr "bindPose13.m[60]" "bindPose13.p[61]";
connectAttr "bindPose13.m[61]" "bindPose13.p[62]";
connectAttr "bindPose13.m[1]" "bindPose13.p[63]";
connectAttr "bindPose13.m[63]" "bindPose13.p[64]";
connectAttr "bindPose13.m[64]" "bindPose13.p[65]";
connectAttr "bindPose13.m[65]" "bindPose13.p[66]";
connectAttr "bindPose13.m[1]" "bindPose13.p[67]";
connectAttr "bindPose13.m[67]" "bindPose13.p[68]";
connectAttr "bindPose13.m[68]" "bindPose13.p[69]";
connectAttr "bindPose13.m[69]" "bindPose13.p[70]";
connectAttr "bindPose13.m[67]" "bindPose13.p[71]";
connectAttr "bindPose13.m[71]" "bindPose13.p[72]";
connectAttr "bindPose13.m[72]" "bindPose13.p[73]";
connectAttr "bindPose13.m[68]" "bindPose13.p[74]";
connectAttr "bindPose13.m[74]" "bindPose13.p[75]";
connectAttr "bindPose13.m[75]" "bindPose13.p[76]";
connectAttr "bindPose13.m[16]" "bindPose13.p[77]";
connectAttr "bindPose13.m[77]" "bindPose13.p[78]";
connectAttr "bindPose13.m[78]" "bindPose13.p[79]";
connectAttr "bindPose13.m[17]" "bindPose13.p[80]";
connectAttr "bindPose13.m[80]" "bindPose13.p[81]";
connectAttr "bindPose13.m[81]" "bindPose13.p[82]";
connectAttr "bindPose13.m[40]" "bindPose13.p[83]";
connectAttr "bindPose13.m[83]" "bindPose13.p[84]";
connectAttr "bindPose13.m[84]" "bindPose13.p[85]";
connectAttr "bindPose13.m[41]" "bindPose13.p[86]";
connectAttr "bindPose13.m[86]" "bindPose13.p[87]";
connectAttr "bindPose13.m[87]" "bindPose13.p[88]";
connectAttr "bindPose13.m[63]" "bindPose13.p[89]";
connectAttr "bindPose13.m[89]" "bindPose13.p[90]";
connectAttr "bindPose13.m[90]" "bindPose13.p[91]";
connectAttr "bindPose13.m[64]" "bindPose13.p[92]";
connectAttr "bindPose13.m[92]" "bindPose13.p[93]";
connectAttr "bindPose13.m[93]" "bindPose13.p[94]";
connectAttr "bindPose13.w" "bindPose13.p[95]";
connectAttr "bindPose13.m[66]" "bindPose13.p[96]";
connectAttr "bindPose13.m[70]" "bindPose13.p[97]";
connectAttr "root_jnt.bps" "bindPose13.wm[0]";
connectAttr "hips_jnt.bps" "bindPose13.wm[1]";
connectAttr "spine01_jnt.bps" "bindPose13.wm[2]";
connectAttr "spine02_jnt.bps" "bindPose13.wm[3]";
connectAttr "chest_jnt.bps" "bindPose13.wm[4]";
connectAttr "neck_jnt.bps" "bindPose13.wm[5]";
connectAttr "head_jnt.bps" "bindPose13.wm[6]";
connectAttr "jaw_jnt.bps" "bindPose13.wm[7]";
connectAttr "jaw_tip_jnt.bps" "bindPose13.wm[8]";
connectAttr "l_lid_low_jnt.bps" "bindPose13.wm[9]";
connectAttr "l_lid_upp_jnt.bps" "bindPose13.wm[10]";
connectAttr "l_eye_jnt.bps" "bindPose13.wm[11]";
connectAttr "r_eye_jnt.bps" "bindPose13.wm[12]";
connectAttr "r_lid_low_jnt.bps" "bindPose13.wm[13]";
connectAttr "r_lid_upp_jnt.bps" "bindPose13.wm[14]";
connectAttr "l_clavicle_jnt.bps" "bindPose13.wm[15]";
connectAttr "l_upperarm_jnt.bps" "bindPose13.wm[16]";
connectAttr "l_forearm_jnt.bps" "bindPose13.wm[17]";
connectAttr "l_hand_jnt.bps" "bindPose13.wm[18]";
connectAttr "l_thumb01_jnt.bps" "bindPose13.wm[19]";
connectAttr "l_thumb02_jnt.bps" "bindPose13.wm[20]";
connectAttr "l_thumb03_jnt.bps" "bindPose13.wm[21]";
connectAttr "l_thumb04_jnt.bps" "bindPose13.wm[22]";
connectAttr "l_index01_jnt.bps" "bindPose13.wm[23]";
connectAttr "l_index02_jnt.bps" "bindPose13.wm[24]";
connectAttr "l_index03_jnt.bps" "bindPose13.wm[25]";
connectAttr "l_index04_jnt.bps" "bindPose13.wm[26]";
connectAttr "l_middle01_jnt.bps" "bindPose13.wm[27]";
connectAttr "l_middle02_jnt.bps" "bindPose13.wm[28]";
connectAttr "l_middle03_jnt.bps" "bindPose13.wm[29]";
connectAttr "l_middle04_jnt.bps" "bindPose13.wm[30]";
connectAttr "l_ring01_jnt.bps" "bindPose13.wm[31]";
connectAttr "l_ring02_jnt.bps" "bindPose13.wm[32]";
connectAttr "l_ring03_jnt.bps" "bindPose13.wm[33]";
connectAttr "l_ring04_jnt.bps" "bindPose13.wm[34]";
connectAttr "l_pinky01_jnt.bps" "bindPose13.wm[35]";
connectAttr "l_pinky02_jnt.bps" "bindPose13.wm[36]";
connectAttr "l_pinky03_jnt.bps" "bindPose13.wm[37]";
connectAttr "l_pinky04_jnt.bps" "bindPose13.wm[38]";
connectAttr "r_clavicle_jnt.bps" "bindPose13.wm[39]";
connectAttr "r_upperarm_jnt.bps" "bindPose13.wm[40]";
connectAttr "r_forearm_jnt.bps" "bindPose13.wm[41]";
connectAttr "r_hand_jnt.bps" "bindPose13.wm[42]";
connectAttr "r_index01_jnt.bps" "bindPose13.wm[43]";
connectAttr "r_index02_jnt.bps" "bindPose13.wm[44]";
connectAttr "r_index03_jnt.bps" "bindPose13.wm[45]";
connectAttr "r_index04_jnt.bps" "bindPose13.wm[46]";
connectAttr "r_middle01_jnt.bps" "bindPose13.wm[47]";
connectAttr "r_middle02_jnt.bps" "bindPose13.wm[48]";
connectAttr "r_middle03_jnt.bps" "bindPose13.wm[49]";
connectAttr "r_middle04_jnt.bps" "bindPose13.wm[50]";
connectAttr "r_pinky01_jnt.bps" "bindPose13.wm[51]";
connectAttr "r_pinky02_jnt.bps" "bindPose13.wm[52]";
connectAttr "r_pinky03_jnt.bps" "bindPose13.wm[53]";
connectAttr "r_pinky04_jnt.bps" "bindPose13.wm[54]";
connectAttr "r_ring01_jnt.bps" "bindPose13.wm[55]";
connectAttr "r_ring02_jnt.bps" "bindPose13.wm[56]";
connectAttr "r_ring03_jnt.bps" "bindPose13.wm[57]";
connectAttr "r_ring04_jnt.bps" "bindPose13.wm[58]";
connectAttr "r_thumb01_jnt.bps" "bindPose13.wm[59]";
connectAttr "r_thumb02_jnt.bps" "bindPose13.wm[60]";
connectAttr "r_thumb03_jnt.bps" "bindPose13.wm[61]";
connectAttr "r_thumb04_jnt.bps" "bindPose13.wm[62]";
connectAttr "l_thigh_jnt.bps" "bindPose13.wm[63]";
connectAttr "l_calf_jnt.bps" "bindPose13.wm[64]";
connectAttr "l_foot_jnt.bps" "bindPose13.wm[65]";
connectAttr "l_toes_jnt.bps" "bindPose13.wm[66]";
connectAttr "r_thigh_jnt.bps" "bindPose13.wm[67]";
connectAttr "r_calf_jnt.bps" "bindPose13.wm[68]";
connectAttr "r_foot_jnt.bps" "bindPose13.wm[69]";
connectAttr "r_toes_jnt.bps" "bindPose13.wm[70]";
connectAttr "l_toestip_jnt.bps" "bindPose13.wm[96]";
connectAttr "r_toestip_jnt.bps" "bindPose13.wm[97]";
connectAttr "root_jnt.msg" "bindPose14.m[1]";
connectAttr "hips_jnt.msg" "bindPose14.m[2]";
connectAttr "spine01_jnt.msg" "bindPose14.m[3]";
connectAttr "spine02_jnt.msg" "bindPose14.m[4]";
connectAttr "chest_jnt.msg" "bindPose14.m[5]";
connectAttr "neck_jnt.msg" "bindPose14.m[6]";
connectAttr "head_jnt.msg" "bindPose14.m[7]";
connectAttr "jaw_jnt.msg" "bindPose14.m[8]";
connectAttr "jaw_tip_jnt.msg" "bindPose14.m[9]";
connectAttr "l_lid_low_jnt.msg" "bindPose14.m[10]";
connectAttr "l_lid_upp_jnt.msg" "bindPose14.m[11]";
connectAttr "l_eye_jnt.msg" "bindPose14.m[12]";
connectAttr "r_eye_jnt.msg" "bindPose14.m[13]";
connectAttr "r_lid_low_jnt.msg" "bindPose14.m[14]";
connectAttr "r_lid_upp_jnt.msg" "bindPose14.m[15]";
connectAttr "l_clavicle_jnt.msg" "bindPose14.m[16]";
connectAttr "l_upperarm_jnt.msg" "bindPose14.m[17]";
connectAttr "l_forearm_jnt.msg" "bindPose14.m[18]";
connectAttr "l_hand_jnt.msg" "bindPose14.m[19]";
connectAttr "l_thumb01_jnt.msg" "bindPose14.m[20]";
connectAttr "l_thumb02_jnt.msg" "bindPose14.m[21]";
connectAttr "l_thumb03_jnt.msg" "bindPose14.m[22]";
connectAttr "l_thumb04_jnt.msg" "bindPose14.m[23]";
connectAttr "l_index01_jnt.msg" "bindPose14.m[24]";
connectAttr "l_index02_jnt.msg" "bindPose14.m[25]";
connectAttr "l_index03_jnt.msg" "bindPose14.m[26]";
connectAttr "l_index04_jnt.msg" "bindPose14.m[27]";
connectAttr "l_middle01_jnt.msg" "bindPose14.m[28]";
connectAttr "l_middle02_jnt.msg" "bindPose14.m[29]";
connectAttr "l_middle03_jnt.msg" "bindPose14.m[30]";
connectAttr "l_middle04_jnt.msg" "bindPose14.m[31]";
connectAttr "l_ring01_jnt.msg" "bindPose14.m[32]";
connectAttr "l_ring02_jnt.msg" "bindPose14.m[33]";
connectAttr "l_ring03_jnt.msg" "bindPose14.m[34]";
connectAttr "l_ring04_jnt.msg" "bindPose14.m[35]";
connectAttr "l_pinky01_jnt.msg" "bindPose14.m[36]";
connectAttr "l_pinky02_jnt.msg" "bindPose14.m[37]";
connectAttr "l_pinky03_jnt.msg" "bindPose14.m[38]";
connectAttr "l_pinky04_jnt.msg" "bindPose14.m[39]";
connectAttr "r_clavicle_jnt.msg" "bindPose14.m[46]";
connectAttr "r_upperarm_jnt.msg" "bindPose14.m[47]";
connectAttr "r_forearm_jnt.msg" "bindPose14.m[48]";
connectAttr "r_hand_jnt.msg" "bindPose14.m[49]";
connectAttr "r_index01_jnt.msg" "bindPose14.m[50]";
connectAttr "r_index02_jnt.msg" "bindPose14.m[51]";
connectAttr "r_index03_jnt.msg" "bindPose14.m[52]";
connectAttr "r_index04_jnt.msg" "bindPose14.m[53]";
connectAttr "r_middle01_jnt.msg" "bindPose14.m[54]";
connectAttr "r_middle02_jnt.msg" "bindPose14.m[55]";
connectAttr "r_middle03_jnt.msg" "bindPose14.m[56]";
connectAttr "r_middle04_jnt.msg" "bindPose14.m[57]";
connectAttr "r_pinky01_jnt.msg" "bindPose14.m[58]";
connectAttr "r_pinky02_jnt.msg" "bindPose14.m[59]";
connectAttr "r_pinky03_jnt.msg" "bindPose14.m[60]";
connectAttr "r_pinky04_jnt.msg" "bindPose14.m[61]";
connectAttr "r_ring01_jnt.msg" "bindPose14.m[62]";
connectAttr "r_ring02_jnt.msg" "bindPose14.m[63]";
connectAttr "r_ring03_jnt.msg" "bindPose14.m[64]";
connectAttr "r_ring04_jnt.msg" "bindPose14.m[65]";
connectAttr "r_thumb01_jnt.msg" "bindPose14.m[66]";
connectAttr "r_thumb02_jnt.msg" "bindPose14.m[67]";
connectAttr "r_thumb03_jnt.msg" "bindPose14.m[68]";
connectAttr "r_thumb04_jnt.msg" "bindPose14.m[69]";
connectAttr "l_thigh_jnt.msg" "bindPose14.m[76]";
connectAttr "l_calf_jnt.msg" "bindPose14.m[77]";
connectAttr "l_foot_jnt.msg" "bindPose14.m[78]";
connectAttr "l_toes_jnt.msg" "bindPose14.m[79]";
connectAttr "l_toestip_jnt.msg" "bindPose14.m[80]";
connectAttr "r_thigh_jnt.msg" "bindPose14.m[87]";
connectAttr "r_calf_jnt.msg" "bindPose14.m[88]";
connectAttr "r_foot_jnt.msg" "bindPose14.m[89]";
connectAttr "r_toes_jnt.msg" "bindPose14.m[90]";
connectAttr "r_toestip_jnt.msg" "bindPose14.m[91]";
connectAttr "bindPose14.w" "bindPose14.p[0]";
connectAttr "bindPose14.m[98]" "bindPose14.p[1]";
connectAttr "bindPose14.m[1]" "bindPose14.p[2]";
connectAttr "bindPose14.m[2]" "bindPose14.p[3]";
connectAttr "bindPose14.m[3]" "bindPose14.p[4]";
connectAttr "bindPose14.m[4]" "bindPose14.p[5]";
connectAttr "bindPose14.m[5]" "bindPose14.p[6]";
connectAttr "bindPose14.m[6]" "bindPose14.p[7]";
connectAttr "bindPose14.m[7]" "bindPose14.p[8]";
connectAttr "bindPose14.m[8]" "bindPose14.p[9]";
connectAttr "bindPose14.m[7]" "bindPose14.p[10]";
connectAttr "bindPose14.m[7]" "bindPose14.p[11]";
connectAttr "bindPose14.m[7]" "bindPose14.p[12]";
connectAttr "bindPose14.m[7]" "bindPose14.p[13]";
connectAttr "bindPose14.m[7]" "bindPose14.p[14]";
connectAttr "bindPose14.m[7]" "bindPose14.p[15]";
connectAttr "bindPose14.m[5]" "bindPose14.p[16]";
connectAttr "bindPose14.m[16]" "bindPose14.p[17]";
connectAttr "bindPose14.m[17]" "bindPose14.p[18]";
connectAttr "bindPose14.m[18]" "bindPose14.p[19]";
connectAttr "bindPose14.m[19]" "bindPose14.p[20]";
connectAttr "bindPose14.m[20]" "bindPose14.p[21]";
connectAttr "bindPose14.m[21]" "bindPose14.p[22]";
connectAttr "bindPose14.m[22]" "bindPose14.p[23]";
connectAttr "bindPose14.m[19]" "bindPose14.p[24]";
connectAttr "bindPose14.m[24]" "bindPose14.p[25]";
connectAttr "bindPose14.m[25]" "bindPose14.p[26]";
connectAttr "bindPose14.m[26]" "bindPose14.p[27]";
connectAttr "bindPose14.m[19]" "bindPose14.p[28]";
connectAttr "bindPose14.m[28]" "bindPose14.p[29]";
connectAttr "bindPose14.m[29]" "bindPose14.p[30]";
connectAttr "bindPose14.m[30]" "bindPose14.p[31]";
connectAttr "bindPose14.m[19]" "bindPose14.p[32]";
connectAttr "bindPose14.m[32]" "bindPose14.p[33]";
connectAttr "bindPose14.m[33]" "bindPose14.p[34]";
connectAttr "bindPose14.m[34]" "bindPose14.p[35]";
connectAttr "bindPose14.m[19]" "bindPose14.p[36]";
connectAttr "bindPose14.m[36]" "bindPose14.p[37]";
connectAttr "bindPose14.m[37]" "bindPose14.p[38]";
connectAttr "bindPose14.m[38]" "bindPose14.p[39]";
connectAttr "bindPose14.m[18]" "bindPose14.p[40]";
connectAttr "bindPose14.m[40]" "bindPose14.p[41]";
connectAttr "bindPose14.m[41]" "bindPose14.p[42]";
connectAttr "bindPose14.m[17]" "bindPose14.p[43]";
connectAttr "bindPose14.m[43]" "bindPose14.p[44]";
connectAttr "bindPose14.m[44]" "bindPose14.p[45]";
connectAttr "bindPose14.m[5]" "bindPose14.p[46]";
connectAttr "bindPose14.m[46]" "bindPose14.p[47]";
connectAttr "bindPose14.m[47]" "bindPose14.p[48]";
connectAttr "bindPose14.m[48]" "bindPose14.p[49]";
connectAttr "bindPose14.m[49]" "bindPose14.p[50]";
connectAttr "bindPose14.m[50]" "bindPose14.p[51]";
connectAttr "bindPose14.m[51]" "bindPose14.p[52]";
connectAttr "bindPose14.m[52]" "bindPose14.p[53]";
connectAttr "bindPose14.m[49]" "bindPose14.p[54]";
connectAttr "bindPose14.m[54]" "bindPose14.p[55]";
connectAttr "bindPose14.m[55]" "bindPose14.p[56]";
connectAttr "bindPose14.m[56]" "bindPose14.p[57]";
connectAttr "bindPose14.m[49]" "bindPose14.p[58]";
connectAttr "bindPose14.m[58]" "bindPose14.p[59]";
connectAttr "bindPose14.m[59]" "bindPose14.p[60]";
connectAttr "bindPose14.m[60]" "bindPose14.p[61]";
connectAttr "bindPose14.m[49]" "bindPose14.p[62]";
connectAttr "bindPose14.m[62]" "bindPose14.p[63]";
connectAttr "bindPose14.m[63]" "bindPose14.p[64]";
connectAttr "bindPose14.m[64]" "bindPose14.p[65]";
connectAttr "bindPose14.m[49]" "bindPose14.p[66]";
connectAttr "bindPose14.m[66]" "bindPose14.p[67]";
connectAttr "bindPose14.m[67]" "bindPose14.p[68]";
connectAttr "bindPose14.m[68]" "bindPose14.p[69]";
connectAttr "bindPose14.m[48]" "bindPose14.p[70]";
connectAttr "bindPose14.m[70]" "bindPose14.p[71]";
connectAttr "bindPose14.m[71]" "bindPose14.p[72]";
connectAttr "bindPose14.m[47]" "bindPose14.p[73]";
connectAttr "bindPose14.m[73]" "bindPose14.p[74]";
connectAttr "bindPose14.m[74]" "bindPose14.p[75]";
connectAttr "bindPose14.m[2]" "bindPose14.p[76]";
connectAttr "bindPose14.m[76]" "bindPose14.p[77]";
connectAttr "bindPose14.m[77]" "bindPose14.p[78]";
connectAttr "bindPose14.m[78]" "bindPose14.p[79]";
connectAttr "bindPose14.m[79]" "bindPose14.p[80]";
connectAttr "bindPose14.m[77]" "bindPose14.p[81]";
connectAttr "bindPose14.m[81]" "bindPose14.p[82]";
connectAttr "bindPose14.m[82]" "bindPose14.p[83]";
connectAttr "bindPose14.m[76]" "bindPose14.p[84]";
connectAttr "bindPose14.m[84]" "bindPose14.p[85]";
connectAttr "bindPose14.m[85]" "bindPose14.p[86]";
connectAttr "bindPose14.m[2]" "bindPose14.p[87]";
connectAttr "bindPose14.m[87]" "bindPose14.p[88]";
connectAttr "bindPose14.m[88]" "bindPose14.p[89]";
connectAttr "bindPose14.m[89]" "bindPose14.p[90]";
connectAttr "bindPose14.m[90]" "bindPose14.p[91]";
connectAttr "bindPose14.m[88]" "bindPose14.p[92]";
connectAttr "bindPose14.m[92]" "bindPose14.p[93]";
connectAttr "bindPose14.m[93]" "bindPose14.p[94]";
connectAttr "bindPose14.m[87]" "bindPose14.p[95]";
connectAttr "bindPose14.m[95]" "bindPose14.p[96]";
connectAttr "bindPose14.m[96]" "bindPose14.p[97]";
connectAttr "bindPose14.w" "bindPose14.p[98]";
connectAttr "hips_jnt.msg" "net_FK_hips_jnt.input[0]";
connectAttr "net_LegIk_l_leg_ik.msg" "net_Leg_l_leg.sysIK";
connectAttr "l_toestip_jnt.msg" "net_Leg_l_leg.input[0]";
connectAttr "l_thigh_jnt.msg" "net_Leg_l_leg.input[1]";
connectAttr "l_calf_jnt.msg" "net_Leg_l_leg.input[2]";
connectAttr "l_foot_jnt.msg" "net_Leg_l_leg.input[3]";
connectAttr "l_toes_jnt.msg" "net_Leg_l_leg.input[4]";
connectAttr "net_Twistbone_l_leg_bend_thigh_jnt.msg" "net_Leg_l_leg.sys_twist[0]"
		;
connectAttr "net_Twistbone_l_leg_bend_calf_jnt.msg" "net_Leg_l_leg.sys_twist[1]"
		;
connectAttr "net_FK_l_leg_fk.msg" "net_Leg_l_leg.sysFK";
connectAttr "l_thigh_jnt.msg" "net_LegIk_l_leg_ik.input[0]";
connectAttr "l_calf_jnt.msg" "net_LegIk_l_leg_ik.input[1]";
connectAttr "l_foot_jnt.msg" "net_LegIk_l_leg_ik.input[2]";
connectAttr "l_toes_jnt.msg" "net_LegIk_l_leg_ik.input[3]";
connectAttr "l_toestip_jnt.msg" "net_LegIk_l_leg_ik.input[4]";
connectAttr "l_thigh_jnt.msg" "net_Twistbone_l_leg_bend_thigh_jnt.input[0]";
connectAttr "l_calf_jnt.msg" "net_Twistbone_l_leg_bend_thigh_jnt.input[1]";
connectAttr "l_calf_jnt.msg" "net_Twistbone_l_leg_bend_calf_jnt.input[0]";
connectAttr "l_foot_jnt.msg" "net_Twistbone_l_leg_bend_calf_jnt.input[1]";
connectAttr "l_thigh_jnt.msg" "net_FK_l_leg_fk.input[0]";
connectAttr "l_calf_jnt.msg" "net_FK_l_leg_fk.input[1]";
connectAttr "l_foot_jnt.msg" "net_FK_l_leg_fk.input[2]";
connectAttr "l_toes_jnt.msg" "net_FK_l_leg_fk.input[3]";
connectAttr "l_toestip_jnt.msg" "net_FK_l_leg_fk.input[4]";
connectAttr "net_LegIk_r_leg_ik.msg" "net_Leg_r_leg.sysIK";
connectAttr "r_toestip_jnt.msg" "net_Leg_r_leg.input[0]";
connectAttr "r_thigh_jnt.msg" "net_Leg_r_leg.input[1]";
connectAttr "r_calf_jnt.msg" "net_Leg_r_leg.input[2]";
connectAttr "r_foot_jnt.msg" "net_Leg_r_leg.input[3]";
connectAttr "r_toes_jnt.msg" "net_Leg_r_leg.input[4]";
connectAttr "net_Twistbone_r_leg_bend_thigh_jnt.msg" "net_Leg_r_leg.sys_twist[0]"
		;
connectAttr "net_Twistbone_r_leg_bend_calf_jnt.msg" "net_Leg_r_leg.sys_twist[1]"
		;
connectAttr "net_FK_r_leg_fk.msg" "net_Leg_r_leg.sysFK";
connectAttr "r_thigh_jnt.msg" "net_LegIk_r_leg_ik.input[0]";
connectAttr "r_calf_jnt.msg" "net_LegIk_r_leg_ik.input[1]";
connectAttr "r_foot_jnt.msg" "net_LegIk_r_leg_ik.input[2]";
connectAttr "r_toes_jnt.msg" "net_LegIk_r_leg_ik.input[3]";
connectAttr "r_toestip_jnt.msg" "net_LegIk_r_leg_ik.input[4]";
connectAttr "r_thigh_jnt.msg" "net_Twistbone_r_leg_bend_thigh_jnt.input[0]";
connectAttr "r_calf_jnt.msg" "net_Twistbone_r_leg_bend_thigh_jnt.input[1]";
connectAttr "r_calf_jnt.msg" "net_Twistbone_r_leg_bend_calf_jnt.input[0]";
connectAttr "r_foot_jnt.msg" "net_Twistbone_r_leg_bend_calf_jnt.input[1]";
connectAttr "r_thigh_jnt.msg" "net_FK_r_leg_fk.input[0]";
connectAttr "r_calf_jnt.msg" "net_FK_r_leg_fk.input[1]";
connectAttr "r_foot_jnt.msg" "net_FK_r_leg_fk.input[2]";
connectAttr "r_toes_jnt.msg" "net_FK_r_leg_fk.input[3]";
connectAttr "r_toestip_jnt.msg" "net_FK_r_leg_fk.input[4]";
connectAttr "chest_jnt.msg" "net_FK_spine01_jnt.input[0]";
connectAttr "spine01_jnt.msg" "net_FK_spine01_jnt.input[1]";
connectAttr "spine02_jnt.msg" "net_FK_spine01_jnt.input[2]";
connectAttr "neck_jnt.msg" "net_FK_neck_jnt.input[0]";
connectAttr "net_ctrlfk_neck_jnt_anm.msg" "net_FK_neck_jnt.ctrls[0]";
connectAttr "hips_jnt.msg" "net_ctrlfk_neck_jnt_anm.targets[2]";
connectAttr "head_jnt.msg" "net_FK_head_jnt.input[0]";
connectAttr "net_ctrlfk_head_jnt_anm.msg" "net_FK_head_jnt.ctrls[0]";
connectAttr "chest_jnt.msg" "net_ctrlfk_head_jnt_anm.targets[2]";
connectAttr "hips_jnt.msg" "net_ctrlfk_head_jnt_anm.targets[3]";
connectAttr "l_clavicle_jnt.msg" "net_FK_l_clavicle_jnt.input[0]";
connectAttr "net_ctrlfk_l_clavicle_jnt_anm.msg" "net_FK_l_clavicle_jnt.ctrls[0]"
		;
connectAttr "hips_jnt.msg" "net_ctrlfk_l_clavicle_jnt_anm.targets[2]";
connectAttr "r_clavicle_jnt.msg" "net_FK_r_clavicle_jnt.input[0]";
connectAttr "net_ctrlfk_r_clavicle_jnt_anm.msg" "net_FK_r_clavicle_jnt.ctrls[0]"
		;
connectAttr "hips_jnt.msg" "net_ctrlfk_r_clavicle_jnt_anm.targets[2]";
connectAttr "net_ArmIk_l_arm_ik.msg" "net_Arm_l_arm.sysIK";
connectAttr "l_hand_jnt.msg" "net_Arm_l_arm.input[0]";
connectAttr "l_upperarm_jnt.msg" "net_Arm_l_arm.input[1]";
connectAttr "l_forearm_jnt.msg" "net_Arm_l_arm.input[2]";
connectAttr "net_Twistbone_l_arm_bend_upperarm_jnt.msg" "net_Arm_l_arm.sys_twist[0]"
		;
connectAttr "net_Twistbone_l_arm_bend_forearm_jnt.msg" "net_Arm_l_arm.sys_twist[1]"
		;
connectAttr "net_FK_l_arm_fk.msg" "net_Arm_l_arm.sysFK";
connectAttr "net_ctrlikarm_l_arm_ik_anm.msg" "net_ArmIk_l_arm_ik.ctrl_ik";
connectAttr "net_ctrlikswivel_l_arm_ik_swivel_anm.msg" "net_ArmIk_l_arm_ik.ctrl_swivel"
		;
connectAttr "l_upperarm_jnt.msg" "net_ArmIk_l_arm_ik.input[0]";
connectAttr "l_forearm_jnt.msg" "net_ArmIk_l_arm_ik.input[1]";
connectAttr "l_hand_jnt.msg" "net_ArmIk_l_arm_ik.input[2]";
connectAttr "chest_jnt.msg" "net_ctrlikarm_l_arm_ik_anm.targets[1]";
connectAttr "hips_jnt.msg" "net_ctrlikarm_l_arm_ik_anm.targets[2]";
connectAttr "chest_jnt.msg" "net_ctrlikswivel_l_arm_ik_swivel_anm.targets[1]";
connectAttr "hips_jnt.msg" "net_ctrlikswivel_l_arm_ik_swivel_anm.targets[2]";
connectAttr "net_ctrlikarm_l_arm_ik_anm.msg" "net_ctrlikswivel_l_arm_ik_swivel_anm.targets[3]"
		;
connectAttr "l_upperarm_jnt.msg" "net_Twistbone_l_arm_bend_upperarm_jnt.input[0]"
		;
connectAttr "l_forearm_jnt.msg" "net_Twistbone_l_arm_bend_upperarm_jnt.input[1]"
		;
connectAttr "l_forearm_jnt.msg" "net_Twistbone_l_arm_bend_forearm_jnt.input[0]";
connectAttr "l_hand_jnt.msg" "net_Twistbone_l_arm_bend_forearm_jnt.input[1]";
connectAttr "l_upperarm_jnt.msg" "net_FK_l_arm_fk.input[0]";
connectAttr "l_forearm_jnt.msg" "net_FK_l_arm_fk.input[1]";
connectAttr "l_hand_jnt.msg" "net_FK_l_arm_fk.input[2]";
connectAttr "net_ctrlfk_l_arm_fk_upperarm_jnt_anm.msg" "net_FK_l_arm_fk.ctrls[0]"
		;
connectAttr "chest_jnt.msg" "net_ctrlfk_l_arm_fk_upperarm_jnt_anm.targets[2]";
connectAttr "hips_jnt.msg" "net_ctrlfk_l_arm_fk_upperarm_jnt_anm.targets[3]";
connectAttr "net_ArmIk_r_arm_ik.msg" "net_Arm_r_arm.sysIK";
connectAttr "r_hand_jnt.msg" "net_Arm_r_arm.input[0]";
connectAttr "r_upperarm_jnt.msg" "net_Arm_r_arm.input[1]";
connectAttr "r_forearm_jnt.msg" "net_Arm_r_arm.input[2]";
connectAttr "net_Twistbone_r_arm_bend_upperarm_jnt.msg" "net_Arm_r_arm.sys_twist[0]"
		;
connectAttr "net_Twistbone_r_arm_bend_forearm_jnt.msg" "net_Arm_r_arm.sys_twist[1]"
		;
connectAttr "net_FK_r_arm_fk.msg" "net_Arm_r_arm.sysFK";
connectAttr "net_ctrlikarm_r_arm_ik_anm.msg" "net_ArmIk_r_arm_ik.ctrl_ik";
connectAttr "net_ctrlikswivel_r_arm_ik_swivel_anm.msg" "net_ArmIk_r_arm_ik.ctrl_swivel"
		;
connectAttr "r_upperarm_jnt.msg" "net_ArmIk_r_arm_ik.input[0]";
connectAttr "r_forearm_jnt.msg" "net_ArmIk_r_arm_ik.input[1]";
connectAttr "r_hand_jnt.msg" "net_ArmIk_r_arm_ik.input[2]";
connectAttr "chest_jnt.msg" "net_ctrlikarm_r_arm_ik_anm.targets[1]";
connectAttr "hips_jnt.msg" "net_ctrlikarm_r_arm_ik_anm.targets[2]";
connectAttr "chest_jnt.msg" "net_ctrlikswivel_r_arm_ik_swivel_anm.targets[1]";
connectAttr "hips_jnt.msg" "net_ctrlikswivel_r_arm_ik_swivel_anm.targets[2]";
connectAttr "net_ctrlikarm_r_arm_ik_anm.msg" "net_ctrlikswivel_r_arm_ik_swivel_anm.targets[3]"
		;
connectAttr "r_upperarm_jnt.msg" "net_Twistbone_r_arm_bend_upperarm_jnt.input[0]"
		;
connectAttr "r_forearm_jnt.msg" "net_Twistbone_r_arm_bend_upperarm_jnt.input[1]"
		;
connectAttr "r_forearm_jnt.msg" "net_Twistbone_r_arm_bend_forearm_jnt.input[0]";
connectAttr "r_hand_jnt.msg" "net_Twistbone_r_arm_bend_forearm_jnt.input[1]";
connectAttr "r_upperarm_jnt.msg" "net_FK_r_arm_fk.input[0]";
connectAttr "r_forearm_jnt.msg" "net_FK_r_arm_fk.input[1]";
connectAttr "r_hand_jnt.msg" "net_FK_r_arm_fk.input[2]";
connectAttr "net_ctrlfk_r_arm_fk_upperarm_jnt_anm.msg" "net_FK_r_arm_fk.ctrls[0]"
		;
connectAttr "chest_jnt.msg" "net_ctrlfk_r_arm_fk_upperarm_jnt_anm.targets[2]";
connectAttr "hips_jnt.msg" "net_ctrlfk_r_arm_fk_upperarm_jnt_anm.targets[3]";
connectAttr "net_AdditiveFK_r_hand.msg" "net_Hand_r_hand.sysFingers[0]";
connectAttr "net_AdditiveFK_r_hand1.msg" "net_Hand_r_hand.sysFingers[1]";
connectAttr "net_AdditiveFK_r_hand2.msg" "net_Hand_r_hand.sysFingers[2]";
connectAttr "net_AdditiveFK_r_hand3.msg" "net_Hand_r_hand.sysFingers[3]";
connectAttr "net_AdditiveFK_r_hand4.msg" "net_Hand_r_hand.sysFingers[4]";
connectAttr "r_index04_jnt.msg" "net_Hand_r_hand.input[0]";
connectAttr "r_index03_jnt.msg" "net_Hand_r_hand.input[1]";
connectAttr "r_index02_jnt.msg" "net_Hand_r_hand.input[2]";
connectAttr "r_middle04_jnt.msg" "net_Hand_r_hand.input[3]";
connectAttr "r_middle03_jnt.msg" "net_Hand_r_hand.input[4]";
connectAttr "r_middle02_jnt.msg" "net_Hand_r_hand.input[5]";
connectAttr "r_pinky04_jnt.msg" "net_Hand_r_hand.input[6]";
connectAttr "r_pinky03_jnt.msg" "net_Hand_r_hand.input[7]";
connectAttr "r_pinky02_jnt.msg" "net_Hand_r_hand.input[8]";
connectAttr "r_ring04_jnt.msg" "net_Hand_r_hand.input[9]";
connectAttr "r_ring03_jnt.msg" "net_Hand_r_hand.input[10]";
connectAttr "r_ring02_jnt.msg" "net_Hand_r_hand.input[11]";
connectAttr "r_thumb04_jnt.msg" "net_Hand_r_hand.input[12]";
connectAttr "r_index01_jnt.msg" "net_Hand_r_hand.input[13]";
connectAttr "r_middle01_jnt.msg" "net_Hand_r_hand.input[14]";
connectAttr "r_pinky01_jnt.msg" "net_Hand_r_hand.input[15]";
connectAttr "r_ring01_jnt.msg" "net_Hand_r_hand.input[16]";
connectAttr "r_thumb01_jnt.msg" "net_Hand_r_hand.input[17]";
connectAttr "r_thumb02_jnt.msg" "net_Hand_r_hand.input[18]";
connectAttr "r_thumb03_jnt.msg" "net_Hand_r_hand.input[19]";
connectAttr "r_pinky01_jnt.msg" "net_AdditiveFK_r_hand.input[0]";
connectAttr "r_pinky02_jnt.msg" "net_AdditiveFK_r_hand.input[1]";
connectAttr "r_pinky03_jnt.msg" "net_AdditiveFK_r_hand.input[2]";
connectAttr "r_ring01_jnt.msg" "net_AdditiveFK_r_hand1.input[0]";
connectAttr "r_ring02_jnt.msg" "net_AdditiveFK_r_hand1.input[1]";
connectAttr "r_ring03_jnt.msg" "net_AdditiveFK_r_hand1.input[2]";
connectAttr "r_middle01_jnt.msg" "net_AdditiveFK_r_hand2.input[0]";
connectAttr "r_middle02_jnt.msg" "net_AdditiveFK_r_hand2.input[1]";
connectAttr "r_middle03_jnt.msg" "net_AdditiveFK_r_hand2.input[2]";
connectAttr "r_thumb01_jnt.msg" "net_AdditiveFK_r_hand3.input[0]";
connectAttr "r_thumb02_jnt.msg" "net_AdditiveFK_r_hand3.input[1]";
connectAttr "r_thumb03_jnt.msg" "net_AdditiveFK_r_hand3.input[2]";
connectAttr "r_index01_jnt.msg" "net_AdditiveFK_r_hand4.input[0]";
connectAttr "r_index02_jnt.msg" "net_AdditiveFK_r_hand4.input[1]";
connectAttr "r_index03_jnt.msg" "net_AdditiveFK_r_hand4.input[2]";
connectAttr "net_AdditiveFK_l_hand.msg" "net_Hand_l_hand.sysFingers[0]";
connectAttr "net_AdditiveFK_l_hand1.msg" "net_Hand_l_hand.sysFingers[1]";
connectAttr "net_AdditiveFK_l_hand2.msg" "net_Hand_l_hand.sysFingers[2]";
connectAttr "net_AdditiveFK_l_hand3.msg" "net_Hand_l_hand.sysFingers[3]";
connectAttr "net_AdditiveFK_l_hand4.msg" "net_Hand_l_hand.sysFingers[4]";
connectAttr "l_index04_jnt.msg" "net_Hand_l_hand.input[0]";
connectAttr "l_index03_jnt.msg" "net_Hand_l_hand.input[1]";
connectAttr "l_index02_jnt.msg" "net_Hand_l_hand.input[2]";
connectAttr "l_middle04_jnt.msg" "net_Hand_l_hand.input[3]";
connectAttr "l_middle03_jnt.msg" "net_Hand_l_hand.input[4]";
connectAttr "l_middle02_jnt.msg" "net_Hand_l_hand.input[5]";
connectAttr "l_pinky04_jnt.msg" "net_Hand_l_hand.input[6]";
connectAttr "l_pinky03_jnt.msg" "net_Hand_l_hand.input[7]";
connectAttr "l_pinky02_jnt.msg" "net_Hand_l_hand.input[8]";
connectAttr "l_ring04_jnt.msg" "net_Hand_l_hand.input[9]";
connectAttr "l_ring03_jnt.msg" "net_Hand_l_hand.input[10]";
connectAttr "l_ring02_jnt.msg" "net_Hand_l_hand.input[11]";
connectAttr "l_thumb04_jnt.msg" "net_Hand_l_hand.input[12]";
connectAttr "l_index01_jnt.msg" "net_Hand_l_hand.input[13]";
connectAttr "l_middle01_jnt.msg" "net_Hand_l_hand.input[14]";
connectAttr "l_pinky01_jnt.msg" "net_Hand_l_hand.input[15]";
connectAttr "l_ring01_jnt.msg" "net_Hand_l_hand.input[16]";
connectAttr "l_thumb01_jnt.msg" "net_Hand_l_hand.input[17]";
connectAttr "l_thumb02_jnt.msg" "net_Hand_l_hand.input[18]";
connectAttr "l_thumb03_jnt.msg" "net_Hand_l_hand.input[19]";
connectAttr "l_pinky01_jnt.msg" "net_AdditiveFK_l_hand.input[0]";
connectAttr "l_pinky02_jnt.msg" "net_AdditiveFK_l_hand.input[1]";
connectAttr "l_pinky03_jnt.msg" "net_AdditiveFK_l_hand.input[2]";
connectAttr "l_ring01_jnt.msg" "net_AdditiveFK_l_hand1.input[0]";
connectAttr "l_ring02_jnt.msg" "net_AdditiveFK_l_hand1.input[1]";
connectAttr "l_ring03_jnt.msg" "net_AdditiveFK_l_hand1.input[2]";
connectAttr "l_middle01_jnt.msg" "net_AdditiveFK_l_hand2.input[0]";
connectAttr "l_middle02_jnt.msg" "net_AdditiveFK_l_hand2.input[1]";
connectAttr "l_middle03_jnt.msg" "net_AdditiveFK_l_hand2.input[2]";
connectAttr "l_thumb01_jnt.msg" "net_AdditiveFK_l_hand3.input[0]";
connectAttr "l_thumb02_jnt.msg" "net_AdditiveFK_l_hand3.input[1]";
connectAttr "l_thumb03_jnt.msg" "net_AdditiveFK_l_hand3.input[2]";
connectAttr "l_index01_jnt.msg" "net_AdditiveFK_l_hand4.input[0]";
connectAttr "l_index02_jnt.msg" "net_AdditiveFK_l_hand4.input[1]";
connectAttr "l_index03_jnt.msg" "net_AdditiveFK_l_hand4.input[2]";
connectAttr "net_AdditiveFK_l_hand1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "net_Twistbone_r_leg_bend_calf_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "net_Arm_l_arm.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "net_Twistbone_l_arm_bend_forearm_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "net_AdditiveFK_r_hand1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "net_FK_spine01_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "net_FK_r_clavicle_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "net_LegIk_r_leg_ik.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "net_Arm_r_arm.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "net_Twistbone_r_leg_bend_thigh_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "net_Twistbone_l_leg_bend_thigh_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "net_FK_l_arm_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "net_Twistbone_l_arm_bend_upperarm_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "net_ArmIk_l_arm_ik.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "net_Leg_r_leg.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "net_AdditiveFK_l_hand2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "net_FK_r_leg_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "net_Hand_r_hand.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "net_AdditiveFK_l_hand4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "net_Twistbone_r_arm_bend_upperarm_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "net_Leg_l_leg.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "net_LegIk_l_leg_ik.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "net_AdditiveFK_r_hand3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "net_Twistbone_r_arm_bend_forearm_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "net_FK_head_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "net_FK_r_arm_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "net_ArmIk_r_arm_ik.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "net_AdditiveFK_r_hand2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "net_Hand_l_hand.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "net_Twistbone_l_leg_bend_calf_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "net_FK_l_leg_fk.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "net_FK_neck_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "net_AdditiveFK_l_hand.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "net_FK_l_clavicle_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "net_AdditiveFK_r_hand.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "net_FK_hips_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "net_AdditiveFK_r_hand4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "net_AdditiveFK_l_hand3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Box001SG.pa" ":renderPartition.st" -na;
connectAttr "TrendySG.pa" ":renderPartition.st" -na;
connectAttr "TrendySG1.pa" ":renderPartition.st" -na;
connectAttr "TrendySG2.pa" ":renderPartition.st" -na;
connectAttr "TrendySG3.pa" ":renderPartition.st" -na;
connectAttr "TrendySG4.pa" ":renderPartition.st" -na;
connectAttr "TrendySG5.pa" ":renderPartition.st" -na;
connectAttr "TrendySG6.pa" ":renderPartition.st" -na;
connectAttr "TrendySG7.pa" ":renderPartition.st" -na;
connectAttr "TrendySG8.pa" ":renderPartition.st" -na;
connectAttr "TrendySG9.pa" ":renderPartition.st" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture12.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture13.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture14.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture15.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture16.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture17.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture18.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture19.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture20.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture21.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture22.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture23.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture24.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture25.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture26.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture27.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture28.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture29.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture30.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_8.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_8.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_8.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_7.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_7.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_7.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_5.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_5.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_5.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_4.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_4.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_4.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_9.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_9.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_9.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_3.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_3.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_3.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_2.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_diffFBXASC046tga_ncl1_6.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_specFBXASC046tga_ncl1_6.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "C:FBXASC092AmazonFBXASC092LumberyardFBXASC0921FBXASC0465FBXASC0460FBXASC0460FBXASC092devFBXASC092CoffenceFBXASC092ObjectsFBXASC092CharacterModelsFBXASC092trendyFBXASC092texturesFBXASC092trendy_ddnaFBXASC046tga_ncl1_6.msg" ":defaultTextureList1.tx"
		 -na;
// End of Basic_Joints_Template_ZOrient.ma

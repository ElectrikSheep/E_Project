//Maya ASCII 2014 scene
//Name: Terrain1.ma
//Last modified: Mon, Nov 18, 2013 10:10:52 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.13 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -n "polySurface102";
	setAttr ".t" -type "double3" -108.40064910959543 -1.6160326092731063 -107.71857977640092 ;
	setAttr ".s" -type "double3" 0.19359726184840967 0.19359726184840967 0.19359726184840967 ;
	setAttr ".rp" -type "double3" 60.686069488525391 2.055215448141098 -5.215052604675293 ;
	setAttr ".sp" -type "double3" 60.686069488525391 2.055215448141098 -5.215052604675293 ;
createNode transform -n "polySurface103" -p "polySurface102";
	setAttr ".rp" -type "double3" 63.866975784301758 2.2351078540086746 549.05584716796875 ;
	setAttr ".sp" -type "double3" 63.866975784301758 2.2351078540086746 549.05584716796875 ;
createNode transform -n "transform121" -p "polySurface103";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape112" -p "transform121";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface104" -p "polySurface102";
	setAttr ".rp" -type "double3" -141.25116729736328 1.6253892928361893 658.47998046875 ;
	setAttr ".sp" -type "double3" -141.25116729736328 1.6253892928361893 658.47998046875 ;
createNode transform -n "transform120" -p "polySurface104";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape113" -p "transform120";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface105" -p "polySurface102";
	setAttr ".rp" -type "double3" 53.788215637207031 0.86823375523090363 107.27723693847656 ;
	setAttr ".sp" -type "double3" 53.788215637207031 0.86823375523090363 107.27723693847656 ;
createNode transform -n "transform119" -p "polySurface105";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape114" -p "transform119";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface106" -p "polySurface102";
	setAttr ".rp" -type "double3" -174.56430816650391 0.38278490304946899 288.01925659179688 ;
	setAttr ".sp" -type "double3" -174.56430816650391 0.38278490304946899 288.01925659179688 ;
createNode transform -n "transform118" -p "polySurface106";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape115" -p "transform118";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface107" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.41779814734611975 0 ;
	setAttr ".rp" -type "double3" 27.335010528564453 0.38278490304946899 647.21200561523438 ;
	setAttr ".sp" -type "double3" 27.335010528564453 0.38278490304946899 647.21200561523438 ;
createNode transform -n "transform117" -p "polySurface107";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape116" -p "transform117";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface108" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.20889907367305988 0 ;
	setAttr ".rp" -type "double3" 9.9169235229492188 0.36738023161888123 511.43896484375 ;
	setAttr ".sp" -type "double3" 9.9169235229492188 0.36738023161888123 511.43896484375 ;
createNode transform -n "transform116" -p "polySurface108";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape117" -p "transform116";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface109" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.52224768418264733 0 ;
	setAttr ".rp" -type "double3" 81.327037811279297 0.98703467845916748 453.20957946777344 ;
	setAttr ".sp" -type "double3" 81.327037811279297 0.98703467845916748 453.20957946777344 ;
createNode transform -n "transform115" -p "polySurface109";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape118" -p "transform115";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface110" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.36843731784111527 0 ;
	setAttr ".rp" -type "double3" -38.18463134765625 0.69760483503341675 364.09056091308594 ;
	setAttr ".sp" -type "double3" -38.18463134765625 0.69760483503341675 364.09056091308594 ;
createNode transform -n "transform114" -p "polySurface110";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape119" -p "transform114";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface111" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.36843731784111527 0 ;
	setAttr ".rp" -type "double3" -127.05279541015625 0.6130327582359314 445.08070373535156 ;
	setAttr ".sp" -type "double3" -127.05279541015625 0.6130327582359314 445.08070373535156 ;
createNode transform -n "transform113" -p "polySurface111";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape120" -p "transform113";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface112" -p "polySurface102";
	setAttr ".t" -type "double3" 0 0.36843731784111988 0 ;
	setAttr ".rp" -type "double3" -85.265396118164062 0.38278490304946899 158.850830078125 ;
	setAttr ".sp" -type "double3" -85.265396118164062 0.38278490304946899 158.850830078125 ;
createNode transform -n "transform112" -p "polySurface112";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape121" -p "transform112";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface113" -p "polySurface102";
	setAttr ".rp" -type "double3" 21.123908996582031 0.65250334143638611 261.52061462402344 ;
	setAttr ".sp" -type "double3" 21.123908996582031 0.65250334143638611 261.52061462402344 ;
createNode transform -n "transform111" -p "polySurface113";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape122" -p "transform111";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform14" -p "polySurface102";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape102" -p "transform14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 195 ".uvst[0].uvsp[0:194]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.75 0.125 0.25 0.125 0.5 0 0.625 0.125
		 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375 0.625 0.625 0.5 0.75 0.375 0.625
		 0.75 0 0.875 0.125 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 139 ".vt[0:138]"  51.56408691 -0.36687231 -3.63558793 52.72594833 -0.36687231 -0.83222532
		 51.65833282 3.90251827 -2.91448069 52.36699295 2.56449199 -0.64715934 54.65714264 3.17028379 -3.85145521
		 55.82225037 3.092827797 -0.4992398 55.33023834 -0.3163836 -3.87025404 57.44630051 -0.36687231 -1.17477429
		 50.77365875 -0.36687231 -0.99669647 50.55073547 3.9482615 -1.28899479 55.18315506 3.22104311 -2.41256189
		 57.4114418 -0.36687231 -3.2101469 50.32771301 1.66115808 -4.23755264 53.27873993 2.050880194 0.29919982
		 52.66661453 4.016616821 -4.59188461 54.17774963 3.19545341 -0.12349653 55.61351013 1.80559015 -4.48895502
		 56.6294899 1.93067431 -0.33437848 52.91983414 -0.3163836 -4.717103 54.61231232 -0.36687231 1.018888474
		 49.64765549 1.26159573 -0.65402353 53.38838959 4.7333951 -2.075880527 56.87807465 1.68074119 -3.065095663
		 55.50306702 2.18386102 1.64489675 53.19025803 2.29366779 -5.23133421 49.76283264 -0.36687231 -5.32975769
		 52.78977203 -0.36687231 -5.5451417 50.61481857 3.0077013969 -5.97199583 52.86796188 3.16385365 -5.76533127
		 50.53650284 3.17028379 -8.33226013 54.1318512 3.34948754 -8.28802967 50.73159409 -0.3163836 -8.97673798
		 52.93182373 -0.36687231 -8.55453968 52.016166687 -0.36687231 -3.74513817 52.077545166 3.51395798 -4.75742054
		 51.96788788 3.04469347 -8.18709087 52.016166687 -0.36687231 -8.99651337 48.80067062 1.66115808 -4.34729862
		 54.037963867 2.050880194 -5.71163273 48.92711258 2.97238469 -7.713027 53.89209366 3.43799543 -7.1035099
		 50.234272 1.80559015 -9.44117832 54.37808609 2.42034197 -8.77535057 49.16572952 -0.3163836 -6.95800447
		 55.14255524 -0.36687231 -6.74905968 51.98504257 1.26159573 -2.56855822 52.28800583 3.039582014 -6.95705891
		 51.98504257 1.68074119 -10.19038486 56.018196106 2.18386102 -7.39603996 47.76959229 2.29366779 -7.37721395
		 66.82155609 -0.48162341 -7.98724842 69.85662079 -0.48162341 -7.21157217 67.54806519 1.61952853 -7.85812426
		 68.94148254 1.71609783 -7.73031664 67.49963379 1.72007442 -9.31778526 69.40110016 1.71190083 -9.054272652
		 66.82155609 -0.42197847 -10.22327328 69.42080688 -0.48162341 -9.72450829 68.33908844 -0.48162341 -6.11525536
		 68.38484955 1.79326332 -7.30770016 68.38484955 1.64240551 -9.22800827 68.33908844 -0.48162341 -10.24663353
		 66.68306732 1.035907507 -7.073083878 69.9372406 1.11812317 -7.82826042 67.32589722 2.114398 -8.82139969
		 69.57483673 1.88563561 -8.55788803 66.68306732 0.72089922 -10.3851223 69.66905212 1.035907507 -9.47831821
		 66.703125 -0.42197847 -8.72910309 70.29243469 -0.48162341 -8.48226547 68.33908844 1.035907507 -6.52107811
		 68.58281708 1.63924444 -8.46731758 68.33908844 0.66125429 -9.76853275 70.54711151 1.035907507 -8.72910309
		 66.13106537 1.095552444 -8.72910309 56.51787186 -0.3443296 5.98833704 57.51979446 -0.3443296 6.43656063
		 56.32201385 1.0062065125 5.62454033 57.29938507 0.84922612 6.21269894 56.45114517 0.75025678 5.2341156
		 57.2321434 0.76531756 5.48978281 56.52748489 -0.3443296 4.72417164 57.51979446 -0.3443296 5.33240843
		 52.33934402 -0.3443296 -17.076206207 53.39837265 -0.3443296 -17.36467934 51.9572525 1.0062065125 -17.23340988
		 53.085998535 0.84922612 -17.39809227 51.80962753 0.75025678 -17.61722565 52.57572937 0.76531756 -17.91457558
		 51.54541016 -0.3443296 -18.06001091 52.69843674 -0.3443296 -18.21863556 42.56742096 -0.47109693 3.048450232
		 44.27980804 -0.47109693 3.048450232 43.14251709 0.55358595 2.3759377 43.98839951 0.74356723 2.77753448
		 43.20885086 0.10474381 1.090387702 44.075119019 0.052692115 1.50788021 42.56742096 -0.47109693 1.33606076
		 44.27980804 -0.47109693 1.33606076 43.33086395 -0.36025715 -5.34796333 45.12020111 -0.36025715 -7.54100513
		 42.82864761 1.87203622 -6.85552311 44.60318756 1.063866258 -7.49264717 42.46356964 1.44897842 -7.4288702
		 43.13900757 1.069479942 -8.54385376 41.89025879 -0.36025715 -8.05949688 43.70612335 -0.36025715 -8.69477272
		 77.90895844 -0.44266951 0.40241885 79.48188019 -0.44266951 -1.95068145 77.51306915 1.25102293 -1.0055938959
		 78.84191895 1.56504202 -1.79908681 75.80744934 0.50913435 -2.27759361 77.17686462 0.42309839 -3.08449626
		 75.5558548 -0.44266951 -1.17050052 77.12877655 -0.44266951 -3.52360082 66.48236084 -0.44266951 -20.20323181
		 68.055282593 -0.44266951 -22.55633163 66.086471558 1.25102293 -21.6112442 67.41532135 1.56504202 -22.40473557
		 64.38085175 0.50913435 -22.88324356 65.75026703 0.42309839 -23.69014549 64.1292572 -0.44266951 -21.77614975
		 65.70217896 -0.44266951 -24.12924957 67.90450287 -0.3443296 13.69914436 68.7490387 -0.3443296 12.2094965
		 67.45191193 1.0062065125 12.85099792 68.44558716 0.51726419 12.29083157 67.17595673 0.75025678 12.54611015
		 67.46559143 0.52066046 11.81253433 66.76998901 -0.3443296 12.22820282 67.78850555 -0.3443296 11.66494274
		 77.59611511 -0.6229642 -14.65262032 78.71246338 -0.6229642 -16.044401169 77.9799881 0.28697529 -15.073152542
		 78.66210175 0.24301791 -15.80839825 77.36568451 0.25987008 -15.73126984 78.047653198 0.42892545 -16.15776443
		 76.5011673 -0.6229642 -15.29127312 77.80213165 -0.6229642 -16.66926765;
	setAttr -s 228 ".ed";
	setAttr ".ed[0:165]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0 11 7 0
		 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0 17 7 0
		 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0 25 33 0 33 26 0 27 34 0 34 28 0 29 35 0 35 30 0 31 36 0 36 32 0 25 37 0
		 37 27 0 26 38 0 38 28 0 27 39 0 39 29 0 28 40 0 40 30 0 29 41 0 41 31 0 30 42 0 42 32 0
		 31 43 0 43 25 0 32 44 0 44 26 0 45 33 0 45 38 0 45 34 0 45 37 0 46 34 0 46 40 0 46 35 0
		 46 39 0 47 35 0 47 42 0 47 36 0 47 41 0 48 44 0 48 42 0 48 40 0 48 38 0 49 43 0 49 37 0
		 49 39 0 49 41 0 50 58 0 58 51 0 52 59 0 59 53 0 54 60 0 60 55 0 56 61 0 61 57 0 50 62 0
		 62 52 0 51 63 0 63 53 0 52 64 0 64 54 0 53 65 0 65 55 0 54 66 0 66 56 0 55 67 0 67 57 0
		 56 68 0 68 50 0 57 69 0 69 51 0 70 58 0 70 63 0 70 59 0 70 62 0 71 59 0 71 65 0 71 60 0
		 71 64 0 72 60 0 72 67 0 72 61 0 72 66 0 73 69 0 73 67 0 73 65 0 73 63 0 74 68 0 74 62 0
		 74 64 0 74 66 0 75 76 0 77 78 0 79 80 0 81 82 0 75 77 0 76 78 0 77 79 0 78 80 0 79 81 0
		 80 82 0 81 75 0 82 76 0 83 84 0 85 86 0 87 88 0 89 90 0 83 85 0 84 86 0 85 87 0 86 88 0
		 87 89 0 88 90 0 89 83 0 90 84 0 91 92 0 93 94 0 95 96 0 97 98 0 91 93 0 92 94 0 93 95 0
		 94 96 0 95 97 0 96 98 0;
	setAttr ".ed[166:227]" 97 91 0 98 92 0 99 100 0 101 102 0 103 104 0 105 106 0
		 99 101 0 100 102 0 101 103 0 102 104 0 103 105 0 104 106 0 105 99 0 106 100 0 107 108 0
		 109 110 0 111 112 0 113 114 0 107 109 0 108 110 0 109 111 0 110 112 0 111 113 0 112 114 0
		 113 107 0 114 108 0 115 116 0 117 118 0 119 120 0 121 122 0 115 117 0 116 118 0 117 119 0
		 118 120 0 119 121 0 120 122 0 121 115 0 122 116 0 123 124 0 125 126 0 127 128 0 129 130 0
		 123 125 0 124 126 0 125 127 0 126 128 0 127 129 0 128 130 0 129 123 0 130 124 0 131 132 0
		 133 134 0 135 136 0 137 138 0 131 133 0 132 134 0 133 135 0 134 136 0 135 137 0 136 138 0
		 137 131 0 138 132 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 17 1 18 12
		f 4 11 -4 -27 25
		mu 0 4 18 3 19 12
		f 4 -3 -10 -28 26
		mu 0 4 19 2 20 12
		f 4 -9 0 -25 27
		mu 0 4 20 0 17 12
		f 4 3 14 -30 28
		mu 0 4 19 3 21 13
		f 4 15 -6 -31 29
		mu 0 4 21 5 22 13
		f 4 -5 -14 -32 30
		mu 0 4 22 4 23 13
		f 4 -13 2 -29 31
		mu 0 4 23 2 19 13
		f 4 5 18 -34 32
		mu 0 4 22 5 24 14
		f 4 19 -8 -35 33
		mu 0 4 24 7 25 14
		f 4 -7 -18 -36 34
		mu 0 4 25 6 26 14
		f 4 -17 4 -33 35
		mu 0 4 26 4 22 14
		f 4 -23 -20 -38 36
		mu 0 4 27 8 28 15
		f 4 -19 -16 -39 37
		mu 0 4 28 9 29 15
		f 4 -15 -12 -40 38
		mu 0 4 29 3 18 15
		f 4 -11 -24 -37 39
		mu 0 4 18 1 27 15
		f 4 21 8 -42 40
		mu 0 4 30 0 20 16
		f 4 9 12 -43 41
		mu 0 4 20 2 31 16
		f 4 13 16 -44 42
		mu 0 4 31 11 32 16
		f 4 17 20 -41 43
		mu 0 4 32 10 30 16
		f 4 45 54 -70 68
		mu 0 4 33 34 35 36
		f 4 55 -48 -71 69
		mu 0 4 35 37 38 36
		f 4 -47 -54 -72 70
		mu 0 4 38 39 40 36
		f 4 -53 44 -69 71
		mu 0 4 40 41 33 36
		f 4 47 58 -74 72
		mu 0 4 38 37 42 43
		f 4 59 -50 -75 73
		mu 0 4 42 44 45 43
		f 4 -49 -58 -76 74
		mu 0 4 45 46 47 43
		f 4 -57 46 -73 75
		mu 0 4 47 39 38 43
		f 4 49 62 -78 76
		mu 0 4 45 44 48 49
		f 4 63 -52 -79 77
		mu 0 4 48 50 51 49
		f 4 -51 -62 -80 78
		mu 0 4 51 52 53 49
		f 4 -61 48 -77 79
		mu 0 4 53 46 45 49
		f 4 -67 -64 -82 80
		mu 0 4 54 55 56 57
		f 4 -63 -60 -83 81
		mu 0 4 56 58 59 57
		f 4 -59 -56 -84 82
		mu 0 4 59 37 35 57
		f 4 -55 -68 -81 83
		mu 0 4 35 34 54 57
		f 4 65 52 -86 84
		mu 0 4 60 41 40 61
		f 4 53 56 -87 85
		mu 0 4 40 39 62 61
		f 4 57 60 -88 86
		mu 0 4 62 63 64 61
		f 4 61 64 -85 87
		mu 0 4 64 65 60 61
		f 4 89 98 -114 112
		mu 0 4 66 67 68 69
		f 4 99 -92 -115 113
		mu 0 4 68 70 71 69
		f 4 -91 -98 -116 114
		mu 0 4 71 72 73 69
		f 4 -97 88 -113 115
		mu 0 4 73 74 66 69
		f 4 91 102 -118 116
		mu 0 4 71 70 75 76
		f 4 103 -94 -119 117
		mu 0 4 75 77 78 76
		f 4 -93 -102 -120 118
		mu 0 4 78 79 80 76
		f 4 -101 90 -117 119
		mu 0 4 80 72 71 76
		f 4 93 106 -122 120
		mu 0 4 78 77 81 82
		f 4 107 -96 -123 121
		mu 0 4 81 83 84 82
		f 4 -95 -106 -124 122
		mu 0 4 84 85 86 82
		f 4 -105 92 -121 123
		mu 0 4 86 79 78 82
		f 4 -111 -108 -126 124
		mu 0 4 87 88 89 90
		f 4 -107 -104 -127 125
		mu 0 4 89 91 92 90
		f 4 -103 -100 -128 126
		mu 0 4 92 70 68 90
		f 4 -99 -112 -125 127
		mu 0 4 68 67 87 90
		f 4 109 96 -130 128
		mu 0 4 93 74 73 94
		f 4 97 100 -131 129
		mu 0 4 73 72 95 94
		f 4 101 104 -132 130
		mu 0 4 95 96 97 94
		f 4 105 108 -129 131
		mu 0 4 97 98 93 94
		f 4 132 137 -134 -137
		mu 0 4 99 100 101 102
		f 4 133 139 -135 -139
		mu 0 4 102 101 103 104
		f 4 134 141 -136 -141
		mu 0 4 104 103 105 106
		f 4 -144 -142 -140 -138
		mu 0 4 100 107 108 101
		f 4 142 136 138 140
		mu 0 4 109 99 102 110
		f 4 144 149 -146 -149
		mu 0 4 111 112 113 114
		f 4 145 151 -147 -151
		mu 0 4 114 113 115 116
		f 4 146 153 -148 -153
		mu 0 4 116 115 117 118
		f 4 -156 -154 -152 -150
		mu 0 4 112 119 120 113
		f 4 154 148 150 152
		mu 0 4 121 111 114 122
		f 4 156 161 -158 -161
		mu 0 4 123 124 125 126
		f 4 157 163 -159 -163
		mu 0 4 126 125 127 128
		f 4 158 165 -160 -165
		mu 0 4 128 127 129 130
		f 4 -168 -166 -164 -162
		mu 0 4 124 131 132 125
		f 4 166 160 162 164
		mu 0 4 133 123 126 134
		f 4 168 173 -170 -173
		mu 0 4 135 136 137 138
		f 4 169 175 -171 -175
		mu 0 4 138 137 139 140
		f 4 170 177 -172 -177
		mu 0 4 140 139 141 142
		f 4 -180 -178 -176 -174
		mu 0 4 136 143 144 137
		f 4 178 172 174 176
		mu 0 4 145 135 138 146
		f 4 180 185 -182 -185
		mu 0 4 147 148 149 150
		f 4 181 187 -183 -187
		mu 0 4 150 149 151 152
		f 4 182 189 -184 -189
		mu 0 4 152 151 153 154
		f 4 -192 -190 -188 -186
		mu 0 4 148 155 156 149
		f 4 190 184 186 188
		mu 0 4 157 147 150 158
		f 4 192 197 -194 -197
		mu 0 4 159 160 161 162
		f 4 193 199 -195 -199
		mu 0 4 162 161 163 164
		f 4 194 201 -196 -201
		mu 0 4 164 163 165 166
		f 4 -204 -202 -200 -198
		mu 0 4 160 167 168 161
		f 4 202 196 198 200
		mu 0 4 169 159 162 170
		f 4 204 209 -206 -209
		mu 0 4 171 172 173 174
		f 4 205 211 -207 -211
		mu 0 4 174 173 175 176
		f 4 206 213 -208 -213
		mu 0 4 176 175 177 178
		f 4 -216 -214 -212 -210
		mu 0 4 172 179 180 173
		f 4 214 208 210 212
		mu 0 4 181 171 174 182
		f 4 216 221 -218 -221
		mu 0 4 183 184 185 186
		f 4 217 223 -219 -223
		mu 0 4 186 185 187 188
		f 4 218 225 -220 -225
		mu 0 4 188 187 189 190
		f 4 -228 -226 -224 -222
		mu 0 4 184 191 192 185
		f 4 226 220 222 224
		mu 0 4 193 183 186 194;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface114";
	setAttr ".t" -type "double3" -58.377633048992948 -1.2439502358839851 -139.67419362358311 ;
	setAttr ".s" -type "double3" 0.19359726184840967 0.19359726184840967 0.19359726184840967 ;
	setAttr ".rp" -type "double3" 64.287069320678711 1.5924694240093231 -0.73408412933349609 ;
	setAttr ".sp" -type "double3" 64.287069320678711 1.5924694240093231 -0.73408412933349609 ;
createNode transform -n "polySurface115" -p "polySurface114";
	setAttr ".rp" -type "double3" 1.7526512145996094 1.7090260982513428 545.62088012695312 ;
	setAttr ".sp" -type "double3" 1.7526512145996094 1.7090260982513428 545.62088012695312 ;
createNode transform -n "transform110" -p "polySurface115";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape124" -p "transform110";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface116" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.4177981473461197 0 ;
	setAttr ".rp" -type "double3" -84.496505737304688 0.26033401489257812 274.88252258300781 ;
	setAttr ".sp" -type "double3" -84.496505737304688 0.26033401489257812 274.88252258300781 ;
createNode transform -n "transform109" -p "polySurface116";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape125" -p "transform109";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface117" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.41779814734611975 0 ;
	setAttr ".rp" -type "double3" 118.1673583984375 0.26033401489257812 774.06289672851562 ;
	setAttr ".sp" -type "double3" 118.1673583984375 0.26033401489257812 774.06289672851562 ;
createNode transform -n "transform108" -p "polySurface117";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape126" -p "transform108";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface118" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.31334861050959212 0 ;
	setAttr ".rp" -type "double3" 78.465122222900391 -0.097019404172897339 545.84432983398438 ;
	setAttr ".sp" -type "double3" 78.465122222900391 -0.097019404172897339 545.84432983398438 ;
createNode transform -n "transform107" -p "polySurface118";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape127" -p "transform107";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface119" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.41779814734611964 0 ;
	setAttr ".rp" -type "double3" 161.169189453125 -0.097019404172897339 672.80413818359375 ;
	setAttr ".sp" -type "double3" 161.169189453125 -0.097019404172897339 672.80413818359375 ;
createNode transform -n "transform106" -p "polySurface119";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape128" -p "transform106";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface120" -p "polySurface114";
	setAttr ".rp" -type "double3" -0.76123428344726562 0.33093848824501038 372.37979125976562 ;
	setAttr ".sp" -type "double3" -0.76123428344726562 0.33093848824501038 372.37979125976562 ;
createNode transform -n "transform105" -p "polySurface120";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape129" -p "transform105";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface121" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.4177981473461197 0 ;
	setAttr ".rp" -type "double3" -114.85034561157227 0.33093848824501038 534.92529296875 ;
	setAttr ".sp" -type "double3" -114.85034561157227 0.33093848824501038 534.92529296875 ;
createNode transform -n "transform104" -p "polySurface121";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape130" -p "transform104";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface122" -p "polySurface114";
	setAttr ".t" -type "double3" 0 0.31334861050959212 0 ;
	setAttr ".rp" -type "double3" 79.934341430664062 0.33093848824501038 308.75401306152344 ;
	setAttr ".sp" -type "double3" 79.934341430664062 0.33093848824501038 308.75401306152344 ;
createNode transform -n "transform103" -p "polySurface122";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape131" -p "transform103";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform15" -p "polySurface114";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape114" -p "transform15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:84]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 159 ".uvst[0].uvsp[0:158]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.75 0.125 0.25 0.125 0.5 0 0.625 0.125
		 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375 0.625 0.625 0.5 0.75 0.375 0.625
		 0.75 0 0.875 0.125 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 115 ".vt[0:114]"  55.79706573 -0.38985085 0.94871169 60.70474243 -0.38985085 2.20297623
		 56.97182846 3.0077013969 1.1575048 59.22497177 3.16385365 1.36416912 56.89351273 3.17028379 -1.20275915
		 59.9681778 3.15706682 -0.77666193 55.79706573 -0.29340529 -2.66692901 60.000034332275 -0.38985085 -1.86042905
		 58.25090408 -0.38985085 3.9757154 58.32489777 3.28862977 2.047537565 58.32489777 3.04469347 -1.057590485
		 58.25090408 -0.38985085 -2.70470381 55.57312775 2.063989162 2.42691064 60.8351059 2.1969316 1.2057941
		 56.61258316 3.80790305 -0.40010643 60.24910355 3.43799543 0.025990605 55.57312775 1.55462241 -2.92863822
		 60.40144348 2.063989162 -1.46234131 55.60555267 -0.29340529 -0.25086373 61.40945435 -0.38985085 0.14827093
		 58.25090408 2.063989162 3.31950188 58.64501572 3.039582014 0.17244193 58.25090408 1.45817685 -1.93161678
		 61.82126999 2.063989162 -0.25086373 54.68053818 2.16043472 -0.25086373 66.32874298 -0.46324551 -8.95284939
		 68.020652771 -0.46324551 -8.52044582 66.73374176 0.70804727 -8.88086796 67.51050568 0.7618801 -8.80962181
		 66.70674133 0.76409686 -9.69456005 67.76672363 0.75954044 -9.54766464 66.32874298 -0.42999625 -10.19932652
		 67.77770233 -0.46324551 -9.92128944 67.17469788 -0.46324551 -7.90930128 67.20021057 0.80489624 -8.57403278
		 67.20021057 0.7208001 -9.64451408 67.17469788 -0.46324551 -10.21234989 66.25154877 0.38270617 -8.44324589
		 68.065589905 0.42853752 -8.86422062 66.6098938 0.9839136 -9.41784859 67.86357117 0.8563894 -9.27095318
		 66.25154877 0.20710395 -10.28954983 67.91608429 0.38270617 -9.78404999 66.26272583 -0.42999625 -9.36639786
		 68.26359558 -0.46324551 -9.22879791 67.17469788 0.38270617 -8.13552856 67.31056213 0.71903795 -9.22046471
		 67.17469788 0.17385474 -9.9458313 68.40557098 0.38270617 -9.36639786 65.94382477 0.41595542 -9.36639786
		 54.69792938 -0.46324551 8.59826946 55.29171371 -0.46324551 6.95603704 54.80868912 0.70804727 8.20211983
		 54.95462036 0.7618801 7.43586922 53.99619293 0.76409686 8.15040684 54.24477386 0.75954044 7.1095705
		 53.45727921 -0.42999625 8.47788525 53.87395477 -0.46324551 7.062553883 55.81829834 -0.46324551 7.85705853
		 55.15914154 0.80489624 7.76746845 54.093662262 0.7208001 7.66408205 53.52602005 -0.46324551 7.63463068
		 55.19769287 0.38270617 8.72432709 54.95388794 0.42853752 6.87810421 54.26225662 0.9839136 8.2735281
		 54.52954483 0.8563894 7.039898872 53.36001968 0.20710395 8.54601097 54.023918152 0.38270617 6.93807173
		 54.27993774 -0.42999625 8.62404346 54.61013794 -0.46324551 6.6458149 55.59313202 0.38270617 7.83520937
		 54.52638626 0.71903795 7.59519386 53.79129028 0.17385474 7.66037083 54.4868927 0.38270617 6.49121714
		 54.24913788 0.41595542 8.94144821 50.33514404 -0.6229642 1.75757146 51.1872406 -0.6229642 0.19002062
		 50.63844299 0.28697529 1.27567804 51.17949677 0.24301791 0.43121117 49.9172554 0.25987008 0.73681235
		 50.51286697 0.42892545 0.19623774 49.14436722 -0.6229642 1.32301903 50.18060684 -0.6229642 -0.26367396
		 67.8368988 -0.6229642 -3.91280723 66.88022614 -0.6229642 -5.41881943 67.56287384 0.28697529 -4.41192961
		 67.08731842 0.24301791 -5.29494333 66.74163055 0.25987008 -4.043087006 66.55823517 0.42892545 -4.82624769
		 66.87884521 -0.6229642 -3.082792759 65.99485016 -0.6229642 -4.75907993 69.54219055 -0.3443296 9.65095711
		 71.25457764 -0.3443296 9.65095711 70.056793213 1.0062065125 8.83893681 71.034164429 0.51726419 9.42709541
		 70.18592834 0.75025678 8.44851208 70.96692657 0.52066046 8.33868408 70.26226807 -0.3443296 7.93856812
		 71.25457764 -0.3443296 8.54680538 48.035892487 -0.3443296 -11.11912537 47.70360184 -0.3443296 -9.43928623
		 48.73261642 1.0062065125 -10.45672894 47.96598053 0.51726419 -9.61206722 49.090564728 0.75025678 -10.25428963
		 49.046749115 0.52066046 -9.46682262 49.57600021 -0.3443296 -10.08044529 48.78676605 -0.3443296 -9.22502518
		 79.33042908 -0.3443296 -11.11912537 78.99813843 -0.3443296 -9.43928623 80.027153015 1.0062065125 -10.45672894
		 79.26051331 0.51726419 -9.61206722 80.38510132 0.75025678 -10.25428963 80.34128571 0.52066046 -9.46682262
		 80.8705368 -0.3443296 -10.08044529 80.081306458 -0.3443296 -9.22502518;
	setAttr -s 192 ".ed";
	setAttr ".ed[0:165]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0 11 7 0
		 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0 17 7 0
		 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0 25 33 0 33 26 0 27 34 0 34 28 0 29 35 0 35 30 0 31 36 0 36 32 0 25 37 0
		 37 27 0 26 38 0 38 28 0 27 39 0 39 29 0 28 40 0 40 30 0 29 41 0 41 31 0 30 42 0 42 32 0
		 31 43 0 43 25 0 32 44 0 44 26 0 45 33 0 45 38 0 45 34 0 45 37 0 46 34 0 46 40 0 46 35 0
		 46 39 0 47 35 0 47 42 0 47 36 0 47 41 0 48 44 0 48 42 0 48 40 0 48 38 0 49 43 0 49 37 0
		 49 39 0 49 41 0 50 58 0 58 51 0 52 59 0 59 53 0 54 60 0 60 55 0 56 61 0 61 57 0 50 62 0
		 62 52 0 51 63 0 63 53 0 52 64 0 64 54 0 53 65 0 65 55 0 54 66 0 66 56 0 55 67 0 67 57 0
		 56 68 0 68 50 0 57 69 0 69 51 0 70 58 0 70 63 0 70 59 0 70 62 0 71 59 0 71 65 0 71 60 0
		 71 64 0 72 60 0 72 67 0 72 61 0 72 66 0 73 69 0 73 67 0 73 65 0 73 63 0 74 68 0 74 62 0
		 74 64 0 74 66 0 75 76 0 77 78 0 79 80 0 81 82 0 75 77 0 76 78 0 77 79 0 78 80 0 79 81 0
		 80 82 0 81 75 0 82 76 0 83 84 0 85 86 0 87 88 0 89 90 0 83 85 0 84 86 0 85 87 0 86 88 0
		 87 89 0 88 90 0 89 83 0 90 84 0 91 92 0 93 94 0 95 96 0 97 98 0 91 93 0 92 94 0 93 95 0
		 94 96 0 95 97 0 96 98 0;
	setAttr ".ed[166:191]" 97 91 0 98 92 0 99 100 0 101 102 0 103 104 0 105 106 0
		 99 101 0 100 102 0 101 103 0 102 104 0 103 105 0 104 106 0 105 99 0 106 100 0 107 108 0
		 109 110 0 111 112 0 113 114 0 107 109 0 108 110 0 109 111 0 110 112 0 111 113 0 112 114 0
		 113 107 0 114 108 0;
	setAttr -s 85 -ch 340 ".fc[0:84]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 17 1 18 12
		f 4 11 -4 -27 25
		mu 0 4 18 3 19 12
		f 4 -3 -10 -28 26
		mu 0 4 19 2 20 12
		f 4 -9 0 -25 27
		mu 0 4 20 0 17 12
		f 4 3 14 -30 28
		mu 0 4 19 3 21 13
		f 4 15 -6 -31 29
		mu 0 4 21 5 22 13
		f 4 -5 -14 -32 30
		mu 0 4 22 4 23 13
		f 4 -13 2 -29 31
		mu 0 4 23 2 19 13
		f 4 5 18 -34 32
		mu 0 4 22 5 24 14
		f 4 19 -8 -35 33
		mu 0 4 24 7 25 14
		f 4 -7 -18 -36 34
		mu 0 4 25 6 26 14
		f 4 -17 4 -33 35
		mu 0 4 26 4 22 14
		f 4 -23 -20 -38 36
		mu 0 4 27 8 28 15
		f 4 -19 -16 -39 37
		mu 0 4 28 9 29 15
		f 4 -15 -12 -40 38
		mu 0 4 29 3 18 15
		f 4 -11 -24 -37 39
		mu 0 4 18 1 27 15
		f 4 21 8 -42 40
		mu 0 4 30 0 20 16
		f 4 9 12 -43 41
		mu 0 4 20 2 31 16
		f 4 13 16 -44 42
		mu 0 4 31 11 32 16
		f 4 17 20 -41 43
		mu 0 4 32 10 30 16
		f 4 45 54 -70 68
		mu 0 4 33 34 35 36
		f 4 55 -48 -71 69
		mu 0 4 35 37 38 36
		f 4 -47 -54 -72 70
		mu 0 4 38 39 40 36
		f 4 -53 44 -69 71
		mu 0 4 40 41 33 36
		f 4 47 58 -74 72
		mu 0 4 38 37 42 43
		f 4 59 -50 -75 73
		mu 0 4 42 44 45 43
		f 4 -49 -58 -76 74
		mu 0 4 45 46 47 43
		f 4 -57 46 -73 75
		mu 0 4 47 39 38 43
		f 4 49 62 -78 76
		mu 0 4 45 44 48 49
		f 4 63 -52 -79 77
		mu 0 4 48 50 51 49
		f 4 -51 -62 -80 78
		mu 0 4 51 52 53 49
		f 4 -61 48 -77 79
		mu 0 4 53 46 45 49
		f 4 -67 -64 -82 80
		mu 0 4 54 55 56 57
		f 4 -63 -60 -83 81
		mu 0 4 56 58 59 57
		f 4 -59 -56 -84 82
		mu 0 4 59 37 35 57
		f 4 -55 -68 -81 83
		mu 0 4 35 34 54 57
		f 4 65 52 -86 84
		mu 0 4 60 41 40 61
		f 4 53 56 -87 85
		mu 0 4 40 39 62 61
		f 4 57 60 -88 86
		mu 0 4 62 63 64 61
		f 4 61 64 -85 87
		mu 0 4 64 65 60 61
		f 4 89 98 -114 112
		mu 0 4 66 67 68 69
		f 4 99 -92 -115 113
		mu 0 4 68 70 71 69
		f 4 -91 -98 -116 114
		mu 0 4 71 72 73 69
		f 4 -97 88 -113 115
		mu 0 4 73 74 66 69
		f 4 91 102 -118 116
		mu 0 4 71 70 75 76
		f 4 103 -94 -119 117
		mu 0 4 75 77 78 76
		f 4 -93 -102 -120 118
		mu 0 4 78 79 80 76
		f 4 -101 90 -117 119
		mu 0 4 80 72 71 76
		f 4 93 106 -122 120
		mu 0 4 78 77 81 82
		f 4 107 -96 -123 121
		mu 0 4 81 83 84 82
		f 4 -95 -106 -124 122
		mu 0 4 84 85 86 82
		f 4 -105 92 -121 123
		mu 0 4 86 79 78 82
		f 4 -111 -108 -126 124
		mu 0 4 87 88 89 90
		f 4 -107 -104 -127 125
		mu 0 4 89 91 92 90
		f 4 -103 -100 -128 126
		mu 0 4 92 70 68 90
		f 4 -99 -112 -125 127
		mu 0 4 68 67 87 90
		f 4 109 96 -130 128
		mu 0 4 93 74 73 94
		f 4 97 100 -131 129
		mu 0 4 73 72 95 94
		f 4 101 104 -132 130
		mu 0 4 95 96 97 94
		f 4 105 108 -129 131
		mu 0 4 97 98 93 94
		f 4 132 137 -134 -137
		mu 0 4 99 100 101 102
		f 4 133 139 -135 -139
		mu 0 4 102 101 103 104
		f 4 134 141 -136 -141
		mu 0 4 104 103 105 106
		f 4 -144 -142 -140 -138
		mu 0 4 100 107 108 101
		f 4 142 136 138 140
		mu 0 4 109 99 102 110
		f 4 144 149 -146 -149
		mu 0 4 111 112 113 114
		f 4 145 151 -147 -151
		mu 0 4 114 113 115 116
		f 4 146 153 -148 -153
		mu 0 4 116 115 117 118
		f 4 -156 -154 -152 -150
		mu 0 4 112 119 120 113
		f 4 154 148 150 152
		mu 0 4 121 111 114 122
		f 4 156 161 -158 -161
		mu 0 4 123 124 125 126
		f 4 157 163 -159 -163
		mu 0 4 126 125 127 128
		f 4 158 165 -160 -165
		mu 0 4 128 127 129 130
		f 4 -168 -166 -164 -162
		mu 0 4 124 131 132 125
		f 4 166 160 162 164
		mu 0 4 133 123 126 134
		f 4 168 173 -170 -173
		mu 0 4 135 136 137 138
		f 4 169 175 -171 -175
		mu 0 4 138 137 139 140
		f 4 170 177 -172 -177
		mu 0 4 140 139 141 142
		f 4 -180 -178 -176 -174
		mu 0 4 136 143 144 137
		f 4 178 172 174 176
		mu 0 4 145 135 138 146
		f 4 180 185 -182 -185
		mu 0 4 147 148 149 150
		f 4 181 187 -183 -187
		mu 0 4 150 149 151 152
		f 4 182 189 -184 -189
		mu 0 4 152 151 153 154
		f 4 -192 -190 -188 -186
		mu 0 4 148 155 156 149
		f 4 190 184 186 188
		mu 0 4 157 147 150 158;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface123";
	setAttr ".t" -type "double3" -11.365458580944129 -1.4832753412993309 -137.70346290730089 ;
	setAttr ".s" -type "double3" 0.19359726184840967 0.19359726184840967 0.19359726184840967 ;
	setAttr ".rp" -type "double3" 62.054468154907227 1.9124851226806641 -13.903981924057007 ;
	setAttr ".sp" -type "double3" 62.054468154907227 1.9124851226806641 -13.903981924057007 ;
createNode transform -n "polySurface124" -p "polySurface123";
	setAttr ".rp" -type "double3" 226.07966613769531 0.33093848824501038 444.29051208496094 ;
	setAttr ".sp" -type "double3" 226.07966613769531 0.33093848824501038 444.29051208496094 ;
createNode transform -n "transform102" -p "polySurface124";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape133" -p "transform102";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface125" -p "polySurface123";
	setAttr ".rp" -type "double3" -14.108798980712891 2.1982325315475464 784.63534545898438 ;
	setAttr ".sp" -type "double3" -14.108798980712891 2.1982325315475464 784.63534545898438 ;
createNode transform -n "transform101" -p "polySurface125";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape134" -p "transform101";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface126" -p "polySurface123";
	setAttr ".rp" -type "double3" -292.30160522460938 0.75530964136123657 781.53662109375 ;
	setAttr ".sp" -type "double3" -292.30160522460938 0.75530964136123657 781.53662109375 ;
createNode transform -n "transform100" -p "polySurface126";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape135" -p "transform100";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface127" -p "polySurface123";
	setAttr ".rp" -type "double3" 181.86083984375 0.91085147857666016 788.03262329101562 ;
	setAttr ".sp" -type "double3" 181.86083984375 0.91085147857666016 788.03262329101562 ;
createNode transform -n "transform99" -p "polySurface127";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape136" -p "transform99";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface128" -p "polySurface123";
	setAttr ".t" -type "double3" 0 0.31334861050959206 0 ;
	setAttr ".rp" -type "double3" 246.40540313720703 -0.097019404172897339 599.50042724609375 ;
	setAttr ".sp" -type "double3" 246.40540313720703 -0.097019404172897339 599.50042724609375 ;
createNode transform -n "transform98" -p "polySurface128";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape137" -p "transform98";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface129" -p "polySurface123";
	setAttr ".rp" -type "double3" 50.608692169189453 0.33093848824501038 286.20924377441406 ;
	setAttr ".sp" -type "double3" 50.608692169189453 0.33093848824501038 286.20924377441406 ;
createNode transform -n "transform97" -p "polySurface129";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape138" -p "transform97";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface130" -p "polySurface123";
	setAttr ".t" -type "double3" 0 0.4177981473461197 0 ;
	setAttr ".rp" -type "double3" 139.25711059570312 0.12485069036483765 654.39022827148438 ;
	setAttr ".sp" -type "double3" 139.25711059570312 0.12485069036483765 654.39022827148438 ;
createNode transform -n "transform96" -p "polySurface130";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape139" -p "transform96";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface131" -p "polySurface123";
	setAttr ".rp" -type "double3" -12.986793518066406 0.13623517751693726 540.23403930664062 ;
	setAttr ".sp" -type "double3" -12.986793518066406 0.13623517751693726 540.23403930664062 ;
createNode transform -n "transform95" -p "polySurface131";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape140" -p "transform95";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface132" -p "polySurface123";
	setAttr ".t" -type "double3" 0 0.41779814734612242 0 ;
	setAttr ".rp" -type "double3" 128.18412017822266 0.13623517751693726 425.54386901855469 ;
	setAttr ".sp" -type "double3" 128.18412017822266 0.13623517751693726 425.54386901855469 ;
createNode transform -n "transform94" -p "polySurface132";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape141" -p "transform94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform16" -p "polySurface123";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape123" -p "transform16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:89]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 171 ".uvst[0].uvsp[0:170]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375
		 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625
		 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125
		 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125
		 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375
		 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625
		 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125
		 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125
		 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375
		 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5
		 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375
		 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625
		 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25
		 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25
		 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 123 ".vt[0:122]"  42.8236618 -0.3443296 -11.14754391 43.82558441 -0.3443296 -10.69932079
		 42.6278038 1.0062065125 -11.51134109 43.60517502 0.84922612 -10.92318249 42.75693512 0.75025678 -11.90176582
		 43.53793335 0.76531756 -11.64609909 42.83327484 -0.3443296 -12.41170979 43.82558441 -0.3443296 -11.80347252
		 50.65517426 -0.38985085 -17.19211388 55.56285095 -0.38985085 -15.93784904 50.81092072 3.4272337 -16.46989822
		 55.8999939 3.4272337 -17.02844429 50.67790985 4.30918026 -20.47862625 55.8999939 2.71063566 -19.75493431
		 50.65517426 -0.38985085 -20.055721283 54.85814285 -0.38985085 -20.0012550354 53.1090126 -0.38985085 -14.16510963
		 53.1090126 3.90436912 -14.95824528 53.1090126 3.12558985 -20.23206902 53.1090126 -0.38985085 -20.84552956
		 50.43123627 2.063989162 -15.71391487 55.78678894 2.063989162 -15.71391487 50.20077515 4.78631592 -19.11538315
		 56.37713242 3.18777108 -18.3916893 50.43123627 2.063989162 -21.06946373 55.78678894 2.063989162 -21.06946373
		 51.35981369 -0.38985085 -18.3916893 56.26756287 -0.38985085 -17.99255371 53.1090126 2.063989162 -14.82132339
		 53.1090126 3.73904991 -17.71623421 53.1090126 2.063989162 -21.96205521 56.67937851 2.063989162 -18.3916893
		 49.5386467 2.063989162 -18.3916893 49.20155716 -0.51910907 -20.51311874 51.073509216 -0.51910907 -20.64631844
		 49.72845078 1.56783223 -20.91029739 51.12186432 1.66440153 -20.78248978 49.68001556 1.66837823 -22.36995888
		 51.90349197 1.77920341 -22.34260559 49.80066681 -0.48788518 -22.76852417 51.16135788 -0.51910907 -22.5074234
		 50.59508514 -0.51910907 -19.53314018 50.6330452 1.88091695 -20.15916634 50.56523132 1.59070921 -22.28018188
		 50.59508514 -0.51910907 -22.78075409 48.60652542 0.73508799 -19.90553474 51.84542847 0.97610426 -20.74928093
		 48.6847229 1.5459913 -21.98700523 51.75521851 1.83393931 -21.61006165 49.49311066 0.82440931 -23.055747986
		 52.055770874 1.20459092 -22.64398003 48.83229065 -0.48788518 -21.52007675 52.52854156 -0.51910907 -21.3908577
		 50.57584 0.48798621 -18.80550575 50.76319885 1.58754826 -21.5194912 50.57584 0.74719882 -23.51908112
		 53.070064545 1.058343768 -21.79097176 47.96887589 1.1262517 -21.77932739 53.85693741 -0.96134567 -13.49703598
		 56.7284317 -0.96134567 -12.21243382 53.29560471 2.18597984 -14.5396719 56.096736908 1.82014871 -12.85401917
		 53.66569519 1.58950782 -15.65862274 55.90402985 1.62460589 -14.92588425 53.88448715 -0.96134567 -17.12011337
		 56.7284317 -0.96134567 -15.37691689 62.70938492 -0.6229642 -22.68264389 64.48861694 -0.6229642 -22.54990578
		 63.27334213 0.28697529 -22.60414124 64.26554871 0.24301791 -22.45786285 63.46828079 0.25987008 -23.48305321
		 64.20584869 0.42892545 -23.1621666 62.61627197 -0.6229642 -23.94680977 64.48861694 -0.6229642 -23.65405846
		 49.75249481 -0.3443296 -28.84459114 51.4648819 -0.3443296 -28.84459114 50.26710129 1.0062065125 -29.6566124
		 51.2444725 0.51726419 -29.068454742 50.3962326 0.75025678 -30.047037125 51.17723083 0.52066046 -30.15686417
		 50.47257233 -0.3443296 -30.55698204 51.4648819 -0.3443296 -29.94874382 69.060623169 -0.54409981 2.64933968
		 70.10414886 -0.54409981 2.57508683 69.3543396 0.61927122 2.42793036 70.13110352 0.67310405 2.49917722
		 69.32733917 0.67532086 1.61423874 70.56682587 0.73710066 1.62948692 69.39459991 -0.52669394 1.39205742
		 70.15312195 -0.54409981 1.53760862 69.83744812 -0.54409981 3.19563103 69.85861206 0.79380113 2.8466506
		 69.82080841 0.63202405 1.66428506 69.83744812 -0.54409981 1.38524008 68.72891998 0.1550557 2.98803854
		 70.53445435 0.28941089 2.51768947 68.77250671 0.60709596 1.82771695 70.48416901 0.76761341 2.037845373
		 69.22314453 0.20484811 1.23194337 70.65171051 0.4167814 1.46148515 68.85477448 -0.52669394 2.088007927
		 70.91526031 -0.54409981 2.16004086 69.82672119 0.017308176 3.60125208 69.93115997 0.6302619 2.088333845
		 69.82672119 0.16180691 0.97365737 71.21713257 0.33525547 1.93699682 68.37345886 0.37311092 1.94348717
		 53.11725616 -0.47109693 0.88903427 53.75595474 -0.47109693 2.47785234 53.95574188 0.55358595 1.17179155
		 53.89862823 0.74356723 2.10642338 55.17326355 0.10474381 0.75384712 55.10900497 0.052692115 1.71332073
		 54.70607376 -0.47109693 0.25033689 55.34477234 -0.47109693 1.83915496 80.86453247 -0.47109693 -29.19509315
		 81.48113251 -0.47109693 -30.79261971 80.44421387 0.55358595 -29.97377205 81.12345886 0.74356723 -30.61830711
		 79.26878357 0.10474381 -30.49855614 79.97019196 0.052692115 -31.15638542 79.26700592 -0.47109693 -29.81168938
		 79.88360596 -0.47109693 -31.40921593;
	setAttr -s 204 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0 3 5 0 4 6 0
		 5 7 0 6 0 0 7 1 0 8 16 0 16 9 0 10 17 0 17 11 0 12 18 0 18 13 0 14 19 0 19 15 0 8 20 0
		 20 10 0 9 21 0 21 11 0 10 22 0 22 12 0 11 23 0 23 13 0 12 24 0 24 14 0 13 25 0 25 15 0
		 14 26 0 26 8 0 15 27 0 27 9 0 28 16 0 28 21 0 28 17 0 28 20 0 29 17 0 29 23 0 29 18 0
		 29 22 0 30 18 0 30 25 0 30 19 0 30 24 0 31 27 0 31 25 0 31 23 0 31 21 0 32 26 0 32 20 0
		 32 22 0 32 24 0 33 41 0 41 34 0 35 42 0 42 36 0 37 43 0 43 38 0 39 44 0 44 40 0 33 45 0
		 45 35 0 34 46 0 46 36 0 35 47 0 47 37 0 36 48 0 48 38 0 37 49 0 49 39 0 38 50 0 50 40 0
		 39 51 0 51 33 0 40 52 0 52 34 0 53 41 0 53 46 0 53 42 0 53 45 0 54 42 0 54 48 0 54 43 0
		 54 47 0 55 43 0 55 50 0 55 44 0 55 49 0 56 52 0 56 50 0 56 48 0 56 46 0 57 51 0 57 45 0
		 57 47 0 57 49 0 58 59 0 60 61 0 62 63 0 64 65 0 58 60 0 59 61 0 60 62 0 61 63 0 62 64 0
		 63 65 0 64 58 0 65 59 0 66 67 0 68 69 0 70 71 0 72 73 0 66 68 0 67 69 0 68 70 0 69 71 0
		 70 72 0 71 73 0 72 66 0 73 67 0 74 75 0 76 77 0 78 79 0 80 81 0 74 76 0 75 77 0 76 78 0
		 77 79 0 78 80 0 79 81 0 80 74 0 81 75 0 82 90 0 90 83 0 84 91 0 91 85 0 86 92 0 92 87 0
		 88 93 0 93 89 0 82 94 0 94 84 0 83 95 0 95 85 0 84 96 0 96 86 0 85 97 0 97 87 0 86 98 0
		 98 88 0 87 99 0 99 89 0 88 100 0 100 82 0 89 101 0 101 83 0 102 90 0 102 95 0 102 91 0
		 102 94 0 103 91 0 103 97 0;
	setAttr ".ed[166:203]" 103 92 0 103 96 0 104 92 0 104 99 0 104 93 0 104 98 0
		 105 101 0 105 99 0 105 97 0 105 95 0 106 100 0 106 94 0 106 96 0 106 98 0 107 108 0
		 109 110 0 111 112 0 113 114 0 107 109 0 108 110 0 109 111 0 110 112 0 111 113 0 112 114 0
		 113 107 0 114 108 0 115 116 0 117 118 0 119 120 0 121 122 0 115 117 0 116 118 0 117 119 0
		 118 120 0 119 121 0 120 122 0 121 115 0 122 116 0;
	setAttr -s 90 -ch 360 ".fc[0:89]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11
		f 4 13 22 -38 36
		mu 0 4 12 13 14 15
		f 4 23 -16 -39 37
		mu 0 4 14 16 17 15
		f 4 -15 -22 -40 38
		mu 0 4 17 18 19 15
		f 4 -21 12 -37 39
		mu 0 4 19 20 12 15
		f 4 15 26 -42 40
		mu 0 4 17 16 21 22
		f 4 27 -18 -43 41
		mu 0 4 21 23 24 22
		f 4 -17 -26 -44 42
		mu 0 4 24 25 26 22
		f 4 -25 14 -41 43
		mu 0 4 26 18 17 22
		f 4 17 30 -46 44
		mu 0 4 24 23 27 28
		f 4 31 -20 -47 45
		mu 0 4 27 29 30 28
		f 4 -19 -30 -48 46
		mu 0 4 30 31 32 28
		f 4 -29 16 -45 47
		mu 0 4 32 25 24 28
		f 4 -35 -32 -50 48
		mu 0 4 33 34 35 36
		f 4 -31 -28 -51 49
		mu 0 4 35 37 38 36
		f 4 -27 -24 -52 50
		mu 0 4 38 16 14 36
		f 4 -23 -36 -49 51
		mu 0 4 14 13 33 36
		f 4 33 20 -54 52
		mu 0 4 39 20 19 40
		f 4 21 24 -55 53
		mu 0 4 19 18 41 40
		f 4 25 28 -56 54
		mu 0 4 41 42 43 40
		f 4 29 32 -53 55
		mu 0 4 43 44 39 40
		f 4 57 66 -82 80
		mu 0 4 45 46 47 48
		f 4 67 -60 -83 81
		mu 0 4 47 49 50 48
		f 4 -59 -66 -84 82
		mu 0 4 50 51 52 48
		f 4 -65 56 -81 83
		mu 0 4 52 53 45 48
		f 4 59 70 -86 84
		mu 0 4 50 49 54 55
		f 4 71 -62 -87 85
		mu 0 4 54 56 57 55
		f 4 -61 -70 -88 86
		mu 0 4 57 58 59 55
		f 4 -69 58 -85 87
		mu 0 4 59 51 50 55
		f 4 61 74 -90 88
		mu 0 4 57 56 60 61
		f 4 75 -64 -91 89
		mu 0 4 60 62 63 61
		f 4 -63 -74 -92 90
		mu 0 4 63 64 65 61
		f 4 -73 60 -89 91
		mu 0 4 65 58 57 61
		f 4 -79 -76 -94 92
		mu 0 4 66 67 68 69
		f 4 -75 -72 -95 93
		mu 0 4 68 70 71 69
		f 4 -71 -68 -96 94
		mu 0 4 71 49 47 69
		f 4 -67 -80 -93 95
		mu 0 4 47 46 66 69
		f 4 77 64 -98 96
		mu 0 4 72 53 52 73
		f 4 65 68 -99 97
		mu 0 4 52 51 74 73
		f 4 69 72 -100 98
		mu 0 4 74 75 76 73
		f 4 73 76 -97 99
		mu 0 4 76 77 72 73
		f 4 100 105 -102 -105
		mu 0 4 78 79 80 81
		f 4 101 107 -103 -107
		mu 0 4 81 80 82 83
		f 4 102 109 -104 -109
		mu 0 4 83 82 84 85
		f 4 -112 -110 -108 -106
		mu 0 4 79 86 87 80
		f 4 110 104 106 108
		mu 0 4 88 78 81 89
		f 4 112 117 -114 -117
		mu 0 4 90 91 92 93
		f 4 113 119 -115 -119
		mu 0 4 93 92 94 95
		f 4 114 121 -116 -121
		mu 0 4 95 94 96 97
		f 4 -124 -122 -120 -118
		mu 0 4 91 98 99 92
		f 4 122 116 118 120
		mu 0 4 100 90 93 101
		f 4 124 129 -126 -129
		mu 0 4 102 103 104 105
		f 4 125 131 -127 -131
		mu 0 4 105 104 106 107
		f 4 126 133 -128 -133
		mu 0 4 107 106 108 109
		f 4 -136 -134 -132 -130
		mu 0 4 103 110 111 104
		f 4 134 128 130 132
		mu 0 4 112 102 105 113
		f 4 137 146 -162 160
		mu 0 4 114 115 116 117
		f 4 147 -140 -163 161
		mu 0 4 116 118 119 117
		f 4 -139 -146 -164 162
		mu 0 4 119 120 121 117
		f 4 -145 136 -161 163
		mu 0 4 121 122 114 117
		f 4 139 150 -166 164
		mu 0 4 119 118 123 124
		f 4 151 -142 -167 165
		mu 0 4 123 125 126 124
		f 4 -141 -150 -168 166
		mu 0 4 126 127 128 124
		f 4 -149 138 -165 167
		mu 0 4 128 120 119 124
		f 4 141 154 -170 168
		mu 0 4 126 125 129 130
		f 4 155 -144 -171 169
		mu 0 4 129 131 132 130
		f 4 -143 -154 -172 170
		mu 0 4 132 133 134 130
		f 4 -153 140 -169 171
		mu 0 4 134 127 126 130
		f 4 -159 -156 -174 172
		mu 0 4 135 136 137 138
		f 4 -155 -152 -175 173
		mu 0 4 137 139 140 138
		f 4 -151 -148 -176 174
		mu 0 4 140 118 116 138
		f 4 -147 -160 -173 175
		mu 0 4 116 115 135 138
		f 4 157 144 -178 176
		mu 0 4 141 122 121 142
		f 4 145 148 -179 177
		mu 0 4 121 120 143 142
		f 4 149 152 -180 178
		mu 0 4 143 144 145 142
		f 4 153 156 -177 179
		mu 0 4 145 146 141 142
		f 4 180 185 -182 -185
		mu 0 4 147 148 149 150
		f 4 181 187 -183 -187
		mu 0 4 150 149 151 152
		f 4 182 189 -184 -189
		mu 0 4 152 151 153 154
		f 4 -192 -190 -188 -186
		mu 0 4 148 155 156 149
		f 4 190 184 186 188
		mu 0 4 157 147 150 158
		f 4 192 197 -194 -197
		mu 0 4 159 160 161 162
		f 4 193 199 -195 -199
		mu 0 4 162 161 163 164
		f 4 194 201 -196 -201
		mu 0 4 164 163 165 166
		f 4 -204 -202 -200 -198
		mu 0 4 160 167 168 161
		f 4 202 196 198 200
		mu 0 4 169 159 162 170;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface133";
	setAttr ".t" -type "double3" -58.201985969105976 -1.1144580247146449 -114.63768073142464 ;
	setAttr ".s" -type "double3" 0.19359726184840967 0.19359726184840967 0.19359726184840967 ;
	setAttr ".rp" -type "double3" 63.115060806274414 1.4288996160030365 6.0657162666320801 ;
	setAttr ".sp" -type "double3" 63.115060806274414 1.4288996160030365 6.0657162666320801 ;
createNode transform -n "polySurface134" -p "polySurface133";
	setAttr ".t" -type "double3" 0 -0.24562487856074655 0 ;
	setAttr ".rp" -type "double3" -394.22561645507812 1.5454562902450562 931.62161254882812 ;
	setAttr ".sp" -type "double3" -394.22561645507812 1.5454562902450562 931.62161254882812 ;
createNode transform -n "transform93" -p "polySurface134";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape143" -p "transform93";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface135" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.36843731784111988 0 ;
	setAttr ".rp" -type "double3" -343.63313293457031 0.75588953495025635 933.31069946289062 ;
	setAttr ".sp" -type "double3" -343.63313293457031 0.75588953495025635 933.31069946289062 ;
createNode transform -n "transform92" -p "polySurface135";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape144" -p "transform92";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface136" -p "polySurface133";
	setAttr ".rp" -type "double3" -289.28129577636719 0.33093848824501038 805.189697265625 ;
	setAttr ".sp" -type "double3" -289.28129577636719 0.33093848824501038 805.189697265625 ;
createNode transform -n "transform91" -p "polySurface136";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape145" -p "transform91";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface137" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.491249757121484 0 ;
	setAttr ".rp" -type "double3" -459.38632202148438 0.32793170213699341 827.29812622070312 ;
	setAttr ".sp" -type "double3" -459.38632202148438 0.32793170213699341 827.29812622070312 ;
createNode transform -n "transform90" -p "polySurface137";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape146" -p "transform90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface138" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.20889907367305988 0 ;
	setAttr ".rp" -type "double3" -255.57711029052734 0.13623517751693726 917.74090576171875 ;
	setAttr ".sp" -type "double3" -255.57711029052734 0.13623517751693726 917.74090576171875 ;
createNode transform -n "transform89" -p "polySurface138";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape147" -p "transform89";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface139" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.41779814734611975 0 ;
	setAttr ".rp" -type "double3" -241.94896697998047 0.13623517751693726 768.59439086914062 ;
	setAttr ".sp" -type "double3" -241.94896697998047 0.13623517751693726 768.59439086914062 ;
createNode transform -n "transform88" -p "polySurface139";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape148" -p "transform88";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface140" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.52224768418264733 0 ;
	setAttr ".rp" -type "double3" -42.747035980224609 -0.097019404172897339 690.06411743164062 ;
	setAttr ".sp" -type "double3" -42.747035980224609 -0.097019404172897339 690.06411743164062 ;
createNode transform -n "transform87" -p "polySurface140";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape149" -p "transform87";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface141" -p "polySurface133";
	setAttr ".t" -type "double3" 4.5877633351838713e-15 0.31334861050958723 0 ;
	setAttr ".rp" -type "double3" 10.503311157226562 0.13623517751693726 914.68600463867188 ;
	setAttr ".sp" -type "double3" 10.503311157226562 0.13623517751693726 914.68600463867188 ;
createNode transform -n "transform86" -p "polySurface141";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape150" -p "transform86";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface142" -p "polySurface133";
	setAttr ".t" -type "double3" 7.340421336294194e-14 1.0444953683653058 0 ;
	setAttr ".rp" -type "double3" 363.89724731445312 -0.77396577596664429 926.26437377929688 ;
	setAttr ".sp" -type "double3" 363.89724731445312 -0.77396577596664429 926.26437377929688 ;
createNode transform -n "transform85" -p "polySurface142";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape151" -p "transform85";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface143" -p "polySurface133";
	setAttr ".t" -type "double3" 0 0.4177981473461197 0 ;
	setAttr ".rp" -type "double3" -92.020793914794922 0.13623517751693726 753.946533203125 ;
	setAttr ".sp" -type "double3" -92.020793914794922 0.13623517751693726 753.946533203125 ;
createNode transform -n "transform84" -p "polySurface143";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape152" -p "transform84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform17" -p "polySurface133";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape133" -p "transform17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:49]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 120 ".uvst[0].uvsp[0:119]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 80 ".vt[0:79]"  60.79508591 -0.38985085 8.11230278 62.24428177 -0.38985085 5.32025433
		 59.72161102 3.48076344 8.61213589 61.5670929 3.030860424 5.91362476 58.62604141 2.74721599 8.17768669
		 59.48753357 2.79037976 5.98568344 57.17972183 -0.38985085 7.87439108 59.085140228 -0.38985085 5.13647842
		 58.93664551 -0.36025715 9.97855759 61.76704407 -0.36025715 9.97855759 59.78723526 1.87203622 8.63637352
		 61.40272522 1.063866258 9.60853767 60.00067520142 1.44897842 7.99104261 61.29158783 1.069479942 7.80950928
		 60.12685776 -0.36025715 7.14815903 61.76704407 -0.36025715 8.15351009 72.0053634644 -0.3443296 -1.60892189
		 73.0072860718 -0.3443296 -1.16069818 71.80950165 1.0062065125 -1.97271872 72.78687286 0.84922612 -1.38456011
		 71.93863678 0.75025678 -2.36314344 72.71963501 0.76531756 -2.10747623 72.014976501 -0.3443296 -2.87308764
		 73.0072860718 -0.3443296 -2.26485062 53.38781357 -0.54139954 18.6306572 53.059764862 -0.54139954 21.5614109
		 53.22366333 0.96263427 19.55738258 52.92137146 0.88997734 21.18732071 54.66349411 0.91783226 19.93311882
		 54.088363647 1.19726288 21.13178444 55.48160934 -0.54139954 18.55415726 54.88356018 -0.54139954 21.62892914
		 61.58527756 -0.47109693 14.2761097 61.52383423 -0.47109693 15.98739624 62.23672104 0.55358595 14.87496662
		 61.80503082 0.74356723 15.70589542 63.51906204 0.10474381 14.98738766 63.070755005 0.052692115 15.83811569
		 63.29656219 -0.47109693 14.33755493 63.23511887 -0.47109693 16.048841476 44.18984222 -0.47109693 4.0099773407
		 44.65852356 -0.47109693 2.36297464 43.70041275 0.55358595 3.27277517 44.31819153 0.74356723 2.56910825
		 42.48210526 0.10474381 2.85711956 43.12075424 0.052692115 2.13819766 42.54283905 -0.47109693 3.54129791
		 43.011520386 -0.47109693 1.89429533 42.6049118 -0.6229642 12.44020367 43.33544922 -0.6229642 14.067962646
		 42.80443573 0.28697529 12.97349644 43.14828873 0.24301791 13.91563797 43.67012787 0.25987008 12.7263813
		 43.73918152 0.42892545 13.5277586 43.67220306 -0.6229642 11.75633526 44.30637741 -0.6229642 13.54217243
		 71.1031189 -0.47109693 11.59696198 71.6904068 -0.47109693 13.20549202 71.9320755 0.55358595 11.90652943
		 71.84494781 0.74356723 12.83884239 73.16240692 0.10474381 11.52794361 73.067337036 0.052692115 12.48485565
		 72.71164703 -0.47109693 11.0096740723 73.29893494 -0.47109693 12.61820412 83.74801636 -0.47109693 23.25521469
		 82.18565369 -0.47109693 22.55428886 82.94802856 0.55358595 23.63340569 82.34063721 0.74356723 22.92075157
		 82.36129761 0.10474381 24.7791748 81.74181366 0.052692115 24.043672562 83.047088623 -0.47109693 24.81757927
		 81.48472595 -0.47109693 24.11665344 57.22558212 -0.47109693 -10.70527744 57.51947021 -0.47109693 -12.39225864
		 56.66174698 0.55358595 -11.38725948 57.20256042 0.74356723 -12.15166855 55.40665436 0.10474381 -11.67324257
		 55.96662521 0.052692115 -12.45500374 55.53859711 -0.47109693 -10.99916553 55.8324852 -0.47109693 -12.68614674;
	setAttr -s 120 ".ed[0:119]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 16 17 0 18 19 0 20 21 0 22 23 0 16 18 0 17 19 0
		 18 20 0 19 21 0 20 22 0 21 23 0 22 16 0 23 17 0 24 25 0 26 27 0 28 29 0 30 31 0 24 26 0
		 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 33 0 34 35 0 36 37 0 38 39 0
		 32 34 0 33 35 0 34 36 0 35 37 0 36 38 0 37 39 0 38 32 0 39 33 0 40 41 0 42 43 0 44 45 0
		 46 47 0 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0 46 40 0 47 41 0 48 49 0 50 51 0
		 52 53 0 54 55 0 48 50 0 49 51 0 50 52 0 51 53 0 52 54 0 53 55 0 54 48 0 55 49 0 56 57 0
		 58 59 0 60 61 0 62 63 0 56 58 0 57 59 0 58 60 0 59 61 0 60 62 0 61 63 0 62 56 0 63 57 0
		 64 65 0 66 67 0 68 69 0 70 71 0 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 64 0
		 71 65 0 72 73 0 74 75 0 76 77 0 78 79 0 72 74 0 73 75 0 74 76 0 75 77 0 76 78 0 77 79 0
		 78 72 0 79 73 0;
	setAttr -s 50 -ch 200 ".fc[0:49]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 -12 -10 -8 -6
		mu 0 4 1 8 9 3
		f 4 10 4 6 8
		mu 0 4 10 0 2 11
		f 4 12 17 -14 -17
		mu 0 4 12 13 14 15
		f 4 13 19 -15 -19
		mu 0 4 15 14 16 17
		f 4 14 21 -16 -21
		mu 0 4 17 16 18 19
		f 4 -24 -22 -20 -18
		mu 0 4 13 20 21 14
		f 4 22 16 18 20
		mu 0 4 22 12 15 23
		f 4 24 29 -26 -29
		mu 0 4 24 25 26 27
		f 4 25 31 -27 -31
		mu 0 4 27 26 28 29
		f 4 26 33 -28 -33
		mu 0 4 29 28 30 31
		f 4 -36 -34 -32 -30
		mu 0 4 25 32 33 26
		f 4 34 28 30 32
		mu 0 4 34 24 27 35
		f 4 36 41 -38 -41
		mu 0 4 36 37 38 39
		f 4 37 43 -39 -43
		mu 0 4 39 38 40 41
		f 4 38 45 -40 -45
		mu 0 4 41 40 42 43
		f 4 -48 -46 -44 -42
		mu 0 4 37 44 45 38
		f 4 46 40 42 44
		mu 0 4 46 36 39 47
		f 4 48 53 -50 -53
		mu 0 4 48 49 50 51
		f 4 49 55 -51 -55
		mu 0 4 51 50 52 53
		f 4 50 57 -52 -57
		mu 0 4 53 52 54 55
		f 4 -60 -58 -56 -54
		mu 0 4 49 56 57 50
		f 4 58 52 54 56
		mu 0 4 58 48 51 59
		f 4 60 65 -62 -65
		mu 0 4 60 61 62 63
		f 4 61 67 -63 -67
		mu 0 4 63 62 64 65
		f 4 62 69 -64 -69
		mu 0 4 65 64 66 67
		f 4 -72 -70 -68 -66
		mu 0 4 61 68 69 62
		f 4 70 64 66 68
		mu 0 4 70 60 63 71
		f 4 72 77 -74 -77
		mu 0 4 72 73 74 75
		f 4 73 79 -75 -79
		mu 0 4 75 74 76 77
		f 4 74 81 -76 -81
		mu 0 4 77 76 78 79
		f 4 -84 -82 -80 -78
		mu 0 4 73 80 81 74
		f 4 82 76 78 80
		mu 0 4 82 72 75 83
		f 4 84 89 -86 -89
		mu 0 4 84 85 86 87
		f 4 85 91 -87 -91
		mu 0 4 87 86 88 89
		f 4 86 93 -88 -93
		mu 0 4 89 88 90 91
		f 4 -96 -94 -92 -90
		mu 0 4 85 92 93 86
		f 4 94 88 90 92
		mu 0 4 94 84 87 95
		f 4 96 101 -98 -101
		mu 0 4 96 97 98 99
		f 4 97 103 -99 -103
		mu 0 4 99 98 100 101
		f 4 98 105 -100 -105
		mu 0 4 101 100 102 103
		f 4 -108 -106 -104 -102
		mu 0 4 97 104 105 98
		f 4 106 100 102 104
		mu 0 4 106 96 99 107
		f 4 108 113 -110 -113
		mu 0 4 108 109 110 111
		f 4 109 115 -111 -115
		mu 0 4 111 110 112 113
		f 4 110 117 -112 -117
		mu 0 4 113 112 114 115
		f 4 -120 -118 -116 -114
		mu 0 4 109 116 117 110
		f 4 118 112 114 116
		mu 0 4 118 108 111 119;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface144";
	setAttr ".t" -type "double3" -74.68614206190037 -1.6160326092731063 -127.01770754623851 ;
	setAttr ".s" -type "double3" 0.19359726184840967 0.19359726184840967 0.19359726184840967 ;
	setAttr ".rp" -type "double3" 60.686069488525391 2.055215448141098 -5.215052604675293 ;
	setAttr ".sp" -type "double3" 60.686069488525391 2.055215448141098 -5.215052604675293 ;
createNode transform -n "polySurface145" -p "polySurface144";
	setAttr ".t" -type "double3" 0 -0.73114675785572114 0 ;
	setAttr ".rp" -type "double3" 408.49334716796875 2.8064732551574707 535.19110107421875 ;
	setAttr ".sp" -type "double3" 408.49334716796875 2.8064732551574707 535.19110107421875 ;
createNode transform -n "transform83" -p "polySurface145";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape153" -p "transform83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface146" -p "polySurface144";
	setAttr ".rp" -type "double3" 566.38565063476562 1.5735428333282471 1088.8419189453125 ;
	setAttr ".sp" -type "double3" 566.38565063476562 1.5735428333282471 1088.8419189453125 ;
createNode transform -n "transform82" -p "polySurface146";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape154" -p "transform82";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface147" -p "polySurface144";
	setAttr ".rp" -type "double3" 328.72200012207031 0.81638729572296143 1125.5261840820312 ;
	setAttr ".sp" -type "double3" 328.72200012207031 0.81638729572296143 1125.5261840820312 ;
createNode transform -n "transform81" -p "polySurface147";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape155" -p "transform81";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface148" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.20889907367305524 0 ;
	setAttr ".rp" -type "double3" -50.709476470947266 0.33093848824501038 977.45233154296875 ;
	setAttr ".sp" -type "double3" -50.709476470947266 0.33093848824501038 977.45233154296875 ;
createNode transform -n "transform80" -p "polySurface148";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape156" -p "transform80";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface149" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.31334861050959212 0 ;
	setAttr ".rp" -type "double3" 359.45639038085938 0.33093848824501038 849.44949340820312 ;
	setAttr ".sp" -type "double3" 359.45639038085938 0.33093848824501038 849.44949340820312 ;
createNode transform -n "transform79" -p "polySurface149";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape157" -p "transform79";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface150" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.4177981473461197 0 ;
	setAttr ".rp" -type "double3" -27.693260192871094 0.13623517751693726 1121.1925659179688 ;
	setAttr ".sp" -type "double3" -27.693260192871094 0.13623517751693726 1121.1925659179688 ;
createNode transform -n "transform78" -p "polySurface150";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape158" -p "transform78";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface151" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.73114675785571182 0 ;
	setAttr ".rp" -type "double3" 310.22535705566406 0.75588953495025635 909.017578125 ;
	setAttr ".sp" -type "double3" 310.22535705566406 0.75588953495025635 909.017578125 ;
createNode transform -n "transform77" -p "polySurface151";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape159" -p "transform77";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface152" -p "polySurface144";
	setAttr ".rp" -type "double3" 202.2537841796875 0.56118625402450562 1148.8238525390625 ;
	setAttr ".sp" -type "double3" 202.2537841796875 0.56118625402450562 1148.8238525390625 ;
createNode transform -n "transform76" -p "polySurface152";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape160" -p "transform76";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface153" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.62669722101917957 0 ;
	setAttr ".rp" -type "double3" 622.573486328125 0.56118631362915039 966.29672241210938 ;
	setAttr ".sp" -type "double3" 622.573486328125 0.56118631362915039 966.29672241210938 ;
createNode transform -n "transform75" -p "polySurface153";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape161" -p "transform75";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface154" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.10444953683653317 7.340421336294194e-14 ;
	setAttr ".rp" -type "double3" 138.16203308105469 0.33093848824501038 642.84219360351562 ;
	setAttr ".sp" -type "double3" 138.16203308105469 0.33093848824501038 642.84219360351562 ;
createNode transform -n "transform74" -p "polySurface154";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape162" -p "transform74";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface155" -p "polySurface144";
	setAttr ".t" -type "double3" 0 0.52224768418265199 0 ;
	setAttr ".rp" -type "double3" 477.43121337890625 -0.097019404172897339 851.43600463867188 ;
	setAttr ".sp" -type "double3" 477.43121337890625 -0.097019404172897339 851.43600463867188 ;
createNode transform -n "transform73" -p "polySurface155";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape163" -p "transform73";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform18" -p "polySurface144";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape144" -p "transform18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:99]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 195 ".uvst[0].uvsp[0:194]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.5 0.125 0.5 0.375 0.5 0.625 0.75 0.125 0.25 0.125 0.5 0 0.625 0.125
		 0.5 0.25 0.375 0.125 0.625 0.375 0.5 0.5 0.375 0.375 0.625 0.625 0.5 0.75 0.375 0.625
		 0.75 0 0.875 0.125 0.75 0.25 0.25 0 0.25 0.25 0.125 0.125 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125
		 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375
		 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75
		 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25
		 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 139 ".vt[0:138]"  51.56408691 -0.36687231 -3.63558793 52.72594833 -0.36687231 -0.83222532
		 51.65833282 3.90251827 -2.91448069 52.36699295 2.56449199 -0.64715934 54.65714264 3.17028379 -3.85145521
		 55.82225037 3.092827797 -0.4992398 55.33023834 -0.3163836 -3.87025404 57.44630051 -0.36687231 -1.17477429
		 50.77365875 -0.36687231 -0.99669647 50.55073547 3.9482615 -1.28899479 55.18315506 3.22104311 -2.41256189
		 57.4114418 -0.36687231 -3.2101469 50.32771301 1.66115808 -4.23755264 53.27873993 2.050880194 0.29919982
		 52.66661453 4.016616821 -4.59188461 54.17774963 3.19545341 -0.12349653 55.61351013 1.80559015 -4.48895502
		 56.6294899 1.93067431 -0.33437848 52.91983414 -0.3163836 -4.717103 54.61231232 -0.36687231 1.018888474
		 49.64765549 1.26159573 -0.65402353 53.38838959 4.7333951 -2.075880527 56.87807465 1.68074119 -3.065095663
		 55.50306702 2.18386102 1.64489675 53.19025803 2.29366779 -5.23133421 49.76283264 -0.36687231 -5.32975769
		 52.78977203 -0.36687231 -5.5451417 50.61481857 3.0077013969 -5.97199583 52.86796188 3.16385365 -5.76533127
		 50.53650284 3.17028379 -8.33226013 54.1318512 3.34948754 -8.28802967 50.73159409 -0.3163836 -8.97673798
		 52.93182373 -0.36687231 -8.55453968 52.016166687 -0.36687231 -3.74513817 52.077545166 3.51395798 -4.75742054
		 51.96788788 3.04469347 -8.18709087 52.016166687 -0.36687231 -8.99651337 48.80067062 1.66115808 -4.34729862
		 54.037963867 2.050880194 -5.71163273 48.92711258 2.97238469 -7.713027 53.89209366 3.43799543 -7.1035099
		 50.234272 1.80559015 -9.44117832 54.37808609 2.42034197 -8.77535057 49.16572952 -0.3163836 -6.95800447
		 55.14255524 -0.36687231 -6.74905968 51.98504257 1.26159573 -2.56855822 52.28800583 3.039582014 -6.95705891
		 51.98504257 1.68074119 -10.19038486 56.018196106 2.18386102 -7.39603996 47.76959229 2.29366779 -7.37721395
		 66.82155609 -0.48162341 -7.98724842 69.85662079 -0.48162341 -7.21157217 67.54806519 1.61952853 -7.85812426
		 68.94148254 1.71609783 -7.73031664 67.49963379 1.72007442 -9.31778526 69.40110016 1.71190083 -9.054272652
		 66.82155609 -0.42197847 -10.22327328 69.42080688 -0.48162341 -9.72450829 68.33908844 -0.48162341 -6.11525536
		 68.38484955 1.79326332 -7.30770016 68.38484955 1.64240551 -9.22800827 68.33908844 -0.48162341 -10.24663353
		 66.68306732 1.035907507 -7.073083878 69.9372406 1.11812317 -7.82826042 67.32589722 2.114398 -8.82139969
		 69.57483673 1.88563561 -8.55788803 66.68306732 0.72089922 -10.3851223 69.66905212 1.035907507 -9.47831821
		 66.703125 -0.42197847 -8.72910309 70.29243469 -0.48162341 -8.48226547 68.33908844 1.035907507 -6.52107811
		 68.58281708 1.63924444 -8.46731758 68.33908844 0.66125429 -9.76853275 70.54711151 1.035907507 -8.72910309
		 66.13106537 1.095552444 -8.72910309 56.51787186 -0.3443296 5.98833704 57.51979446 -0.3443296 6.43656063
		 56.32201385 1.0062065125 5.62454033 57.29938507 0.84922612 6.21269894 56.45114517 0.75025678 5.2341156
		 57.2321434 0.76531756 5.48978281 56.52748489 -0.3443296 4.72417164 57.51979446 -0.3443296 5.33240843
		 52.33934402 -0.3443296 -17.076206207 53.39837265 -0.3443296 -17.36467934 51.9572525 1.0062065125 -17.23340988
		 53.085998535 0.84922612 -17.39809227 51.80962753 0.75025678 -17.61722565 52.57572937 0.76531756 -17.91457558
		 51.54541016 -0.3443296 -18.06001091 52.69843674 -0.3443296 -18.21863556 42.56742096 -0.47109693 3.048450232
		 44.27980804 -0.47109693 3.048450232 43.14251709 0.55358595 2.3759377 43.98839951 0.74356723 2.77753448
		 43.20885086 0.10474381 1.090387702 44.075119019 0.052692115 1.50788021 42.56742096 -0.47109693 1.33606076
		 44.27980804 -0.47109693 1.33606076 43.33086395 -0.36025715 -5.34796333 45.12020111 -0.36025715 -7.54100513
		 42.82864761 1.87203622 -6.85552311 44.60318756 1.063866258 -7.49264717 42.46356964 1.44897842 -7.4288702
		 43.13900757 1.069479942 -8.54385376 41.89025879 -0.36025715 -8.05949688 43.70612335 -0.36025715 -8.69477272
		 77.90895844 -0.44266951 0.40241885 79.48188019 -0.44266951 -1.95068145 77.51306915 1.25102293 -1.0055938959
		 78.84191895 1.56504202 -1.79908681 75.80744934 0.50913435 -2.27759361 77.17686462 0.42309839 -3.08449626
		 75.5558548 -0.44266951 -1.17050052 77.12877655 -0.44266951 -3.52360082 66.48236084 -0.44266951 -20.20323181
		 68.055282593 -0.44266951 -22.55633163 66.086471558 1.25102293 -21.6112442 67.41532135 1.56504202 -22.40473557
		 64.38085175 0.50913435 -22.88324356 65.75026703 0.42309839 -23.69014549 64.1292572 -0.44266951 -21.77614975
		 65.70217896 -0.44266951 -24.12924957 67.90450287 -0.3443296 13.69914436 68.7490387 -0.3443296 12.2094965
		 67.45191193 1.0062065125 12.85099792 68.44558716 0.51726419 12.29083157 67.17595673 0.75025678 12.54611015
		 67.46559143 0.52066046 11.81253433 66.76998901 -0.3443296 12.22820282 67.78850555 -0.3443296 11.66494274
		 77.59611511 -0.6229642 -14.65262032 78.71246338 -0.6229642 -16.044401169 77.9799881 0.28697529 -15.073152542
		 78.66210175 0.24301791 -15.80839825 77.36568451 0.25987008 -15.73126984 78.047653198 0.42892545 -16.15776443
		 76.5011673 -0.6229642 -15.29127312 77.80213165 -0.6229642 -16.66926765;
	setAttr -s 228 ".ed";
	setAttr ".ed[0:165]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0 11 7 0
		 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0 17 7 0
		 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0 25 33 0 33 26 0 27 34 0 34 28 0 29 35 0 35 30 0 31 36 0 36 32 0 25 37 0
		 37 27 0 26 38 0 38 28 0 27 39 0 39 29 0 28 40 0 40 30 0 29 41 0 41 31 0 30 42 0 42 32 0
		 31 43 0 43 25 0 32 44 0 44 26 0 45 33 0 45 38 0 45 34 0 45 37 0 46 34 0 46 40 0 46 35 0
		 46 39 0 47 35 0 47 42 0 47 36 0 47 41 0 48 44 0 48 42 0 48 40 0 48 38 0 49 43 0 49 37 0
		 49 39 0 49 41 0 50 58 0 58 51 0 52 59 0 59 53 0 54 60 0 60 55 0 56 61 0 61 57 0 50 62 0
		 62 52 0 51 63 0 63 53 0 52 64 0 64 54 0 53 65 0 65 55 0 54 66 0 66 56 0 55 67 0 67 57 0
		 56 68 0 68 50 0 57 69 0 69 51 0 70 58 0 70 63 0 70 59 0 70 62 0 71 59 0 71 65 0 71 60 0
		 71 64 0 72 60 0 72 67 0 72 61 0 72 66 0 73 69 0 73 67 0 73 65 0 73 63 0 74 68 0 74 62 0
		 74 64 0 74 66 0 75 76 0 77 78 0 79 80 0 81 82 0 75 77 0 76 78 0 77 79 0 78 80 0 79 81 0
		 80 82 0 81 75 0 82 76 0 83 84 0 85 86 0 87 88 0 89 90 0 83 85 0 84 86 0 85 87 0 86 88 0
		 87 89 0 88 90 0 89 83 0 90 84 0 91 92 0 93 94 0 95 96 0 97 98 0 91 93 0 92 94 0 93 95 0
		 94 96 0 95 97 0 96 98 0;
	setAttr ".ed[166:227]" 97 91 0 98 92 0 99 100 0 101 102 0 103 104 0 105 106 0
		 99 101 0 100 102 0 101 103 0 102 104 0 103 105 0 104 106 0 105 99 0 106 100 0 107 108 0
		 109 110 0 111 112 0 113 114 0 107 109 0 108 110 0 109 111 0 110 112 0 111 113 0 112 114 0
		 113 107 0 114 108 0 115 116 0 117 118 0 119 120 0 121 122 0 115 117 0 116 118 0 117 119 0
		 118 120 0 119 121 0 120 122 0 121 115 0 122 116 0 123 124 0 125 126 0 127 128 0 129 130 0
		 123 125 0 124 126 0 125 127 0 126 128 0 127 129 0 128 130 0 129 123 0 130 124 0 131 132 0
		 133 134 0 135 136 0 137 138 0 131 133 0 132 134 0 133 135 0 134 136 0 135 137 0 136 138 0
		 137 131 0 138 132 0;
	setAttr -s 100 -ch 400 ".fc[0:99]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 17 1 18 12
		f 4 11 -4 -27 25
		mu 0 4 18 3 19 12
		f 4 -3 -10 -28 26
		mu 0 4 19 2 20 12
		f 4 -9 0 -25 27
		mu 0 4 20 0 17 12
		f 4 3 14 -30 28
		mu 0 4 19 3 21 13
		f 4 15 -6 -31 29
		mu 0 4 21 5 22 13
		f 4 -5 -14 -32 30
		mu 0 4 22 4 23 13
		f 4 -13 2 -29 31
		mu 0 4 23 2 19 13
		f 4 5 18 -34 32
		mu 0 4 22 5 24 14
		f 4 19 -8 -35 33
		mu 0 4 24 7 25 14
		f 4 -7 -18 -36 34
		mu 0 4 25 6 26 14
		f 4 -17 4 -33 35
		mu 0 4 26 4 22 14
		f 4 -23 -20 -38 36
		mu 0 4 27 8 28 15
		f 4 -19 -16 -39 37
		mu 0 4 28 9 29 15
		f 4 -15 -12 -40 38
		mu 0 4 29 3 18 15
		f 4 -11 -24 -37 39
		mu 0 4 18 1 27 15
		f 4 21 8 -42 40
		mu 0 4 30 0 20 16
		f 4 9 12 -43 41
		mu 0 4 20 2 31 16
		f 4 13 16 -44 42
		mu 0 4 31 11 32 16
		f 4 17 20 -41 43
		mu 0 4 32 10 30 16
		f 4 45 54 -70 68
		mu 0 4 33 34 35 36
		f 4 55 -48 -71 69
		mu 0 4 35 37 38 36
		f 4 -47 -54 -72 70
		mu 0 4 38 39 40 36
		f 4 -53 44 -69 71
		mu 0 4 40 41 33 36
		f 4 47 58 -74 72
		mu 0 4 38 37 42 43
		f 4 59 -50 -75 73
		mu 0 4 42 44 45 43
		f 4 -49 -58 -76 74
		mu 0 4 45 46 47 43
		f 4 -57 46 -73 75
		mu 0 4 47 39 38 43
		f 4 49 62 -78 76
		mu 0 4 45 44 48 49
		f 4 63 -52 -79 77
		mu 0 4 48 50 51 49
		f 4 -51 -62 -80 78
		mu 0 4 51 52 53 49
		f 4 -61 48 -77 79
		mu 0 4 53 46 45 49
		f 4 -67 -64 -82 80
		mu 0 4 54 55 56 57
		f 4 -63 -60 -83 81
		mu 0 4 56 58 59 57
		f 4 -59 -56 -84 82
		mu 0 4 59 37 35 57
		f 4 -55 -68 -81 83
		mu 0 4 35 34 54 57
		f 4 65 52 -86 84
		mu 0 4 60 41 40 61
		f 4 53 56 -87 85
		mu 0 4 40 39 62 61
		f 4 57 60 -88 86
		mu 0 4 62 63 64 61
		f 4 61 64 -85 87
		mu 0 4 64 65 60 61
		f 4 89 98 -114 112
		mu 0 4 66 67 68 69
		f 4 99 -92 -115 113
		mu 0 4 68 70 71 69
		f 4 -91 -98 -116 114
		mu 0 4 71 72 73 69
		f 4 -97 88 -113 115
		mu 0 4 73 74 66 69
		f 4 91 102 -118 116
		mu 0 4 71 70 75 76
		f 4 103 -94 -119 117
		mu 0 4 75 77 78 76
		f 4 -93 -102 -120 118
		mu 0 4 78 79 80 76
		f 4 -101 90 -117 119
		mu 0 4 80 72 71 76
		f 4 93 106 -122 120
		mu 0 4 78 77 81 82
		f 4 107 -96 -123 121
		mu 0 4 81 83 84 82
		f 4 -95 -106 -124 122
		mu 0 4 84 85 86 82
		f 4 -105 92 -121 123
		mu 0 4 86 79 78 82
		f 4 -111 -108 -126 124
		mu 0 4 87 88 89 90
		f 4 -107 -104 -127 125
		mu 0 4 89 91 92 90
		f 4 -103 -100 -128 126
		mu 0 4 92 70 68 90
		f 4 -99 -112 -125 127
		mu 0 4 68 67 87 90
		f 4 109 96 -130 128
		mu 0 4 93 74 73 94
		f 4 97 100 -131 129
		mu 0 4 73 72 95 94
		f 4 101 104 -132 130
		mu 0 4 95 96 97 94
		f 4 105 108 -129 131
		mu 0 4 97 98 93 94
		f 4 132 137 -134 -137
		mu 0 4 99 100 101 102
		f 4 133 139 -135 -139
		mu 0 4 102 101 103 104
		f 4 134 141 -136 -141
		mu 0 4 104 103 105 106
		f 4 -144 -142 -140 -138
		mu 0 4 100 107 108 101
		f 4 142 136 138 140
		mu 0 4 109 99 102 110
		f 4 144 149 -146 -149
		mu 0 4 111 112 113 114
		f 4 145 151 -147 -151
		mu 0 4 114 113 115 116
		f 4 146 153 -148 -153
		mu 0 4 116 115 117 118
		f 4 -156 -154 -152 -150
		mu 0 4 112 119 120 113
		f 4 154 148 150 152
		mu 0 4 121 111 114 122
		f 4 156 161 -158 -161
		mu 0 4 123 124 125 126
		f 4 157 163 -159 -163
		mu 0 4 126 125 127 128
		f 4 158 165 -160 -165
		mu 0 4 128 127 129 130
		f 4 -168 -166 -164 -162
		mu 0 4 124 131 132 125
		f 4 166 160 162 164
		mu 0 4 133 123 126 134
		f 4 168 173 -170 -173
		mu 0 4 135 136 137 138
		f 4 169 175 -171 -175
		mu 0 4 138 137 139 140
		f 4 170 177 -172 -177
		mu 0 4 140 139 141 142
		f 4 -180 -178 -176 -174
		mu 0 4 136 143 144 137
		f 4 178 172 174 176
		mu 0 4 145 135 138 146
		f 4 180 185 -182 -185
		mu 0 4 147 148 149 150
		f 4 181 187 -183 -187
		mu 0 4 150 149 151 152
		f 4 182 189 -184 -189
		mu 0 4 152 151 153 154
		f 4 -192 -190 -188 -186
		mu 0 4 148 155 156 149
		f 4 190 184 186 188
		mu 0 4 157 147 150 158
		f 4 192 197 -194 -197
		mu 0 4 159 160 161 162
		f 4 193 199 -195 -199
		mu 0 4 162 161 163 164
		f 4 194 201 -196 -201
		mu 0 4 164 163 165 166
		f 4 -204 -202 -200 -198
		mu 0 4 160 167 168 161
		f 4 202 196 198 200
		mu 0 4 169 159 162 170
		f 4 204 209 -206 -209
		mu 0 4 171 172 173 174
		f 4 205 211 -207 -211
		mu 0 4 174 173 175 176
		f 4 206 213 -208 -213
		mu 0 4 176 175 177 178
		f 4 -216 -214 -212 -210
		mu 0 4 172 179 180 173
		f 4 214 208 210 212
		mu 0 4 181 171 174 182
		f 4 216 221 -218 -221
		mu 0 4 183 184 185 186
		f 4 217 223 -219 -223
		mu 0 4 186 185 187 188
		f 4 218 225 -220 -225
		mu 0 4 188 187 189 190
		f 4 -228 -226 -224 -222
		mu 0 4 184 191 192 185
		f 4 226 220 222 224
		mu 0 4 193 183 186 194;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "MarsTerrain1_G2";
createNode mesh -n "polySurfaceShape168" -p "MarsTerrain1_G2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:824]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1281 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.1
		 0.1 0.1 0.2 0.1 0.30000001 0.1 0.40000004 0.1 0.5 0.1 0.60000002 0.1 0.69999999 0.1
		 0.79999995 0.1 0.90000004 0.1 1 0.1 0 0.2 0.1 0.2 0.2 0.2 0.30000001 0.2 0.40000004
		 0.2 0.5 0.2 0.60000002 0.2 0.69999999 0.2 0.79999995 0.2 0.90000004 0.2 1 0.2 0 0.30000001
		 0.1 0.30000001 0.2 0.30000001 0.30000001 0.30000001 0.40000004 0.30000001 0.5 0.30000001
		 0.60000002 0.30000001 0.69999999 0.30000001 0.79999995 0.30000001 0.90000004 0.30000001
		 1 0.30000001 0 0.40000001 0.1 0.39999998 0.2 0.39999998 0.30000001 0.39999998 0.40000004
		 0.39999998 0.5 0.39999998 0.60000002 0.39999998 0.69999999 0.39999998 0.79999995
		 0.39999998 0.90000004 0.39999998 1 0.40000001 0 0.5 0.1 0.5 0.2 0.5 0.30000001 0.5
		 0.40000004 0.5 0.5 0.5 0.60000002 0.5 0.69999999 0.5 0.79999995 0.5 0.90000004 0.5
		 1 0.5 0 0.60000002 0.1 0.60000002 0.2 0.60000002 0.30000001 0.60000002 0.40000004
		 0.60000002 0.5 0.60000002 0.60000002 0.60000002 0.69999999 0.60000002 0.79999995
		 0.60000002 0.90000004 0.60000002 1 0.60000002 0 0.69999999 0.1 0.70000005 0.2 0.70000005
		 0.30000001 0.70000005 0.40000004 0.70000005 0.5 0.70000005 0.60000002 0.70000005
		 0.69999999 0.70000005 0.79999995 0.70000005 0.90000004 0.70000005 1 0.69999999 0
		 0.80000001 0.1 0.79999995 0.2 0.79999995 0.30000001 0.79999995 0.40000004 0.79999995
		 0.5 0.79999995 0.60000002 0.79999995 0.69999999 0.79999995 0.79999995 0.79999995
		 0.90000004 0.79999995 1 0.80000001 0 0.90000004 0.1 0.90000004 0.2 0.90000004 0.30000001
		 0.90000004 0.40000004 0.90000004 0.5 0.90000004 0.60000002 0.90000004 0.69999999
		 0.90000004 0.79999995 0.90000004 0.90000004 0.90000004 1 0.90000004 0 1 0.1 1 0.2
		 1 0.30000001 1 0.40000001 1 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004
		 1 1 1 0.050000001 0.050000001 0.15000001 0.050000001 0.25 0.050000001 0.35000002
		 0.050000001 0.44999999 0.050000001 0.55000001 0.050000001 0.64999998 0.050000001
		 0.75 0.050000001 0.85000002 0.050000001 0.95000005 0.050000001 0.050000001 0.15000001
		 0.15000001 0.15000001 0.25 0.15000001 0.35000002 0.15000001 0.44999999 0.15000001
		 0.55000001 0.15000001 0.64999998 0.15000001 0.75 0.15000001 0.85000002 0.15000001
		 0.95000005 0.15000001 0.050000001 0.25 0.15000001 0.25 0.25 0.25 0.35000002 0.25
		 0.44999999 0.25 0.55000001 0.25 0.64999998 0.25 0.75 0.25 0.85000002 0.25 0.95000005
		 0.25 0.050000001 0.34999999 0.15000001 0.34999999 0.25 0.34999999 0.35000002 0.34999999
		 0.44999999 0.34999999 0.55000001 0.34999999 0.64999998 0.34999999 0.75 0.34999999
		 0.85000002 0.34999999 0.95000005 0.34999999 0.050000001 0.44999999 0.15000001 0.44999999
		 0.25 0.44999999 0.35000002 0.44999999 0.44999999 0.44999999 0.55000001 0.44999999
		 0.64999998 0.44999999 0.75 0.44999999 0.85000002 0.44999999 0.95000005 0.44999999
		 0.050000001 0.55000001 0.15000001 0.55000001 0.25 0.55000001 0.35000002 0.55000001
		 0.44999999 0.55000001 0.55000001 0.55000001 0.64999998 0.55000001 0.75 0.55000001
		 0.85000002 0.55000001 0.95000005 0.55000001 0.050000001 0.65000004 0.15000001 0.65000004
		 0.25 0.65000004 0.35000002 0.65000004 0.44999999 0.65000004 0.55000001 0.65000004
		 0.64999998 0.65000004 0.75 0.65000004 0.85000002 0.65000004 0.95000005 0.65000004
		 0.050000001 0.75 0.15000001 0.75 0.25 0.75 0.35000002 0.75 0.44999999 0.75 0.55000001
		 0.75 0.64999998 0.75 0.75 0.75 0.85000002 0.75 0.95000005 0.75 0.050000001 0.85000002
		 0.15000001 0.85000002 0.25 0.85000002 0.35000002 0.85000002 0.44999999 0.85000002
		 0.55000001 0.85000002 0.64999998 0.85000002 0.75 0.85000002 0.85000002 0.85000002
		 0.95000005 0.85000002 0.050000001 0.95000005 0.15000001 0.95000005 0.25 0.95000005
		 0.35000002 0.95000005 0.44999999 0.95000005 0.55000001 0.95000005 0.64999998 0.95000005
		 0.75 0.95000005 0.85000002 0.95000005 0.95000005 0.95000005 0.050000001 0 0.1 0.050000001
		 0.050000001 0.10000001 0 0.050000001 0.15000001 0 0.2 0.050000001 0.15000001 0.10000001
		 0.25 0 0.30000001 0.050000001 0.25 0.10000001 0.35000002 0 0.40000004 0.050000001
		 0.35000002 0.10000001 0.44999999 0 0.5 0.050000001 0.44999999 0.10000001 0.55000001
		 0 0.60000002 0.050000001 0.55000001 0.10000001 0.64999998 0 0.69999999 0.050000001
		 0.64999998 0.10000001 0.75 0 0.79999995 0.050000001 0.75 0.10000001 0.85000002 0
		 0.90000004 0.050000001 0.85000002 0.10000001 0.95000005 0;
	setAttr ".uvst[0].uvsp[250:499]" 1 0.050000001 0.95000005 0.10000001 0.1 0.15000001
		 0.050000001 0.19999999 0 0.15000001 0.2 0.15000001 0.15000001 0.19999999 0.30000001
		 0.15000001 0.25 0.19999999 0.40000004 0.15000001 0.35000002 0.19999999 0.5 0.15000001
		 0.44999999 0.19999999 0.60000002 0.15000001 0.55000001 0.19999999 0.69999999 0.15000001
		 0.64999998 0.19999999 0.79999995 0.15000001 0.75 0.19999999 0.90000004 0.15000001
		 0.85000002 0.19999999 1 0.15000001 0.95000005 0.19999999 0.1 0.25 0.050000001 0.30000001
		 0 0.25 0.2 0.25 0.15000001 0.30000001 0.30000001 0.25 0.25 0.30000001 0.40000004
		 0.25 0.35000002 0.30000001 0.5 0.25 0.44999999 0.30000001 0.60000002 0.25 0.55000001
		 0.30000001 0.69999999 0.25 0.64999998 0.30000001 0.79999995 0.25 0.75 0.30000001
		 0.90000004 0.25 0.85000002 0.30000001 1 0.25 0.95000005 0.30000001 0.1 0.35000002
		 0.050000001 0.40000001 0 0.35000002 0.2 0.35000002 0.15000001 0.40000001 0.30000001
		 0.35000002 0.25 0.40000001 0.40000004 0.35000002 0.35000002 0.40000001 0.5 0.35000002
		 0.44999999 0.40000001 0.60000002 0.35000002 0.55000001 0.40000001 0.69999999 0.35000002
		 0.64999998 0.40000001 0.79999995 0.35000002 0.75 0.40000001 0.90000004 0.35000002
		 0.85000002 0.40000001 1 0.35000002 0.95000005 0.40000001 0.1 0.44999999 0.050000001
		 0.5 0 0.44999999 0.2 0.44999999 0.15000001 0.5 0.30000001 0.44999999 0.25 0.5 0.40000004
		 0.44999999 0.35000002 0.5 0.5 0.44999999 0.44999999 0.5 0.60000002 0.44999999 0.55000001
		 0.5 0.69999999 0.44999999 0.64999998 0.5 0.79999995 0.44999999 0.75 0.5 0.90000004
		 0.44999999 0.85000002 0.5 1 0.44999999 0.95000005 0.5 0.1 0.55000001 0.050000001
		 0.60000002 0 0.55000001 0.2 0.55000001 0.15000001 0.60000002 0.30000001 0.55000001
		 0.25 0.60000002 0.40000004 0.55000001 0.35000002 0.60000002 0.5 0.55000001 0.44999999
		 0.60000002 0.60000002 0.55000001 0.55000001 0.60000002 0.69999999 0.55000001 0.64999998
		 0.60000002 0.79999995 0.55000001 0.75 0.60000002 0.90000004 0.55000001 0.85000002
		 0.60000002 1 0.55000001 0.95000005 0.60000002 0.1 0.65000004 0.050000001 0.70000005
		 0 0.64999998 0.2 0.65000004 0.15000001 0.70000005 0.30000001 0.65000004 0.25 0.70000005
		 0.40000004 0.65000004 0.35000002 0.70000005 0.5 0.65000004 0.44999999 0.70000005
		 0.60000002 0.65000004 0.55000001 0.70000005 0.69999999 0.65000004 0.64999998 0.70000005
		 0.79999995 0.65000004 0.75 0.70000005 0.90000004 0.65000004 0.85000002 0.70000005
		 1 0.64999998 0.95000005 0.70000005 0.1 0.75 0.050000001 0.80000001 0 0.75 0.2 0.75
		 0.15000001 0.80000001 0.30000001 0.75 0.25 0.80000001 0.40000004 0.75 0.35000002
		 0.80000001 0.5 0.75 0.44999999 0.80000001 0.60000002 0.75 0.55000001 0.80000001 0.69999999
		 0.75 0.64999998 0.80000001 0.79999995 0.75 0.75 0.80000001 0.90000004 0.75 0.85000002
		 0.80000001 1 0.75 0.95000005 0.80000001 0.1 0.85000002 0.050000001 0.89999998 0 0.85000002
		 0.2 0.85000002 0.15000001 0.89999998 0.30000001 0.85000002 0.25 0.89999998 0.40000004
		 0.85000002 0.35000002 0.89999998 0.5 0.85000002 0.44999999 0.89999998 0.60000002
		 0.85000002 0.55000001 0.89999998 0.69999999 0.85000002 0.64999998 0.89999998 0.79999995
		 0.85000002 0.75 0.89999998 0.90000004 0.85000002 0.85000002 0.89999998 1 0.85000002
		 0.95000005 0.89999998 0.1 0.95000005 0.050000001 1 0 0.95000005 0.2 0.95000005 0.15000001
		 1 0.30000001 0.95000005 0.25 1 0.40000004 0.95000005 0.35000002 1 0.5 0.95000005
		 0.44999999 1 0.60000002 0.95000005 0.55000001 1 0.69999999 0.95000005 0.64999998
		 1 0.79999995 0.95000005 0.75 1 0.90000004 0.95000005 0.85000002 1 1 0.95000005 0.95000005
		 1 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125
		 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625
		 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75
		 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125
		 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125
		 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625
		 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75
		 0.125 0.875 0.25;
	setAttr ".uvst[0].uvsp[500:749]" 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125
		 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25
		 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5
		 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75
		 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25
		 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25;
	setAttr ".uvst[0].uvsp[750:999]" 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25
		 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875
		 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375
		 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625
		 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125
		 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125
		 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375
		 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625
		 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125
		 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125
		 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375
		 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125 0.625 0.25 0.5
		 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375
		 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75 0.375 0.625
		 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25 0.125 0.25
		 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25
		 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625
		 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.875 0 0.875 0.25;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25
		 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625
		 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0
		 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.5 0 0.625 0 0.625 0.125 0.5 0.125
		 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5 0.375 0.625 0.5
		 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5 0.75 0.375 0.75
		 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0 0.25
		 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0 0.375 0 0.625 0 0.625 0.25 0.375 0.25
		 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375
		 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375
		 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75
		 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375
		 0.25 0.625 0.5;
	setAttr ".uvst[0].uvsp[1250:1280]" 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5
		 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625
		 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1037 ".vt";
	setAttr ".vt[0:165]"  -100 -2.220446e-14 100 -80 -2.220446e-14 100 -60.000003814697 -2.220446e-14 100
		 -39.99999619 -2.220446e-14 100 -19.99999809 -2.220446e-14 100 0 -2.220446e-14 100
		 20.000003814697 -2.220446e-14 100 39.99999619 -2.220446e-14 100 60.000003814697 -2.220446e-14 100
		 80.000007629395 -2.220446e-14 100 100 -2.220446e-14 100 -100 -1.7763568e-14 80 -80 -1.7763568e-14 80
		 -60.000003814697 0.48069233 80 -39.99999619 -1.7763568e-14 80 -19.99999809 -1.7763568e-14 80
		 7.4505806e-07 -1.7763568e-14 80 20.000003814697 -1.7763568e-14 80 39.99999619 -1.7763568e-14 80
		 60.000003814697 -1.7763568e-14 80 80.000007629395 -1.7763568e-14 80 100 -1.7763568e-14 80
		 -100 -1.3322677e-14 60.000003814697 -80 -1.3322677e-14 60.000003814697 -60.000003814697 -1.3322677e-14 60.000003814697
		 -39.99999619 -1.3322677e-14 60.000003814697 -19.99999809 -1.3322677e-14 60.000003814697
		 7.4505806e-07 -1.3322677e-14 60.000003814697 20.000003814697 -1.3322677e-14 60.000003814697
		 39.99999619 -1.3322677e-14 60.000003814697 60.000003814697 -1.3322677e-14 60.000003814697
		 80.000007629395 -1.3322677e-14 60.000003814697 100 -1.3322677e-14 60.000003814697
		 -100 -8.8817833e-15 39.99999619 -80 -8.8817833e-15 39.99999619 -60.000003814697 -8.8817833e-15 39.99999619
		 -39.99999619 -8.8817833e-15 39.99999619 -19.99999809 -8.8817833e-15 39.99999619 7.4505806e-07 -0.30784035 39.99999619
		 20.000003814697 -8.8817833e-15 39.99999619 39.99999619 -8.8817833e-15 39.99999619
		 60.000003814697 -8.8817833e-15 39.99999619 80.000007629395 -8.8817833e-15 39.99999619
		 100 -8.8817833e-15 39.99999619 -100 -4.4408917e-15 19.99999809 -80 -4.4408917e-15 19.99999809
		 -60.000003814697 -4.4408917e-15 19.99999809 -39.99999619 -0.30784035 19.99999809
		 -19.99999809 -4.4408917e-15 19.99999809 7.4505806e-07 -4.4408917e-15 19.99999809
		 20.000003814697 -4.4408917e-15 19.99999809 39.99999619 -4.4408917e-15 19.99999809
		 60.000003814697 -0.34877574 19.99999809 80.000007629395 -4.4408917e-15 19.99999809
		 100 -4.4408917e-15 19.99999809 -100 0 0 -80 1.6543612e-22 -7.4505806e-07 -60.000003814697 1.6543612e-22 -7.4505806e-07
		 -39.99999619 1.6543612e-22 -7.4505806e-07 -19.99999809 1.6543612e-22 -7.4505806e-07
		 7.4505806e-07 1.6543612e-22 -7.4505806e-07 20.000003814697 1.6543612e-22 -7.4505806e-07
		 39.99999619 1.6543612e-22 -7.4505806e-07 60.000003814697 1.6543612e-22 -7.4505806e-07
		 80.000007629395 1.6543612e-22 -7.4505806e-07 100 0 0 -100 4.4408929e-15 -20.000003814697
		 -80 4.4408929e-15 -20.000003814697 -60.000003814697 4.4408929e-15 -20.000003814697
		 -39.99999619 4.4408929e-15 -20.000003814697 -19.99999809 4.4408929e-15 -20.000003814697
		 7.4505806e-07 4.4408929e-15 -20.000003814697 20.000003814697 4.4408929e-15 -20.000003814697
		 39.99999619 -0.30784035 -20.000003814697 60.000003814697 4.4408929e-15 -20.000003814697
		 80.000007629395 4.4408929e-15 -20.000003814697 100 4.4408929e-15 -20.000003814697
		 -100 8.8817833e-15 -39.99999619 -80 -0.30784035 -39.99999619 -60.000003814697 8.8817833e-15 -39.99999619
		 -39.99999619 8.8817833e-15 -39.99999619 -19.99999809 8.8817833e-15 -39.99999619 7.4505806e-07 8.8817833e-15 -39.99999619
		 20.000003814697 -0.30784035 -39.99999619 39.99999619 8.8817833e-15 -39.99999619 60.000003814697 8.8817833e-15 -39.99999619
		 80.000007629395 8.8817833e-15 -39.99999619 100 8.8817833e-15 -39.99999619 -100 1.3322677e-14 -60.000003814697
		 -80 1.3322677e-14 -60.000003814697 -60.000003814697 1.3322677e-14 -60.000003814697
		 -39.99999619 1.3322677e-14 -60.000003814697 -19.99999809 1.3322677e-14 -60.000003814697
		 7.4505806e-07 1.3322677e-14 -60.000003814697 20.000003814697 0.37609035 -60.000003814697
		 39.99999619 1.3322677e-14 -60.000003814697 60.000003814697 1.3322677e-14 -60.000003814697
		 80.000007629395 1.3322677e-14 -60.000003814697 100 1.3322677e-14 -60.000003814697
		 -100 1.776357e-14 -80.000007629395 -80 1.776357e-14 -80.000007629395 -60.000003814697 1.776357e-14 -80.000007629395
		 -39.99999619 0.48069233 -80.000007629395 -19.99999809 1.776357e-14 -80.000007629395
		 7.4505806e-07 1.776357e-14 -80.000007629395 20.000003814697 1.776357e-14 -80.000007629395
		 39.99999619 1.776357e-14 -80.000007629395 60.000003814697 -0.34877574 -80.000007629395
		 80.000007629395 -0.30784035 -80.000007629395 100 1.776357e-14 -80.000007629395 -100 2.220446e-14 -100
		 -80 2.220446e-14 -100 -60.000003814697 2.220446e-14 -100 -39.99999619 2.220446e-14 -100
		 -19.99999809 2.220446e-14 -100 0 2.220446e-14 -100 20.000003814697 2.220446e-14 -100
		 39.99999619 2.220446e-14 -100 60.000003814697 2.220446e-14 -100 80.000007629395 2.220446e-14 -100
		 100 2.220446e-14 -100 -90 -2.220446e-14 100 -100 -1.9984014e-14 90 -70.000007629395 -2.220446e-14 100
		 -80 -1.9984014e-14 90 -50 -2.220446e-14 100 -60.000003814697 -1.9984014e-14 90 -29.99999809 -2.220446e-14 100
		 -39.99999619 0.23922913 90 -9.99999905 -2.220446e-14 100 -19.99999809 -1.9984014e-14 90
		 10.000001907349 -2.220446e-14 100 7.4505806e-07 -0.092450172 90 30.000001907349 -2.220446e-14 100
		 20.000003814697 0.22547349 90 50 -2.220446e-14 100 39.99999619 -1.9984014e-14 90
		 70.000007629395 -2.220446e-14 100 60.000003814697 0.28483611 90 90 -2.220446e-14 100
		 80.000007629395 -1.9984014e-14 90 100 -1.9984014e-14 90 -90 -1.776357e-14 80.000007629395
		 -100 -1.5543124e-14 70.000007629395 -70.000007629395 -1.776357e-14 80.000007629395
		 -80 -1.5543124e-14 70.000007629395 -50 -1.776357e-14 80.000007629395 -60.000003814697 -1.5543124e-14 70.000007629395
		 -29.99999809 -1.776357e-14 80.000007629395 -39.99999619 -0.34877574 70.000007629395
		 -9.99999905 -1.776357e-14 80.000007629395 -19.99999809 0.37609035 70.000007629395
		 10.000001907349 -1.776357e-14 80.000007629395 7.4505806e-07 -1.5543124e-14 70.000007629395
		 30.000001907349 -1.776357e-14 80.000007629395 20.000003814697 -0.34877574 70.000007629395
		 50 -1.776357e-14 80.000007629395 39.99999619 0.57985055 70.000007629395 70.000007629395 -1.776357e-14 80.000007629395
		 60.000003814697 -1.5543124e-14 70.000007629395 90.000007629395 0.084401332 80.000007629395
		 80.000007629395 -1.5543124e-14 70.000007629395 100 -1.5543124e-14 70.000007629395
		 -90 -1.3322677e-14 60.000003814697 -100 -1.110223e-14 50 -70.000007629395 -1.3322677e-14 60.000003814697;
	setAttr ".vt[166:331]" -80 -0.34877574 50 -50 -1.3322677e-14 60.000003814697
		 -60.000003814697 -1.110223e-14 50 -29.99999809 -1.3322677e-14 60.000003814697 -39.99999619 -1.110223e-14 50
		 -9.99999905 -1.3322677e-14 60.000003814697 -19.99999809 -1.110223e-14 50 10.000001907349 -1.3322677e-14 60.000003814697
		 7.4505806e-07 -1.110223e-14 50 30.000001907349 -1.3322677e-14 60.000003814697 20.000003814697 0.37609035 50
		 50 -1.3322677e-14 60.000003814697 39.99999619 -1.110223e-14 50 70.000007629395 -1.3322677e-14 60.000003814697
		 60.000003814697 -1.110223e-14 50 90.000007629395 -1.3322677e-14 60.000003814697 80.000007629395 -1.110223e-14 50
		 100 -1.110223e-14 50 -90 -8.8817833e-15 39.99999619 -100 -6.6613377e-15 29.99999809
		 -70.000007629395 -8.8817833e-15 39.99999619 -80 -6.6613377e-15 29.99999809 -50 -8.8817833e-15 39.99999619
		 -60.000003814697 -0.34877574 29.99999809 -29.99999809 -8.8817833e-15 39.99999619
		 -39.99999619 -6.6613377e-15 29.99999809 -9.99999905 0.48069233 39.99999619 -19.99999809 -6.6613377e-15 29.99999809
		 10.000001907349 -8.8817833e-15 39.99999619 7.4505806e-07 -6.6613377e-15 29.99999809
		 30.000001907349 -8.8817833e-15 39.99999619 20.000003814697 -6.6613377e-15 29.99999809
		 50 -8.8817833e-15 39.99999619 39.99999619 -6.6613377e-15 29.99999809 70.000007629395 -8.8817833e-15 39.99999619
		 60.000003814697 -6.6613377e-15 29.99999809 90.000007629395 0.48069233 39.99999619
		 80.000007629395 -6.6613377e-15 29.99999809 100 -6.6613377e-15 29.99999809 -90 -4.4408917e-15 19.99999809
		 -100 -2.2204458e-15 9.99999905 -70.000007629395 -4.4408917e-15 19.99999809 -80 -2.2204458e-15 9.99999905
		 -50 -4.4408917e-15 19.99999809 -60.000003814697 -2.2204458e-15 9.99999905 -29.99999809 0.37609035 19.99999809
		 -39.99999619 -2.2204458e-15 9.99999905 -9.99999905 -4.4408917e-15 19.99999809 -19.99999809 -2.2204458e-15 9.99999905
		 10.000001907349 -4.4408917e-15 19.99999809 7.4505806e-07 -2.2204458e-15 9.99999905
		 30.000001907349 -4.4408917e-15 19.99999809 20.000003814697 -2.2204458e-15 9.99999905
		 50 0.48069233 19.99999809 39.99999619 -2.2204458e-15 9.99999905 70.000007629395 -4.4408917e-15 19.99999809
		 60.000003814697 -2.2204458e-15 9.99999905 90.000007629395 -4.4408917e-15 19.99999809
		 80.000007629395 -2.2204458e-15 9.99999905 100 -2.2204458e-15 9.99999905 -90 1.6543612e-22 -7.4505806e-07
		 -100 2.2204465e-15 -10.000001907349 -70.000007629395 1.6543612e-22 -7.4505806e-07
		 -80 2.2204465e-15 -10.000001907349 -50 1.6543612e-22 -7.4505806e-07 -60.000003814697 2.2204465e-15 -10.000001907349
		 -29.99999809 -0.34877574 -7.4505806e-07 -39.99999619 2.2204465e-15 -10.000001907349
		 -9.99999905 1.6543612e-22 -7.4505806e-07 -19.99999809 2.2204465e-15 -10.000001907349
		 10.000001907349 0.29141578 -7.4505806e-07 7.4505806e-07 2.2204465e-15 -10.000001907349
		 30.000001907349 1.6543612e-22 -7.4505806e-07 20.000003814697 2.2204465e-15 -10.000001907349
		 50 1.6543612e-22 -7.4505806e-07 39.99999619 0.37609035 -10.000001907349 70.000007629395 1.6543612e-22 -7.4505806e-07
		 60.000003814697 2.2204465e-15 -10.000001907349 90.000007629395 1.6543612e-22 -7.4505806e-07
		 80.000007629395 0.48069233 -10.000001907349 100 2.2204465e-15 -10.000001907349 -90 4.4408929e-15 -20.000003814697
		 -100 6.6613386e-15 -30.000001907349 -70.000007629395 -0.34877574 -20.000003814697
		 -80 6.6613386e-15 -30.000001907349 -50 4.4408929e-15 -20.000003814697 -60.000003814697 6.6613386e-15 -30.000001907349
		 -29.99999809 4.4408929e-15 -20.000003814697 -39.99999619 6.6613386e-15 -30.000001907349
		 -9.99999905 4.4408929e-15 -20.000003814697 -19.99999809 6.6613386e-15 -30.000001907349
		 10.000001907349 4.4408929e-15 -20.000003814697 7.4505806e-07 6.6613386e-15 -30.000001907349
		 30.000001907349 4.4408929e-15 -20.000003814697 20.000003814697 -0.34877574 -30.000001907349
		 50 4.4408929e-15 -20.000003814697 39.99999619 6.6613386e-15 -30.000001907349 70.000007629395 4.4408929e-15 -20.000003814697
		 60.000003814697 6.6613386e-15 -30.000001907349 90.000007629395 4.4408929e-15 -20.000003814697
		 80.000007629395 6.6613386e-15 -30.000001907349 100 6.6613386e-15 -30.000001907349
		 -90 8.8817833e-15 -39.99999619 -100 1.110223e-14 -50 -70.000007629395 8.8817833e-15 -39.99999619
		 -80 1.110223e-14 -50 -50 8.8817833e-15 -39.99999619 -60.000003814697 1.110223e-14 -50
		 -29.99999809 8.8817833e-15 -39.99999619 -39.99999619 1.110223e-14 -50 -9.99999905 8.8817833e-15 -39.99999619
		 -19.99999809 1.110223e-14 -50 10.000001907349 8.8817833e-15 -39.99999619 7.4505806e-07 -0.30784035 -50
		 30.000001907349 8.8817833e-15 -39.99999619 20.000003814697 1.110223e-14 -50 50 8.8817833e-15 -39.99999619
		 39.99999619 1.110223e-14 -50 70.000007629395 8.8817833e-15 -39.99999619 60.000003814697 -0.34877574 -50
		 90.000007629395 8.8817833e-15 -39.99999619 80.000007629395 0.37609035 -50 100 1.110223e-14 -50
		 -90 1.3322677e-14 -60.000003814697 -100 1.5543124e-14 -70.000007629395 -70.000007629395 -0.34877574 -60.000003814697
		 -80 0.37609035 -70.000007629395 -50 0.37609035 -60.000003814697 -60.000003814697 1.5543124e-14 -70.000007629395
		 -29.99999809 1.3322677e-14 -60.000003814697 -39.99999619 1.5543124e-14 -70.000007629395
		 -9.99999905 1.3322677e-14 -60.000003814697 -19.99999809 1.5543124e-14 -70.000007629395
		 10.000001907349 1.3322677e-14 -60.000003814697 7.4505806e-07 1.5543124e-14 -70.000007629395
		 30.000001907349 1.3322677e-14 -60.000003814697 20.000003814697 1.5543124e-14 -70.000007629395
		 50 -0.30784035 -60.000003814697 39.99999619 0.37609035 -70.000007629395 70.000007629395 1.3322677e-14 -60.000003814697
		 60.000003814697 1.5543124e-14 -70.000007629395 90.000007629395 -0.22292916 -60.000003814697
		 80.000007629395 1.5543124e-14 -70.000007629395 100 1.5543124e-14 -70.000007629395
		 -90 1.776357e-14 -80.000007629395 -100 1.9984014e-14 -90 -70.000007629395 1.776357e-14 -80.000007629395
		 -80 1.9984014e-14 -90 -50 1.776357e-14 -80.000007629395 -60.000003814697 1.9984014e-14 -90
		 -29.99999809 1.776357e-14 -80.000007629395 -39.99999619 1.9984014e-14 -90 -9.99999905 1.776357e-14 -80.000007629395
		 -19.99999809 1.9984014e-14 -90 10.000001907349 1.776357e-14 -80.000007629395 7.4505806e-07 1.9984014e-14 -90
		 30.000001907349 -0.34877574 -80.000007629395 20.000003814697 1.9984014e-14 -90 50 1.776357e-14 -80.000007629395
		 39.99999619 1.9984014e-14 -90 70.000007629395 0.37609035 -80.000007629395 60.000003814697 1.9984014e-14 -90
		 90.000007629395 1.776357e-14 -80.000007629395 80.000007629395 1.9984014e-14 -90 100 1.9984014e-14 -90
		 -90 2.220446e-14 -100;
	setAttr ".vt[332:497]" -70.000007629395 2.220446e-14 -100 -50 2.220446e-14 -100
		 -29.99999809 2.220446e-14 -100 -9.99999905 2.220446e-14 -100 10.000001907349 2.220446e-14 -100
		 30.000001907349 2.220446e-14 -100 50 2.220446e-14 -100 70.000007629395 2.220446e-14 -100
		 90 2.220446e-14 -100 -90 -0.22806418 90 -70 -1.9984014e-14 90 -50 -1.9984014e-14 90
		 -29.99999809 -1.9984014e-14 90 -9.99999905 -1.9984014e-14 90 10.000001907349 -1.9984014e-14 90
		 30.000001907349 -1.9984014e-14 90 50 -1.9984014e-14 90 70.000007629395 -1.9984014e-14 90
		 90.000007629395 -0.34877574 90 -90 -1.5543124e-14 70.000007629395 -70 -1.5543124e-14 70.000007629395
		 -50 -1.5543124e-14 70.000007629395 -29.99999809 -1.5543124e-14 70.000007629395 -9.99999905 -1.5543124e-14 70.000007629395
		 10.000001907349 -1.5543124e-14 70.000007629395 30.000001907349 -1.5543124e-14 70.000007629395
		 50 -1.5543124e-14 70.000007629395 70.000007629395 -0.65661609 70.000007629395 90.000007629395 -1.5543124e-14 70.000007629395
		 -90 -1.110223e-14 50 -70 -1.110223e-14 50 -50 0.37609035 50 -29.99999809 -1.110223e-14 50
		 -9.99999905 -1.110223e-14 50 10.000001907349 -1.110223e-14 50 30.000001907349 -1.110223e-14 50
		 50 0.37609035 50 70.000007629395 -1.110223e-14 50 90.000007629395 -1.110223e-14 50
		 -90 -0.4256112 29.99999809 -70 -0.30784035 29.99999809 -50 -6.6613377e-15 29.99999809
		 -29.99999809 -6.6613377e-15 29.99999809 -9.99999905 -6.6613377e-15 29.99999809 10.000001907349 -6.6613377e-15 29.99999809
		 30.000001907349 0.57985055 29.99999809 50 -6.6613377e-15 29.99999809 70.000007629395 -6.6613377e-15 29.99999809
		 90.000007629395 -6.6613377e-15 29.99999809 -90 -2.2204458e-15 9.99999905 -70 0.37609035 9.99999905
		 -50 -2.2204458e-15 9.99999905 -29.99999809 -2.2204458e-15 9.99999905 -9.99999905 -0.25957605 9.99999905
		 10.000001907349 -2.2204458e-15 9.99999905 30.000001907349 -2.2204458e-15 9.99999905
		 50 -2.2204458e-15 9.99999905 70.000007629395 -2.2204458e-15 9.99999905 90.000007629395 -0.30784035 9.99999905
		 -90 0.23874032 -10.000001907349 -70 2.2204465e-15 -10.000001907349 -50 2.2204465e-15 -10.000001907349
		 -29.99999809 2.2204465e-15 -10.000001907349 -9.99999905 2.2204465e-15 -10.000001907349
		 10.000001907349 2.2204465e-15 -10.000001907349 30.000001907349 2.2204465e-15 -10.000001907349
		 50 2.2204465e-15 -10.000001907349 70.000007629395 0.37609035 -10.000001907349 90.000007629395 2.2204465e-15 -10.000001907349
		 -90 6.6613386e-15 -30.000001907349 -70 6.6613386e-15 -30.000001907349 -50 6.6613386e-15 -30.000001907349
		 -29.99999809 6.6613386e-15 -30.000001907349 -9.99999905 0.48069233 -30.000001907349
		 10.000001907349 6.6613386e-15 -30.000001907349 30.000001907349 6.6613386e-15 -30.000001907349
		 50 0.48069233 -30.000001907349 70.000007629395 6.6613386e-15 -30.000001907349 90.000007629395 6.6613386e-15 -30.000001907349
		 -90 1.110223e-14 -50 -70 1.110223e-14 -50 -50 1.110223e-14 -50 -29.99999809 -0.34877574 -50
		 -9.99999905 1.110223e-14 -50 10.000001907349 1.110223e-14 -50 30.000001907349 1.110223e-14 -50
		 50 1.110223e-14 -50 70.000007629395 1.110223e-14 -50 90.000007629395 1.110223e-14 -50
		 -90 1.5543124e-14 -70.000007629395 -70 1.5543124e-14 -70.000007629395 -50 1.5543124e-14 -70.000007629395
		 -29.99999809 1.5543124e-14 -70.000007629395 -9.99999905 1.5543124e-14 -70.000007629395
		 10.000001907349 1.5543124e-14 -70.000007629395 30.000001907349 1.5543124e-14 -70.000007629395
		 50 1.5543124e-14 -70.000007629395 70.000007629395 1.5543124e-14 -70.000007629395
		 90.000007629395 1.5543124e-14 -70.000007629395 -90 0.21218437 -90 -70 1.9984014e-14 -90
		 -50 1.9984014e-14 -90 -29.99999809 1.9984014e-14 -90 -9.99999905 0.37609035 -90 10.000001907349 1.9984014e-14 -90
		 30.000001907349 1.9984014e-14 -90 50 1.9984014e-14 -90 70.000007629395 1.9984014e-14 -90
		 90.000007629395 0.37609035 -90 -47.48264694 -0.019689396 -5.9849844 -47.25771332 -0.019689396 -5.44226122
		 -47.46440125 0.80685294 -5.84537983 -47.32720566 0.54781473 -5.40643311 -46.88383865 0.66509438 -6.026775837
		 -46.65827942 0.65009904 -5.37779617 -46.75353241 -0.009914916 -6.030415058 -46.34386444 -0.019689396 -5.50857782
		 -47.63567352 -0.019689396 -5.4741025 -47.67882919 0.81570864 -5.53069067 -46.78200531 0.67492115 -5.74820995
		 -46.35061646 -0.019689396 -5.90262032 -47.72200775 0.37293172 -6.1015234 -47.1506958 0.44838086 -5.22322035
		 -47.26920319 0.82894206 -6.17012072 -46.97665024 0.66996706 -5.30505323 -46.69868851 0.40089339 -6.15019417
		 -46.5019989 0.42510933 -5.34587955 -47.2201767 -0.009914916 -6.19436264 -46.89251709 -0.019689396 -5.083890438
		 -47.8536644 0.29557756 -5.40776157 -47.12946701 0.96770835 -5.68302917 -46.45387268 0.37672296 -5.8745389
		 -46.72006989 0.47412559 -4.96269703 -47.16782379 0.49538386 -6.2939167 -87.22164154 -0.019689396 15.75913048
		 -86.63563538 -0.019689396 15.71743202 -87.05670166 0.63361883 15.63479424 -86.62049866 0.66384947 15.67480469
		 -87.071861267 0.66509438 15.17785358 -86.37580872 0.69978774 15.18641663 -87.034095764 -0.009914916 15.053084373
		 -86.60813904 -0.019689396 15.13482094 -86.78540039 -0.019689396 16.065908432 -86.77352142 0.73162866 15.86993313
		 -86.79475403 0.64078033 15.20595837 -86.78540039 -0.019689396 15.049256325 -87.40791321 0.37293172 15.94933128
		 -86.39398956 0.44838086 15.68519974 -87.38343811 0.62678158 15.29773521 -86.42222595 0.71692252 15.4157362
		 -87.13037109 0.40089339 14.96317005 -86.32814026 0.51990765 15.092072487 -87.33724213 -0.009914916 15.44390583
		 -86.18014526 -0.019689396 15.48435688 -86.79142761 0.29557756 16.29368973 -86.73277283 0.63979077 15.44408894
		 -86.79142761 0.37672296 14.81812572 -86.010620117 0.47412559 15.3591032 -87.60752869 0.49538386 15.36274815
		 -49.3437767 -0.041904889 -91.10453033 -48.75619507 -0.041904889 -90.95436096 -49.203125 0.36487237 -91.079528809
		 -48.93336487 0.3835679 -91.054786682 -49.21250153 0.38433778 -91.36211395 -48.84438324 0.3827554 -91.31110382
		 -49.3437767 -0.030357793 -91.53741455;
	setAttr ".vt[498:663]" -48.84056854 -0.041904889 -91.44085693 -49.049987793 -0.041904889 -90.74211884
		 -49.041126251 0.39850694 -90.97296906 -49.041126251 0.36930129 -91.34473419 -49.049987793 -0.041904889 -91.54193878
		 -49.3705864 0.25188494 -90.92755127 -48.74058914 0.26780164 -91.073753357 -49.24613953 0.46067774 -91.26602173
		 -48.81074905 0.41638997 -91.21500397 -49.3705864 0.19090019 -91.56874847 -48.79251099 0.25188494 -91.39319611
		 -49.36670685 -0.030357793 -91.24815369 -48.67182541 -0.041904889 -91.20036316 -49.049987793 0.25188494 -90.82068634
		 -49.0027999878 0.3686893 -91.19747162 -49.049987793 0.1793531 -91.44937897 -48.62252045 0.25188494 -91.24815369
		 -49.47745514 0.26343203 -91.24815369 -93.39095306 -0.10667493 -56.030097961 -93.061447144 -0.10667493 -55.88269043
		 -93.45536804 0.33748466 -56.14974213 -93.13393402 0.28585747 -55.95631409 -93.41290283 0.2533088 -56.27814484
		 -93.15605164 0.25826192 -56.19406128 -93.38779449 -0.10667493 -56.44585419 -93.061447144 -0.10667493 -56.24581909
		 -54.21484375 -0.10667493 13.56232262 -53.86655426 -0.10667493 13.4674511 -54.34050751 0.33748466 13.51062202
		 -53.96928787 0.28585747 13.45646191 -54.38905334 0.2533088 13.38439369 -54.13710022 0.25826192 13.28660297
		 -54.47595215 -0.10667493 13.23877239 -54.096748352 -0.10667493 13.1866045 -57.8249321 -0.08731468 -12.58885288
		 -57.26176834 -0.08731468 -12.58885288 -57.63579559 0.24967943 -12.81002617 -57.35760498 0.31215981 -12.67795086
		 -57.61397934 0.1020658 -13.23281384 -57.3290863 0.084947228 -13.095510483 -57.8249321 -0.08731468 -13.15201759
		 -57.26176834 -0.08731468 -13.15201759 -43.77588654 -0.13468844 -23.63353539 -43.18741608 -0.13468844 -24.35477448
		 -43.9410553 0.59946036 -24.1293354 -43.35745239 0.33367229 -24.338871 -44.06111908 0.46032661 -24.31789589
		 -43.83898544 0.33551848 -24.68458939 -44.24966812 -0.13468844 -24.52529526 -43.65247345 -0.13468844 -24.73422241
		 -66.72738647 -0.15379144 -40.79148483 -66.21008301 -0.15379144 -41.56536484 -66.85758209 0.40322417 -41.25454712
		 -66.42055511 0.50649768 -41.51551056 -67.41851807 0.15923448 -41.67287827 -66.96815491 0.13093928 -41.9382515
		 -67.50126648 -0.15379144 -41.30878067 -66.98396301 -0.15379144 -42.082660675 -83.93201447 -0.17016436 -25.11201859
		 -83.41471863 -0.17016436 -25.88589859 -84.062210083 0.38685125 -25.57508087 -83.62518311 0.49012476 -25.8360424
		 -84.62315369 0.14286156 -25.99341202 -84.1727829 0.11456636 -26.25878334 -84.70589447 -0.17016436 -25.62931442
		 -84.18859863 -0.17016436 -26.40319443 -75.92269897 -0.10667493 -80.83642578 -75.64494324 -0.10667493 -81.32633209
		 -76.071540833 0.33748466 -81.11535645 -75.74474335 0.17668302 -81.29958344 -76.16229248 0.2533088 -81.21562958
		 -76.067047119 0.17779997 -81.45688629 -76.29580688 -0.10667493 -81.3201828 -75.96084595 -0.10667493 -81.5054245
		 -55.37722778 -0.0053492785 -60.96271896 -55.01008606 -0.0053492785 -61.42044449 -55.25098419 0.29390845 -61.10102463
		 -55.026649475 0.27945188 -61.34282684 -55.45301056 0.28499418 -61.31746292 -55.22872925 0.3405925 -61.45772552
		 -55.73733139 -0.0053492785 -61.17276001 -55.30947495 -0.0053492785 -61.62594986 -6.67211246 -0.035252586 -34.55313873
		 -5.72200012 -0.035252586 -34.31031418 -6.44468212 0.62250417 -34.51271439 -6.008480072 0.65273482 -34.47270584
		 -6.45984364 0.65397972 -34.96965408 -5.86459732 0.65142095 -34.88716507 -6.67211246 -0.016580991 -35.25311661
		 -5.85842991 -0.035252586 -35.096977234 -6.19705677 -0.035252586 -33.96711731 -6.18273163 0.67689115 -34.34040833
		 -6.18273163 0.62966573 -34.94155121 -6.19705677 -0.035252586 -35.26042938 -6.7154665 0.43980414 -34.26696014
		 -5.69676208 0.46554142 -34.50336838 -6.51423073 0.77742106 -34.8142662 -5.81021023 0.70580792 -34.73177338
		 -6.7154665 0.34119213 -35.3037796 -5.78071785 0.43980414 -35.019908905 -6.70918941 -0.016580991 -34.78536987
		 -5.58556938 -0.035252586 -34.70809937 -6.19705677 0.43980414 -34.094158173 -6.12075806 0.62867618 -34.70342255
		 -6.19705677 0.32252049 -35.11075974 -5.50584316 0.43980414 -34.78536987 -6.88826942 0.45847571 -34.78536987
		 -23.17287064 -0.14734688 -87.001449585 -22.61644173 -0.14734688 -86.8592453 -23.039676666 0.23786378 -86.97777557
		 -22.78421783 0.25556815 -86.9543457 -23.048555374 0.2562972 -87.24538422 -22.69995308 0.25479868 -87.19706726
		 -23.17287064 -0.13641198 -87.41138458 -22.69634247 -0.14734688 -87.31994629 -22.89465714 -0.14734688 -86.6582489
		 -22.8862648 0.26971513 -86.8768692 -22.8862648 0.24205789 -87.22891998 -22.89465714 -0.14734688 -87.4156723
		 -23.19825745 0.13086674 -86.83385468 -22.60166359 0.14593959 -86.9723053 -23.080406189 0.32858974 -87.15437317
		 -22.66810226 0.28665003 -87.10606384 -23.19825745 0.073115304 -87.4410553 -22.65083122 0.13086674 -87.27481079
		 -23.19458199 -0.13641198 -87.1374588 -22.53654289 -0.14734688 -87.092201233 -22.89465714 0.13086674 -86.73265076
		 -22.84997368 0.24147835 -87.08946228 -22.89465714 0.062180415 -87.32801819 -22.489851 0.13086674 -87.1374588
		 -23.29946136 0.14180164 -87.1374588 16.37628555 -0.14734688 9.88033962 16.57156754 -0.14734688 9.34024811
		 16.4127121 0.23786378 9.75005531 16.4607048 0.25556815 9.49805355 16.14550018 0.2562972 9.73304749
		 16.22725296 0.25479868 9.39074135 15.96826458 -0.13641198 9.84074783 16.1053009 -0.14734688 9.37527847
		 16.74474716 -0.14734688 9.63657284 16.52796555 0.26971513 9.60710907 16.17755508 0.24205789 9.57310677
		 15.99087238 -0.14734688 9.56342125 16.5406456 0.13086674 9.9217968 16.46046448 0.14593959 9.31461716
		 16.23300171 0.32858974 9.77353954 16.32090759 0.28665003 9.36782837 15.93627834 0.073115304 9.86315346
		 16.15461731 0.13086674 9.33433914 16.23881912 -0.13641198 9.88881588 16.34741211 -0.14734688 9.23822308
		 16.67069626 0.13086674 9.6293869 16.31987 0.24147835 9.55045128 16.078113556 0.062180415 9.57188702
		 16.30688095 0.13086674 9.18737984 16.22868729 0.14180164 9.99320316 8.70996094 -0.15153211 -34.25982666
		 8.99019432 -0.15153211 -34.77536011 8.80970764 0.14772561 -34.41831207 8.98764801 0.13326904 -34.69603729
		 8.57252693 0.13881133 -34.59553146 8.76840973 0.19440967 -34.77331543 8.31834221 -0.15153211 -34.40274429
		 8.65913582 -0.15153211 -34.92456818 24.96845436 -0.15153211 -9.90195751;
	setAttr ".vt[664:829]" 24.65382767 -0.15153211 -10.39725018 24.87833405 0.14772561 -10.06610775
		 24.72193527 0.13326904 -10.35651016 24.60824585 0.13881133 -9.94480419 24.54793167 0.19440967 -10.20236683
		 24.65337372 -0.15153211 -9.6289854 24.36264801 -0.15153211 -10.18027687 -6.96531868 -0.11778954 -67.89287567
		 -6.40215492 -0.11778954 -67.89287567 -6.79607773 0.32637006 -68.15992737 -6.47464371 0.16556841 -67.96649933
		 -6.7536087 0.24219419 -68.28833008 -6.49675751 0.16668536 -68.32444763 -6.72850227 -0.11778954 -68.45603943
		 -6.40215492 -0.11778954 -68.25600433 -28.96968651 -0.11778954 -37.017555237 -29.078968048 -0.11778954 -36.46509552
		 -28.74055099 0.32637006 -36.79970932 -28.9926796 0.16556841 -36.52191925 -28.62282944 0.24219419 -36.73313141
		 -28.63723946 0.16668536 -36.47415161 -28.46318245 -0.11778954 -36.67595673 -28.72274208 -0.11778954 -36.39463043
		 8.74009514 -0.11778954 -80.80368805 8.63081169 -0.11778954 -80.25122833 8.96923065 0.32637006 -80.58583832
		 8.71710014 0.16556841 -80.30805206 9.086950302 0.24219419 -80.51926422 9.072542191 0.16668536 -80.26028442
		 9.2465992 -0.11778954 -80.46208954 8.98703957 -0.11778954 -80.18076324 82.31128693 -0.099053115 -62.76807404
		 82.64079285 -0.099053115 -62.6206665 82.24687195 0.34510648 -62.8877182 82.5683136 0.29347929 -62.69428635
		 82.28934479 0.26093063 -63.016120911 82.54619598 0.26588374 -62.93203735 82.31445313 -0.099053115 -63.18383026
		 82.64079285 -0.099053115 -62.98379517 35.46895218 -0.016516156 3.15629125 36.41906738 -0.016516156 3.39911342
		 35.49910736 0.72246093 3.29611015 36.48433685 0.72246093 3.18797708 35.47335434 0.89320338 2.52003145
		 36.48433685 0.58372951 2.66013622 35.46895218 -0.016516156 2.60190463 36.28263855 -0.016516156 2.61244917
		 35.94400787 -0.016516156 3.742311 35.94400787 0.81483305 3.58876204 35.94400787 0.66406351 2.56776428
		 35.94400787 -0.016516156 2.44899988 35.42559814 0.45854056 3.4424665 36.4624176 0.45854056 3.4424665
		 35.38098145 0.9855755 2.78395152 36.57670975 0.67610162 2.92405677 35.42559814 0.45854056 2.4056468
		 36.4624176 0.45854056 2.4056468 35.60536957 -0.016516156 2.92405677 36.55549622 -0.016516156 3.0013282299
		 35.94400787 0.45854056 3.61526966 35.94400787 0.78282768 3.054822922 35.94400787 0.45854056 2.2328434
		 36.63522339 0.45854056 2.92405677 35.25279617 0.45854056 2.92405677 -18.16850281 -0.027135454 2.51335382
		 -17.80609703 -0.027135454 2.48756671 -18.066497803 0.37689066 2.43646097 -17.79673576 0.39558622 2.46120405
		 -18.075874329 0.39635611 2.1538744 -17.64541626 0.41781154 2.15917015 -18.052516937 -0.021090589 2.076713562
		 -17.7890892 -0.027135454 2.12726164 -17.89871979 -0.027135454 2.70307493 -17.89136887 0.43750301 2.58187795
		 -17.90449905 0.38131958 2.17125511 -17.89871979 -0.027135454 2.074345589 -18.28369904 0.21567366 2.63098025
		 -17.65665436 0.26233375 2.46763325 -18.2685585 0.37266234 2.22801352 -17.67411995 0.42840827 2.30098867
		 -18.11205673 0.23296604 2.021107674 -17.61593437 0.30656815 2.10082483 -18.23999023 -0.021090589 2.31840944
		 -17.52440643 -0.027135454 2.34342575 -17.90244484 0.16783543 2.84394288 -17.86617279 0.38070762 2.31852293
		 -17.90244484 0.21801829 1.93140745 -17.41957092 0.27825511 2.26596498 -18.40714645 0.29140189 2.26821899
		 73.65957642 -0.069360532 3.87164807 74.21549225 -0.069360532 4.12034369 73.55090332 0.53995305 3.66979671
		 74.093193054 0.46912915 3.99613452 73.62255096 0.4244777 3.45317078 74.055885315 0.4312726 3.59502697
		 73.66490936 -0.069360532 3.17023039 74.21549225 -0.069360532 3.50770831 86.10158539 -0.13279569 -32.68312073
		 86.68673706 -0.13279569 -32.63946533 86.28705597 0.16646203 -32.65730286 86.6133728 0.15200548 -32.60919571
		 86.35116577 0.15754777 -32.94635773 86.59373474 0.21314609 -32.84082413 86.070960999 -0.13279569 -33.098876953
		 86.68673706 -0.13279569 -33.0025978088 48.19155884 -0.099053115 -93.22476196 48.7547226 -0.099053115 -93.22476196
		 48.36079788 0.34510648 -93.49182129 48.6822319 0.18430483 -93.29838562 48.40326691 0.26093063 -93.620224
		 48.6601181 0.18542178 -93.65634155 48.42837524 -0.099053115 -93.78793335 48.7547226 -0.099053115 -93.58789063
		 65.39361572 -0.13687344 -22.1084919 65.73680115 -0.13687344 -22.13291168 65.49021149 0.24573195 -22.18130875
		 65.7456665 0.26343632 -22.15787697 65.48133087 0.26416534 -22.44891167 65.88896942 0.28448328 -22.44389725
		 65.50344849 -0.13114905 -22.52198219 65.75291443 -0.13687344 -22.47411346 65.64909363 -0.13687344 -21.92882919
		 65.65605164 0.30313075 -22.043600082 65.64362335 0.24992605 -22.43245316 65.64909363 -0.13687344 -22.52422523
		 65.28452301 0.093062371 -21.99710083 65.87832642 0.13724864 -22.15178871 65.29885864 0.24172778 -22.37870407
		 65.86178589 0.29451823 -22.30959702 65.44706726 0.10943793 -22.57464027 65.91688538 0.1791378 -22.49914932
		 65.32591248 -0.13114905 -22.29310036 66.0035629272 -0.13687344 -22.26941109 65.64556885 0.047760449 -21.79542923
		 65.67991638 0.24934652 -22.29299355 65.64556885 0.095282689 -22.65958405 66.10283661 0.15232584 -22.3427639
		 65.1676178 0.16477561 -22.34062958 35.79493713 -0.11440459 -44.48407745 36.004989624 -0.11440459 -43.96155167
		 36.07069397 0.22258952 -44.39108276 36.0519104 0.28506988 -44.083705902 36.47110748 0.074975893 -44.52853775
		 36.44997406 0.057857312 -44.21298599 36.31745911 -0.11440459 -44.69412994 36.52751541 -0.11440459 -44.17160416
		 63.65283203 -0.11440459 -66.16745758 63.85561752 -0.11440459 -66.69284821 63.51459885 0.22258952 -66.42354584
		 63.73798752 0.28506988 -66.63552094 63.12802887 0.074975893 -66.596138 63.35870361 0.057857312 -66.81248474
		 63.12744141 -0.11440459 -66.37024689 63.33023071 -0.11440459 -66.89562988 -83.41714478 -0.037663516 70.85279846
		 -83.13658142 -0.037663516 70.31226349 -83.62496185 0.71167684 70.9495697 -83.26768494 0.62457681 70.42713928
		 -83.83706665 0.56966406 70.86545563 -83.67028046 0.57802045 70.44109344 -84.11706543 -0.037663516 70.80673981
		 -83.7481842 -0.037663516 70.27668762 -74.29768372 -0.18292573 71.40555573 -73.36683655 -0.18292573 71.40555573
		 -74.017944336 0.5512231 70.96414185 -73.48664856 0.28543499 71.28385925;
	setAttr ".vt[830:995]" -73.94775391 0.41208932 70.75190735 -73.52320099 0.28728122 70.69220734
		 -73.90625 -0.18292573 70.47470093 -73.36683655 -0.18292573 70.805336 -63.44244385 -0.12020047 46.27042007
		 -63.11293411 -0.12020047 46.41783142 -63.50685883 0.32395911 46.15077591 -63.1854248 0.27233192 46.34420776
		 -63.46438599 0.23978326 46.022373199 -63.20753479 0.24473639 46.10645676 -63.43928146 -0.12020047 45.85466766
		 -63.11293411 -0.12020047 46.054698944 -96.50935364 -0.18460539 49.93592834 -96.61724091 -0.18460539 50.89978409
		 -96.56333923 0.31003597 50.2407074 -96.66275787 0.28614083 50.77675629 -96.089813232 0.29530165 50.36427689
		 -96.27896118 0.38719982 50.75849152 -95.820755 -0.18460539 49.9107666 -96.017440796 -0.18460539 50.92198944
		 -57.092735291 -0.13555196 67.63435364 -57.11294556 -0.13555196 68.19715118 -56.87849426 0.20144215 67.83129883
		 -57.020465851 0.26392254 68.10457611 -56.45676041 0.05382853 67.86827087 -56.60419846 0.036709949 68.14805603
		 -56.52993774 -0.13555196 67.65455627 -56.55014038 -0.13555196 68.21736145 -53.94273758 -0.13555196 39.3993988
		 -53.78860092 -0.13555196 38.85773849 -54.10369873 0.20144215 39.1569519 -53.90052795 0.26392254 38.92553329
		 -54.50437164 0.05382853 39.020252228 -54.29433441 0.036709949 38.78381348 -54.48439789 -0.13555196 39.24526215
		 -54.33026123 -0.13555196 38.70360184 -15.86132336 -0.15394305 23.69303894 -15.62106705 -0.15394305 24.22837067
		 -15.79570484 0.14531468 23.86842537 -15.68261909 0.13085812 24.17827415 -15.51099873 0.1364004 23.78715515
		 -15.48828888 0.19199874 24.050708771 -15.5103159 -0.15394305 23.46813011 -15.30175114 -0.15394305 24.055450439
		 -5.63349152 -0.13555196 67.16650391 -5.44034576 -0.13555196 67.69551849 -5.36086655 0.20144215 67.26831818
		 -5.38952065 0.26392254 67.57493591 -4.9562397 0.05382853 67.14380646 -4.98750496 0.036709949 67.45851135
		 -5.10448456 -0.13555196 66.97335815 -4.91133881 -0.13555196 67.50237274 63.51584625 -0.31176436 69.43431854
		 63.0020256042 -0.31176436 69.20380402 63.25275421 0.025229752 69.55870056 63.052993774 0.087710127 69.32432556
		 63.059791565 -0.12238388 69.93551636 62.85605621 -0.13950245 69.6936264 63.28533173 -0.31176436 69.94815063
		 62.77150726 -0.31176436 69.71762848 -24.87002563 -0.13555196 36.54144669 -24.77337265 -0.13555196 35.98663712
		 -25.055458069 0.20144215 36.31715775 -24.8775959 0.26392254 36.065761566 -25.46822739 0.05382853 36.22310638
		 -25.28406715 0.036709949 35.96600342 -25.42483521 -0.13555196 36.4447937 -25.32818222 -0.13555196 35.88998413
		 52.95058441 0.090925395 -27.9682827 53.17551804 0.090925395 -27.42555809 52.96883011 0.91746771 -27.82867813
		 53.1060257 0.6584295 -27.38973045 53.5493927 0.77570915 -28.010072708 53.77495193 0.76071388 -27.36109352
		 53.67970276 0.10069987 -28.013713837 54.089363098 0.090925395 -27.49187469 52.79756165 0.090925395 -27.45739937
		 52.75440216 0.92632347 -27.51398849 53.65122604 0.78553599 -27.73150826 54.082614899 0.090925395 -27.88591766
		 52.71122742 0.4835465 -28.084821701 53.28253555 0.55899566 -27.20651817 53.16403198 0.9395569 -28.15341949
		 53.45658112 0.78058189 -27.28835106 53.73454285 0.51150817 -28.13349152 53.93123245 0.5357241 -27.32917786
		 53.21305084 0.10069987 -28.17765999 53.54071045 0.090925395 -27.067188263 52.57956696 0.40619236 -27.39105988
		 53.30376434 1.078323126 -27.66632652 53.97935867 0.48733777 -27.85783577 53.71315765 0.5847404 -26.94599533
		 53.26540756 0.60599864 -28.27721405 83.48941803 -0.029726721 79.77690887 84.075424194 -0.029726721 79.73521423
		 83.65435791 0.62358147 79.65258026 84.090560913 0.65381211 79.69258881 83.6391983 0.65505701 79.19563293
		 84.33525085 0.68975037 79.20420074 83.67696381 -0.019952241 79.070869446 84.10292053 -0.029726721 79.15260315
		 83.92565918 -0.029726721 80.083686829 83.93753815 0.72159135 79.8877182 83.91630554 0.63074303 79.22373962
		 83.92565918 -0.029726721 79.06703949 83.30314636 0.36289439 79.96711731 84.31707001 0.43834352 79.70298004
		 83.32762146 0.61674428 79.31552124 84.28883362 0.70688522 79.43351746 83.58068848 0.39085606 78.9809494
		 84.38291931 0.50987035 79.10985565 83.37381744 -0.019952241 79.46168518 84.53091431 -0.029726721 79.50213623
		 83.91963196 0.28554022 80.31147003 83.97828674 0.62975347 79.46186829 83.91963196 0.36668563 78.83590698
		 84.70043945 0.46408826 79.37688446 83.10353088 0.48534653 79.38053131 37.59716034 -0.051942214 86.72654724
		 38.18473816 -0.051942214 86.87671661 37.73780823 0.35483503 86.75154877 38.0075721741 0.37353057 86.77629089
		 37.72843552 0.37430045 86.46896362 38.096553802 0.37271807 86.51997375 37.59716034 -0.040395118 86.29366302
		 38.1003685 -0.051942214 86.39022064 37.89094925 -0.051942214 87.08895874 37.89981079 0.38846961 86.85810852
		 37.89981079 0.35926396 86.48634338 37.89094925 -0.051942214 86.28913879 37.57035065 0.2418476 86.90352631
		 38.2003479 0.25776434 86.75732422 37.69480133 0.45064041 86.56505585 38.13018799 0.40635264 86.61607361
		 37.57035065 0.18086287 86.2623291 38.14842987 0.2418476 86.43788147 37.57423401 -0.040395118 86.58292389
		 38.26911163 -0.051942214 86.63071442 37.89094925 0.2418476 87.010391235 37.93813324 0.35865197 86.63360596
		 37.89094925 0.16931579 86.38169861 38.3184166 0.2418476 86.58292389 37.4634819 0.25339469 86.58292389
		 -35.69849396 -0.11671225 58.14312744 -35.36898422 -0.11671225 58.29053879 -35.76290512 0.32744735 58.023483276
		 -35.4414711 0.27582017 58.21691513 -35.7204361 0.24327147 57.89508438 -35.4635849 0.2482246 57.97916794
		 -35.69533157 -0.11671225 57.72737503 -35.36898422 -0.11671225 57.92741013 43.7974472 -0.11671225 33.41582108
		 44.14573669 -0.11671225 33.32094955 43.67178726 0.32744735 33.36412048 44.043006897 0.27582017 33.30995941
		 43.62323761 0.24327147 33.23789215 43.87519073 0.2482246 33.14010239 43.53634262 -0.11671225 33.092269897
		 43.91554642 -0.11671225 33.040103912 -31.39165115 -0.13206373 86.15865326 -30.8284874 -0.13206373 86.15865326
		 -31.20251465 0.20493038 85.93747711 -30.92432404 0.26741076 86.06955719 -31.18069839 0.05731675 85.51469421
		 -30.89580536 0.04019817 85.6519928 -31.39165115 -0.13206373 85.5954895;
	setAttr ".vt[996:1036]" -30.8284874 -0.13206373 85.5954895 34.25270462 -0.1794375 45.31051636
		 34.84117889 -0.1794375 44.58927536 34.087539673 0.55471134 44.81471634 34.67114258 0.2889232 44.60517883
		 33.96747208 0.41557753 44.62615585 34.18960953 0.29076943 44.25946426 33.77892303 -0.1794375 44.41875839
		 34.37612152 -0.1794375 44.20983124 13.48256874 -0.044400848 91.56602478 13.78708172 -0.044400848 91.11047363
		 13.4059248 0.28349337 91.29344177 13.66318703 0.34428659 91.13982391 13.075721741 0.13986577 91.047187805
		 13.34083652 0.12320944 90.89096832 13.027013779 -0.044400848 91.26151276 13.33152771 -0.044400848 90.80596161
		 94.90808868 -0.18020168 56.49483871 95.42538452 -0.18020168 55.72095871 94.77789307 0.37681395 56.031776428
		 95.21492004 0.48008746 55.77081299 94.21694946 0.13282424 55.61344528 94.66732025 0.10452903 55.34807587
		 94.13420868 -0.18020168 55.97754288 94.65150452 -0.18020168 55.20366287 1.046747208 -0.11671225 -6.43615294
		 1.32449532 -0.11671225 -6.92606306 0.89789963 0.32744735 -6.71508837 1.22469711 0.16664569 -6.89931393
		 0.80714607 0.24327147 -6.81535912 0.90239906 0.16776264 -7.056614876 0.67363167 -0.11671225 -6.91991138
		 1.0085983276 -0.11671225 -7.10515404 66.67712402 -0.15045482 33.94415283 67.044265747 -0.15045482 33.48642731
		 66.80337524 0.14880289 33.80584717 67.027709961 0.13434634 33.56404114 66.60134888 0.13988863 33.58940887
		 66.82563019 0.19548696 33.44914627 66.31702423 -0.15045482 33.7341156 66.74488068 -0.15045482 33.28092194;
	setAttr -s 1812 ".ed";
	setAttr ".ed[0:165]"  0 121 0 121 1 0 0 122 0 122 11 0 1 123 0 123 2 0 1 124 0
		 124 12 0 2 125 0 125 3 0 2 126 0 126 13 0 3 127 0 127 4 0 3 128 0 128 14 0 4 129 0
		 129 5 0 4 130 0 130 15 0 5 131 0 131 6 0 5 132 0 132 16 0 6 133 0 133 7 0 6 134 0
		 134 17 0 7 135 0 135 8 0 7 136 0 136 18 0 8 137 0 137 9 0 8 138 0 138 19 0 9 139 0
		 139 10 0 9 140 0 140 20 0 10 141 0 141 21 0 11 142 0 142 12 0 11 143 0 143 22 0 12 144 0
		 144 13 0 12 145 0 145 23 0 13 146 0 146 14 0 13 147 0 147 24 0 14 148 0 148 15 0
		 14 149 0 149 25 0 15 150 0 150 16 0 15 151 0 151 26 0 16 152 0 152 17 0 16 153 0
		 153 27 0 17 154 0 154 18 0 17 155 0 155 28 0 18 156 0 156 19 0 18 157 0 157 29 0
		 19 158 0 158 20 0 19 159 0 159 30 0 20 160 0 160 21 0 20 161 0 161 31 0 21 162 0
		 162 32 0 22 163 0 163 23 0 22 164 0 164 33 0 23 165 0 165 24 0 23 166 0 166 34 0
		 24 167 0 167 25 0 24 168 0 168 35 0 25 169 0 169 26 0 25 170 0 170 36 0 26 171 0
		 171 27 0 26 172 0 172 37 0 27 173 0 173 28 0 27 174 0 174 38 0 28 175 0 175 29 0
		 28 176 0 176 39 0 29 177 0 177 30 0 29 178 0 178 40 0 30 179 0 179 31 0 30 180 0
		 180 41 0 31 181 0 181 32 0 31 182 0 182 42 0 32 183 0 183 43 0 33 184 0 184 34 0
		 33 185 0 185 44 0 34 186 0 186 35 0 34 187 0 187 45 0 35 188 0 188 36 0 35 189 0
		 189 46 0 36 190 0 190 37 0 36 191 0 191 47 0 37 192 0 192 38 0 37 193 0 193 48 0
		 38 194 0 194 39 0 38 195 0 195 49 0 39 196 0 196 40 0 39 197 0 197 50 0 40 198 0
		 198 41 0 40 199 0 199 51 0 41 200 0 200 42 0 41 201 0 201 52 0 42 202 0 202 43 0
		 42 203 0 203 53 0;
	setAttr ".ed[166:331]" 43 204 0 204 54 0 44 205 0 205 45 0 44 206 0 206 55 0
		 45 207 0 207 46 0 45 208 0 208 56 0 46 209 0 209 47 0 46 210 0 210 57 0 47 211 0
		 211 48 0 47 212 0 212 58 0 48 213 0 213 49 0 48 214 0 214 59 0 49 215 0 215 50 0
		 49 216 0 216 60 0 50 217 0 217 51 0 50 218 0 218 61 0 51 219 0 219 52 0 51 220 0
		 220 62 0 52 221 0 221 53 0 52 222 0 222 63 0 53 223 0 223 54 0 53 224 0 224 64 0
		 54 225 0 225 65 0 55 226 0 226 56 0 55 227 0 227 66 0 56 228 0 228 57 0 56 229 0
		 229 67 0 57 230 0 230 58 0 57 231 0 231 68 0 58 232 0 232 59 0 58 233 0 233 69 0
		 59 234 0 234 60 0 59 235 0 235 70 0 60 236 0 236 61 0 60 237 0 237 71 0 61 238 0
		 238 62 0 61 239 0 239 72 0 62 240 0 240 63 0 62 241 0 241 73 0 63 242 0 242 64 0
		 63 243 0 243 74 0 64 244 0 244 65 0 64 245 0 245 75 0 65 246 0 246 76 0 66 247 0
		 247 67 0 66 248 0 248 77 0 67 249 0 249 68 0 67 250 0 250 78 0 68 251 0 251 69 0
		 68 252 0 252 79 0 69 253 0 253 70 0 69 254 0 254 80 0 70 255 0 255 71 0 70 256 0
		 256 81 0 71 257 0 257 72 0 71 258 0 258 82 0 72 259 0 259 73 0 72 260 0 260 83 0
		 73 261 0 261 74 0 73 262 0 262 84 0 74 263 0 263 75 0 74 264 0 264 85 0 75 265 0
		 265 76 0 75 266 0 266 86 0 76 267 0 267 87 0 77 268 0 268 78 0 77 269 0 269 88 0
		 78 270 0 270 79 0 78 271 0 271 89 0 79 272 0 272 80 0 79 273 0 273 90 0 80 274 0
		 274 81 0 80 275 0 275 91 0 81 276 0 276 82 0 81 277 0 277 92 0 82 278 0 278 83 0
		 82 279 0 279 93 0 83 280 0 280 84 0 83 281 0 281 94 0 84 282 0 282 85 0 84 283 0
		 283 95 0 85 284 0 284 86 0 85 285 0 285 96 0 86 286 0 286 87 0;
	setAttr ".ed[332:497]" 86 287 0 287 97 0 87 288 0 288 98 0 88 289 0 289 89 0
		 88 290 0 290 99 0 89 291 0 291 90 0 89 292 0 292 100 0 90 293 0 293 91 0 90 294 0
		 294 101 0 91 295 0 295 92 0 91 296 0 296 102 0 92 297 0 297 93 0 92 298 0 298 103 0
		 93 299 0 299 94 0 93 300 0 300 104 0 94 301 0 301 95 0 94 302 0 302 105 0 95 303 0
		 303 96 0 95 304 0 304 106 0 96 305 0 305 97 0 96 306 0 306 107 0 97 307 0 307 98 0
		 97 308 0 308 108 0 98 309 0 309 109 0 99 310 0 310 100 0 99 311 0 311 110 0 100 312 0
		 312 101 0 100 313 0 313 111 0 101 314 0 314 102 0 101 315 0 315 112 0 102 316 0 316 103 0
		 102 317 0 317 113 0 103 318 0 318 104 0 103 319 0 319 114 0 104 320 0 320 105 0 104 321 0
		 321 115 0 105 322 0 322 106 0 105 323 0 323 116 0 106 324 0 324 107 0 106 325 0 325 117 0
		 107 326 0 326 108 0 107 327 0 327 118 0 108 328 0 328 109 0 108 329 0 329 119 0 109 330 0
		 330 120 0 110 331 0 331 111 0 111 332 0 332 112 0 112 333 0 333 113 0 113 334 0 334 114 0
		 114 335 0 335 115 0 115 336 0 336 116 0 116 337 0 337 117 0 117 338 0 338 118 0 118 339 0
		 339 119 0 119 340 0 340 120 0 341 121 0 341 124 0 341 142 0 341 122 0 342 123 0 342 126 0
		 342 144 0 342 124 0 343 125 0 343 128 0 343 146 0 343 126 0 344 127 0 344 130 0 344 148 0
		 344 128 0 345 129 0 345 132 0 345 150 0 345 130 0 346 131 0 346 134 0 346 152 0 346 132 0
		 347 133 0 347 136 0 347 154 0 347 134 0 348 135 0 348 138 0 348 156 0 348 136 0 349 137 0
		 349 140 0 349 158 0 349 138 0 350 139 0 350 141 0 350 160 0 350 140 0 351 142 0 351 145 0
		 351 163 0 351 143 0 352 144 0 352 147 0 352 165 0 352 145 0 353 146 0 353 149 0 353 167 0
		 353 147 0 354 148 0 354 151 0 354 169 0 354 149 0 355 150 0 355 153 0;
	setAttr ".ed[498:663]" 355 171 0 355 151 0 356 152 0 356 155 0 356 173 0 356 153 0
		 357 154 0 357 157 0 357 175 0 357 155 0 358 156 0 358 159 0 358 177 0 358 157 0 359 158 0
		 359 161 0 359 179 0 359 159 0 360 160 0 360 162 0 360 181 0 360 161 0 361 163 0 361 166 0
		 361 184 0 361 164 0 362 165 0 362 168 0 362 186 0 362 166 0 363 167 0 363 170 0 363 188 0
		 363 168 0 364 169 0 364 172 0 364 190 0 364 170 0 365 171 0 365 174 0 365 192 0 365 172 0
		 366 173 0 366 176 0 366 194 0 366 174 0 367 175 0 367 178 0 367 196 0 367 176 0 368 177 0
		 368 180 0 368 198 0 368 178 0 369 179 0 369 182 0 369 200 0 369 180 0 370 181 0 370 183 0
		 370 202 0 370 182 0 371 184 0 371 187 0 371 205 0 371 185 0 372 186 0 372 189 0 372 207 0
		 372 187 0 373 188 0 373 191 0 373 209 0 373 189 0 374 190 0 374 193 0 374 211 0 374 191 0
		 375 192 0 375 195 0 375 213 0 375 193 0 376 194 0 376 197 0 376 215 0 376 195 0 377 196 0
		 377 199 0 377 217 0 377 197 0 378 198 0 378 201 0 378 219 0 378 199 0 379 200 0 379 203 0
		 379 221 0 379 201 0 380 202 0 380 204 0 380 223 0 380 203 0 381 205 0 381 208 0 381 226 0
		 381 206 0 382 207 0 382 210 0 382 228 0 382 208 0 383 209 0 383 212 0 383 230 0 383 210 0
		 384 211 0 384 214 0 384 232 0 384 212 0 385 213 0 385 216 0 385 234 0 385 214 0 386 215 0
		 386 218 0 386 236 0 386 216 0 387 217 0 387 220 0 387 238 0 387 218 0 388 219 0 388 222 0
		 388 240 0 388 220 0 389 221 0 389 224 0 389 242 0 389 222 0 390 223 0 390 225 0 390 244 0
		 390 224 0 391 226 0 391 229 0 391 247 0 391 227 0 392 228 0 392 231 0 392 249 0 392 229 0
		 393 230 0 393 233 0 393 251 0 393 231 0 394 232 0 394 235 0 394 253 0 394 233 0 395 234 0
		 395 237 0 395 255 0 395 235 0 396 236 0 396 239 0 396 257 0 396 237 0;
	setAttr ".ed[664:829]" 397 238 0 397 241 0 397 259 0 397 239 0 398 240 0 398 243 0
		 398 261 0 398 241 0 399 242 0 399 245 0 399 263 0 399 243 0 400 244 0 400 246 0 400 265 0
		 400 245 0 401 247 0 401 250 0 401 268 0 401 248 0 402 249 0 402 252 0 402 270 0 402 250 0
		 403 251 0 403 254 0 403 272 0 403 252 0 404 253 0 404 256 0 404 274 0 404 254 0 405 255 0
		 405 258 0 405 276 0 405 256 0 406 257 0 406 260 0 406 278 0 406 258 0 407 259 0 407 262 0
		 407 280 0 407 260 0 408 261 0 408 264 0 408 282 0 408 262 0 409 263 0 409 266 0 409 284 0
		 409 264 0 410 265 0 410 267 0 410 286 0 410 266 0 411 268 0 411 271 0 411 289 0 411 269 0
		 412 270 0 412 273 0 412 291 0 412 271 0 413 272 0 413 275 0 413 293 0 413 273 0 414 274 0
		 414 277 0 414 295 0 414 275 0 415 276 0 415 279 0 415 297 0 415 277 0 416 278 0 416 281 0
		 416 299 0 416 279 0 417 280 0 417 283 0 417 301 0 417 281 0 418 282 0 418 285 0 418 303 0
		 418 283 0 419 284 0 419 287 0 419 305 0 419 285 0 420 286 0 420 288 0 420 307 0 420 287 0
		 421 289 0 421 292 0 421 310 0 421 290 0 422 291 0 422 294 0 422 312 0 422 292 0 423 293 0
		 423 296 0 423 314 0 423 294 0 424 295 0 424 298 0 424 316 0 424 296 0 425 297 0 425 300 0
		 425 318 0 425 298 0 426 299 0 426 302 0 426 320 0 426 300 0 427 301 0 427 304 0 427 322 0
		 427 302 0 428 303 0 428 306 0 428 324 0 428 304 0 429 305 0 429 308 0 429 326 0 429 306 0
		 430 307 0 430 309 0 430 328 0 430 308 0 431 310 0 431 313 0 431 331 0 431 311 0 432 312 0
		 432 315 0 432 332 0 432 313 0 433 314 0 433 317 0 433 333 0 433 315 0 434 316 0 434 319 0
		 434 334 0 434 317 0 435 318 0 435 321 0 435 335 0 435 319 0 436 320 0 436 323 0 436 336 0
		 436 321 0 437 322 0 437 325 0 437 337 0 437 323 0 438 324 0 438 327 0;
	setAttr ".ed[830:995]" 438 338 0 438 325 0 439 326 0 439 329 0 439 339 0 439 327 0
		 440 328 0 440 330 0 440 340 0 440 329 0 441 449 0 449 442 0 443 450 0 450 444 0 445 451 0
		 451 446 0 447 452 0 452 448 0 441 453 0 453 443 0 442 454 0 454 444 0 443 455 0 455 445 0
		 444 456 0 456 446 0 445 457 0 457 447 0 446 458 0 458 448 0 447 459 0 459 441 0 448 460 0
		 460 442 0 461 449 0 461 454 0 461 450 0 461 453 0 462 450 0 462 456 0 462 451 0 462 455 0
		 463 451 0 463 458 0 463 452 0 463 457 0 464 460 0 464 458 0 464 456 0 464 454 0 465 459 0
		 465 453 0 465 455 0 465 457 0 466 474 0 474 467 0 468 475 0 475 469 0 470 476 0 476 471 0
		 472 477 0 477 473 0 466 478 0 478 468 0 467 479 0 479 469 0 468 480 0 480 470 0 469 481 0
		 481 471 0 470 482 0 482 472 0 471 483 0 483 473 0 472 484 0 484 466 0 473 485 0 485 467 0
		 486 474 0 486 479 0 486 475 0 486 478 0 487 475 0 487 481 0 487 476 0 487 480 0 488 476 0
		 488 483 0 488 477 0 488 482 0 489 485 0 489 483 0 489 481 0 489 479 0 490 484 0 490 478 0
		 490 480 0 490 482 0 491 499 0 499 492 0 493 500 0 500 494 0 495 501 0 501 496 0 497 502 0
		 502 498 0 491 503 0 503 493 0 492 504 0 504 494 0 493 505 0 505 495 0 494 506 0 506 496 0
		 495 507 0 507 497 0 496 508 0 508 498 0 497 509 0 509 491 0 498 510 0 510 492 0 511 499 0
		 511 504 0 511 500 0 511 503 0 512 500 0 512 506 0 512 501 0 512 505 0 513 501 0 513 508 0
		 513 502 0 513 507 0 514 510 0 514 508 0 514 506 0 514 504 0 515 509 0 515 503 0 515 505 0
		 515 507 0 516 517 0 518 519 0 520 521 0 522 523 0 516 518 0 517 519 0 518 520 0 519 521 0
		 520 522 0 521 523 0 522 516 0 523 517 0 524 525 0 526 527 0 528 529 0 530 531 0 524 526 0
		 525 527 0 526 528 0 527 529 0 528 530 0 529 531 0 530 524 0 531 525 0;
	setAttr ".ed[996:1161]" 532 533 0 534 535 0 536 537 0 538 539 0 532 534 0 533 535 0
		 534 536 0 535 537 0 536 538 0 537 539 0 538 532 0 539 533 0 540 541 0 542 543 0 544 545 0
		 546 547 0 540 542 0 541 543 0 542 544 0 543 545 0 544 546 0 545 547 0 546 540 0 547 541 0
		 548 549 0 550 551 0 552 553 0 554 555 0 548 550 0 549 551 0 550 552 0 551 553 0 552 554 0
		 553 555 0 554 548 0 555 549 0 556 557 0 558 559 0 560 561 0 562 563 0 556 558 0 557 559 0
		 558 560 0 559 561 0 560 562 0 561 563 0 562 556 0 563 557 0 564 565 0 566 567 0 568 569 0
		 570 571 0 564 566 0 565 567 0 566 568 0 567 569 0 568 570 0 569 571 0 570 564 0 571 565 0
		 572 573 0 574 575 0 576 577 0 578 579 0 572 574 0 573 575 0 574 576 0 575 577 0 576 578 0
		 577 579 0 578 572 0 579 573 0 580 588 0 588 581 0 582 589 0 589 583 0 584 590 0 590 585 0
		 586 591 0 591 587 0 580 592 0 592 582 0 581 593 0 593 583 0 582 594 0 594 584 0 583 595 0
		 595 585 0 584 596 0 596 586 0 585 597 0 597 587 0 586 598 0 598 580 0 587 599 0 599 581 0
		 600 588 0 600 593 0 600 589 0 600 592 0 601 589 0 601 595 0 601 590 0 601 594 0 602 590 0
		 602 597 0 602 591 0 602 596 0 603 599 0 603 597 0 603 595 0 603 593 0 604 598 0 604 592 0
		 604 594 0 604 596 0 605 613 0 613 606 0 607 614 0 614 608 0 609 615 0 615 610 0 611 616 0
		 616 612 0 605 617 0 617 607 0 606 618 0 618 608 0 607 619 0 619 609 0 608 620 0 620 610 0
		 609 621 0 621 611 0 610 622 0 622 612 0 611 623 0 623 605 0 612 624 0 624 606 0 625 613 0
		 625 618 0 625 614 0 625 617 0 626 614 0 626 620 0 626 615 0 626 619 0 627 615 0 627 622 0
		 627 616 0 627 621 0 628 624 0 628 622 0 628 620 0 628 618 0 629 623 0 629 617 0 629 619 0
		 629 621 0 630 638 0 638 631 0 632 639 0 639 633 0 634 640 0 640 635 0;
	setAttr ".ed[1162:1327]" 636 641 0 641 637 0 630 642 0 642 632 0 631 643 0 643 633 0
		 632 644 0 644 634 0 633 645 0 645 635 0 634 646 0 646 636 0 635 647 0 647 637 0 636 648 0
		 648 630 0 637 649 0 649 631 0 650 638 0 650 643 0 650 639 0 650 642 0 651 639 0 651 645 0
		 651 640 0 651 644 0 652 640 0 652 647 0 652 641 0 652 646 0 653 649 0 653 647 0 653 645 0
		 653 643 0 654 648 0 654 642 0 654 644 0 654 646 0 655 656 0 657 658 0 659 660 0 661 662 0
		 655 657 0 656 658 0 657 659 0 658 660 0 659 661 0 660 662 0 661 655 0 662 656 0 663 664 0
		 665 666 0 667 668 0 669 670 0 663 665 0 664 666 0 665 667 0 666 668 0 667 669 0 668 670 0
		 669 663 0 670 664 0 671 672 0 673 674 0 675 676 0 677 678 0 671 673 0 672 674 0 673 675 0
		 674 676 0 675 677 0 676 678 0 677 671 0 678 672 0 679 680 0 681 682 0 683 684 0 685 686 0
		 679 681 0 680 682 0 681 683 0 682 684 0 683 685 0 684 686 0 685 679 0 686 680 0 687 688 0
		 689 690 0 691 692 0 693 694 0 687 689 0 688 690 0 689 691 0 690 692 0 691 693 0 692 694 0
		 693 687 0 694 688 0 695 696 0 697 698 0 699 700 0 701 702 0 695 697 0 696 698 0 697 699 0
		 698 700 0 699 701 0 700 702 0 701 695 0 702 696 0 703 711 0 711 704 0 705 712 0 712 706 0
		 707 713 0 713 708 0 709 714 0 714 710 0 703 715 0 715 705 0 704 716 0 716 706 0 705 717 0
		 717 707 0 706 718 0 718 708 0 707 719 0 719 709 0 708 720 0 720 710 0 709 721 0 721 703 0
		 710 722 0 722 704 0 723 711 0 723 716 0 723 712 0 723 715 0 724 712 0 724 718 0 724 713 0
		 724 717 0 725 713 0 725 720 0 725 714 0 725 719 0 726 722 0 726 720 0 726 718 0 726 716 0
		 727 721 0 727 715 0 727 717 0 727 719 0 728 736 0 736 729 0 730 737 0 737 731 0 732 738 0
		 738 733 0 734 739 0 739 735 0 728 740 0 740 730 0 729 741 0 741 731 0;
	setAttr ".ed[1328:1493]" 730 742 0 742 732 0 731 743 0 743 733 0 732 744 0 744 734 0
		 733 745 0 745 735 0 734 746 0 746 728 0 735 747 0 747 729 0 748 736 0 748 741 0 748 737 0
		 748 740 0 749 737 0 749 743 0 749 738 0 749 742 0 750 738 0 750 745 0 750 739 0 750 744 0
		 751 747 0 751 745 0 751 743 0 751 741 0 752 746 0 752 740 0 752 742 0 752 744 0 753 754 0
		 755 756 0 757 758 0 759 760 0 753 755 0 754 756 0 755 757 0 756 758 0 757 759 0 758 760 0
		 759 753 0 760 754 0 761 762 0 763 764 0 765 766 0 767 768 0 761 763 0 762 764 0 763 765 0
		 764 766 0 765 767 0 766 768 0 767 761 0 768 762 0 769 770 0 771 772 0 773 774 0 775 776 0
		 769 771 0 770 772 0 771 773 0 772 774 0 773 775 0 774 776 0 775 769 0 776 770 0 777 785 0
		 785 778 0 779 786 0 786 780 0 781 787 0 787 782 0 783 788 0 788 784 0 777 789 0 789 779 0
		 778 790 0 790 780 0 779 791 0 791 781 0 780 792 0 792 782 0 781 793 0 793 783 0 782 794 0
		 794 784 0 783 795 0 795 777 0 784 796 0 796 778 0 797 785 0 797 790 0 797 786 0 797 789 0
		 798 786 0 798 792 0 798 787 0 798 791 0 799 787 0 799 794 0 799 788 0 799 793 0 800 796 0
		 800 794 0 800 792 0 800 790 0 801 795 0 801 789 0 801 791 0 801 793 0 802 803 0 804 805 0
		 806 807 0 808 809 0 802 804 0 803 805 0 804 806 0 805 807 0 806 808 0 807 809 0 808 802 0
		 809 803 0 810 811 0 812 813 0 814 815 0 816 817 0 810 812 0 811 813 0 812 814 0 813 815 0
		 814 816 0 815 817 0 816 810 0 817 811 0 818 819 0 820 821 0 822 823 0 824 825 0 818 820 0
		 819 821 0 820 822 0 821 823 0 822 824 0 823 825 0 824 818 0 825 819 0 826 827 0 828 829 0
		 830 831 0 832 833 0 826 828 0 827 829 0 828 830 0 829 831 0 830 832 0 831 833 0 832 826 0
		 833 827 0 834 835 0 836 837 0 838 839 0 840 841 0 834 836 0 835 837 0;
	setAttr ".ed[1494:1659]" 836 838 0 837 839 0 838 840 0 839 841 0 840 834 0 841 835 0
		 842 843 0 844 845 0 846 847 0 848 849 0 842 844 0 843 845 0 844 846 0 845 847 0 846 848 0
		 847 849 0 848 842 0 849 843 0 850 851 0 852 853 0 854 855 0 856 857 0 850 852 0 851 853 0
		 852 854 0 853 855 0 854 856 0 855 857 0 856 850 0 857 851 0 858 859 0 860 861 0 862 863 0
		 864 865 0 858 860 0 859 861 0 860 862 0 861 863 0 862 864 0 863 865 0 864 858 0 865 859 0
		 866 867 0 868 869 0 870 871 0 872 873 0 866 868 0 867 869 0 868 870 0 869 871 0 870 872 0
		 871 873 0 872 866 0 873 867 0 874 875 0 876 877 0 878 879 0 880 881 0 874 876 0 875 877 0
		 876 878 0 877 879 0 878 880 0 879 881 0 880 874 0 881 875 0 882 883 0 884 885 0 886 887 0
		 888 889 0 882 884 0 883 885 0 884 886 0 885 887 0 886 888 0 887 889 0 888 882 0 889 883 0
		 890 891 0 892 893 0 894 895 0 896 897 0 890 892 0 891 893 0 892 894 0 893 895 0 894 896 0
		 895 897 0 896 890 0 897 891 0 898 906 0 906 899 0 900 907 0 907 901 0 902 908 0 908 903 0
		 904 909 0 909 905 0 898 910 0 910 900 0 899 911 0 911 901 0 900 912 0 912 902 0 901 913 0
		 913 903 0 902 914 0 914 904 0 903 915 0 915 905 0 904 916 0 916 898 0 905 917 0 917 899 0
		 918 906 0 918 911 0 918 907 0 918 910 0 919 907 0 919 913 0 919 908 0 919 912 0 920 908 0
		 920 915 0 920 909 0 920 914 0 921 917 0 921 915 0 921 913 0 921 911 0 922 916 0 922 910 0
		 922 912 0 922 914 0 923 931 0 931 924 0 925 932 0 932 926 0 927 933 0 933 928 0 929 934 0
		 934 930 0 923 935 0 935 925 0 924 936 0 936 926 0 925 937 0 937 927 0 926 938 0 938 928 0
		 927 939 0 939 929 0 928 940 0 940 930 0 929 941 0 941 923 0 930 942 0 942 924 0 943 931 0
		 943 936 0 943 932 0 943 935 0 944 932 0 944 938 0 944 933 0 944 937 0;
	setAttr ".ed[1660:1811]" 945 933 0 945 940 0 945 934 0 945 939 0 946 942 0 946 940 0
		 946 938 0 946 936 0 947 941 0 947 935 0 947 937 0 947 939 0 948 956 0 956 949 0 950 957 0
		 957 951 0 952 958 0 958 953 0 954 959 0 959 955 0 948 960 0 960 950 0 949 961 0 961 951 0
		 950 962 0 962 952 0 951 963 0 963 953 0 952 964 0 964 954 0 953 965 0 965 955 0 954 966 0
		 966 948 0 955 967 0 967 949 0 968 956 0 968 961 0 968 957 0 968 960 0 969 957 0 969 963 0
		 969 958 0 969 962 0 970 958 0 970 965 0 970 959 0 970 964 0 971 967 0 971 965 0 971 963 0
		 971 961 0 972 966 0 972 960 0 972 962 0 972 964 0 973 974 0 975 976 0 977 978 0 979 980 0
		 973 975 0 974 976 0 975 977 0 976 978 0 977 979 0 978 980 0 979 973 0 980 974 0 981 982 0
		 983 984 0 985 986 0 987 988 0 981 983 0 982 984 0 983 985 0 984 986 0 985 987 0 986 988 0
		 987 981 0 988 982 0 989 990 0 991 992 0 993 994 0 995 996 0 989 991 0 990 992 0 991 993 0
		 992 994 0 993 995 0 994 996 0 995 989 0 996 990 0 997 998 0 999 1000 0 1001 1002 0
		 1003 1004 0 997 999 0 998 1000 0 999 1001 0 1000 1002 0 1001 1003 0 1002 1004 0 1003 997 0
		 1004 998 0 1005 1006 0 1007 1008 0 1009 1010 0 1011 1012 0 1005 1007 0 1006 1008 0
		 1007 1009 0 1008 1010 0 1009 1011 0 1010 1012 0 1011 1005 0 1012 1006 0 1013 1014 0
		 1015 1016 0 1017 1018 0 1019 1020 0 1013 1015 0 1014 1016 0 1015 1017 0 1016 1018 0
		 1017 1019 0 1018 1020 0 1019 1013 0 1020 1014 0 1021 1022 0 1023 1024 0 1025 1026 0
		 1027 1028 0 1021 1023 0 1022 1024 0 1023 1025 0 1024 1026 0 1025 1027 0 1026 1028 0
		 1027 1021 0 1028 1022 0 1029 1030 0 1031 1032 0 1033 1034 0 1035 1036 0 1029 1031 0
		 1030 1032 0 1031 1033 0 1032 1034 0 1033 1035 0 1034 1036 0 1035 1029 0 1036 1030 0;
	setAttr -s 825 -ch 3300 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 1 6 -442 440
		mu 0 4 221 1 222 121
		f 4 7 -44 -443 441
		mu 0 4 222 12 223 121
		f 4 -43 -4 -444 442
		mu 0 4 223 11 224 121
		f 4 -3 0 -441 443
		mu 0 4 224 0 221 121
		f 4 5 10 -446 444
		mu 0 4 225 2 226 122
		f 4 11 -48 -447 445
		mu 0 4 226 13 227 122
		f 4 -47 -8 -448 446
		mu 0 4 227 12 222 122
		f 4 -7 4 -445 447
		mu 0 4 222 1 225 122
		f 4 9 14 -450 448
		mu 0 4 228 3 229 123
		f 4 15 -52 -451 449
		mu 0 4 229 14 230 123
		f 4 -51 -12 -452 450
		mu 0 4 230 13 226 123
		f 4 -11 8 -449 451
		mu 0 4 226 2 228 123
		f 4 13 18 -454 452
		mu 0 4 231 4 232 124
		f 4 19 -56 -455 453
		mu 0 4 232 15 233 124
		f 4 -55 -16 -456 454
		mu 0 4 233 14 229 124
		f 4 -15 12 -453 455
		mu 0 4 229 3 231 124
		f 4 17 22 -458 456
		mu 0 4 234 5 235 125
		f 4 23 -60 -459 457
		mu 0 4 235 16 236 125
		f 4 -59 -20 -460 458
		mu 0 4 236 15 232 125
		f 4 -19 16 -457 459
		mu 0 4 232 4 234 125
		f 4 21 26 -462 460
		mu 0 4 237 6 238 126
		f 4 27 -64 -463 461
		mu 0 4 238 17 239 126
		f 4 -63 -24 -464 462
		mu 0 4 239 16 235 126
		f 4 -23 20 -461 463
		mu 0 4 235 5 237 126
		f 4 25 30 -466 464
		mu 0 4 240 7 241 127
		f 4 31 -68 -467 465
		mu 0 4 241 18 242 127
		f 4 -67 -28 -468 466
		mu 0 4 242 17 238 127
		f 4 -27 24 -465 467
		mu 0 4 238 6 240 127
		f 4 29 34 -470 468
		mu 0 4 243 8 244 128
		f 4 35 -72 -471 469
		mu 0 4 244 19 245 128
		f 4 -71 -32 -472 470
		mu 0 4 245 18 241 128
		f 4 -31 28 -469 471
		mu 0 4 241 7 243 128
		f 4 33 38 -474 472
		mu 0 4 246 9 247 129
		f 4 39 -76 -475 473
		mu 0 4 247 20 248 129
		f 4 -75 -36 -476 474
		mu 0 4 248 19 244 129
		f 4 -35 32 -473 475
		mu 0 4 244 8 246 129
		f 4 37 40 -478 476
		mu 0 4 249 10 250 130
		f 4 41 -80 -479 477
		mu 0 4 250 21 251 130
		f 4 -79 -40 -480 478
		mu 0 4 251 20 247 130
		f 4 -39 36 -477 479
		mu 0 4 247 9 249 130
		f 4 43 48 -482 480
		mu 0 4 223 12 252 131
		f 4 49 -86 -483 481
		mu 0 4 252 23 253 131
		f 4 -85 -46 -484 482
		mu 0 4 253 22 254 131
		f 4 -45 42 -481 483
		mu 0 4 254 11 223 131
		f 4 47 52 -486 484
		mu 0 4 227 13 255 132
		f 4 53 -90 -487 485
		mu 0 4 255 24 256 132
		f 4 -89 -50 -488 486
		mu 0 4 256 23 252 132
		f 4 -49 46 -485 487
		mu 0 4 252 12 227 132
		f 4 51 56 -490 488
		mu 0 4 230 14 257 133
		f 4 57 -94 -491 489
		mu 0 4 257 25 258 133
		f 4 -93 -54 -492 490
		mu 0 4 258 24 255 133
		f 4 -53 50 -489 491
		mu 0 4 255 13 230 133
		f 4 55 60 -494 492
		mu 0 4 233 15 259 134
		f 4 61 -98 -495 493
		mu 0 4 259 26 260 134
		f 4 -97 -58 -496 494
		mu 0 4 260 25 257 134
		f 4 -57 54 -493 495
		mu 0 4 257 14 233 134
		f 4 59 64 -498 496
		mu 0 4 236 16 261 135
		f 4 65 -102 -499 497
		mu 0 4 261 27 262 135
		f 4 -101 -62 -500 498
		mu 0 4 262 26 259 135
		f 4 -61 58 -497 499
		mu 0 4 259 15 236 135
		f 4 63 68 -502 500
		mu 0 4 239 17 263 136
		f 4 69 -106 -503 501
		mu 0 4 263 28 264 136
		f 4 -105 -66 -504 502
		mu 0 4 264 27 261 136
		f 4 -65 62 -501 503
		mu 0 4 261 16 239 136
		f 4 67 72 -506 504
		mu 0 4 242 18 265 137
		f 4 73 -110 -507 505
		mu 0 4 265 29 266 137
		f 4 -109 -70 -508 506
		mu 0 4 266 28 263 137
		f 4 -69 66 -505 507
		mu 0 4 263 17 242 137
		f 4 71 76 -510 508
		mu 0 4 245 19 267 138
		f 4 77 -114 -511 509
		mu 0 4 267 30 268 138
		f 4 -113 -74 -512 510
		mu 0 4 268 29 265 138
		f 4 -73 70 -509 511
		mu 0 4 265 18 245 138
		f 4 75 80 -514 512
		mu 0 4 248 20 269 139
		f 4 81 -118 -515 513
		mu 0 4 269 31 270 139
		f 4 -117 -78 -516 514
		mu 0 4 270 30 267 139
		f 4 -77 74 -513 515
		mu 0 4 267 19 248 139
		f 4 79 82 -518 516
		mu 0 4 251 21 271 140
		f 4 83 -122 -519 517
		mu 0 4 271 32 272 140
		f 4 -121 -82 -520 518
		mu 0 4 272 31 269 140
		f 4 -81 78 -517 519
		mu 0 4 269 20 251 140
		f 4 85 90 -522 520
		mu 0 4 253 23 273 141
		f 4 91 -128 -523 521
		mu 0 4 273 34 274 141
		f 4 -127 -88 -524 522
		mu 0 4 274 33 275 141
		f 4 -87 84 -521 523
		mu 0 4 275 22 253 141
		f 4 89 94 -526 524
		mu 0 4 256 24 276 142
		f 4 95 -132 -527 525
		mu 0 4 276 35 277 142
		f 4 -131 -92 -528 526
		mu 0 4 277 34 273 142
		f 4 -91 88 -525 527
		mu 0 4 273 23 256 142
		f 4 93 98 -530 528
		mu 0 4 258 25 278 143
		f 4 99 -136 -531 529
		mu 0 4 278 36 279 143
		f 4 -135 -96 -532 530
		mu 0 4 279 35 276 143
		f 4 -95 92 -529 531
		mu 0 4 276 24 258 143
		f 4 97 102 -534 532
		mu 0 4 260 26 280 144
		f 4 103 -140 -535 533
		mu 0 4 280 37 281 144
		f 4 -139 -100 -536 534
		mu 0 4 281 36 278 144
		f 4 -99 96 -533 535
		mu 0 4 278 25 260 144
		f 4 101 106 -538 536
		mu 0 4 262 27 282 145
		f 4 107 -144 -539 537
		mu 0 4 282 38 283 145
		f 4 -143 -104 -540 538
		mu 0 4 283 37 280 145
		f 4 -103 100 -537 539
		mu 0 4 280 26 262 145
		f 4 105 110 -542 540
		mu 0 4 264 28 284 146
		f 4 111 -148 -543 541
		mu 0 4 284 39 285 146
		f 4 -147 -108 -544 542
		mu 0 4 285 38 282 146
		f 4 -107 104 -541 543
		mu 0 4 282 27 264 146
		f 4 109 114 -546 544
		mu 0 4 266 29 286 147
		f 4 115 -152 -547 545
		mu 0 4 286 40 287 147
		f 4 -151 -112 -548 546
		mu 0 4 287 39 284 147
		f 4 -111 108 -545 547
		mu 0 4 284 28 266 147
		f 4 113 118 -550 548
		mu 0 4 268 30 288 148
		f 4 119 -156 -551 549
		mu 0 4 288 41 289 148
		f 4 -155 -116 -552 550
		mu 0 4 289 40 286 148
		f 4 -115 112 -549 551
		mu 0 4 286 29 268 148
		f 4 117 122 -554 552
		mu 0 4 270 31 290 149
		f 4 123 -160 -555 553
		mu 0 4 290 42 291 149
		f 4 -159 -120 -556 554
		mu 0 4 291 41 288 149
		f 4 -119 116 -553 555
		mu 0 4 288 30 270 149
		f 4 121 124 -558 556
		mu 0 4 272 32 292 150
		f 4 125 -164 -559 557
		mu 0 4 292 43 293 150
		f 4 -163 -124 -560 558
		mu 0 4 293 42 290 150
		f 4 -123 120 -557 559
		mu 0 4 290 31 272 150
		f 4 127 132 -562 560
		mu 0 4 274 34 294 151
		f 4 133 -170 -563 561
		mu 0 4 294 45 295 151
		f 4 -169 -130 -564 562
		mu 0 4 295 44 296 151
		f 4 -129 126 -561 563
		mu 0 4 296 33 274 151
		f 4 131 136 -566 564
		mu 0 4 277 35 297 152
		f 4 137 -174 -567 565
		mu 0 4 297 46 298 152
		f 4 -173 -134 -568 566
		mu 0 4 298 45 294 152
		f 4 -133 130 -565 567
		mu 0 4 294 34 277 152
		f 4 135 140 -570 568
		mu 0 4 279 36 299 153
		f 4 141 -178 -571 569
		mu 0 4 299 47 300 153
		f 4 -177 -138 -572 570
		mu 0 4 300 46 297 153
		f 4 -137 134 -569 571
		mu 0 4 297 35 279 153
		f 4 139 144 -574 572
		mu 0 4 281 37 301 154
		f 4 145 -182 -575 573
		mu 0 4 301 48 302 154
		f 4 -181 -142 -576 574
		mu 0 4 302 47 299 154
		f 4 -141 138 -573 575
		mu 0 4 299 36 281 154
		f 4 143 148 -578 576
		mu 0 4 283 38 303 155
		f 4 149 -186 -579 577
		mu 0 4 303 49 304 155
		f 4 -185 -146 -580 578
		mu 0 4 304 48 301 155
		f 4 -145 142 -577 579
		mu 0 4 301 37 283 155
		f 4 147 152 -582 580
		mu 0 4 285 39 305 156
		f 4 153 -190 -583 581
		mu 0 4 305 50 306 156
		f 4 -189 -150 -584 582
		mu 0 4 306 49 303 156
		f 4 -149 146 -581 583
		mu 0 4 303 38 285 156
		f 4 151 156 -586 584
		mu 0 4 287 40 307 157
		f 4 157 -194 -587 585
		mu 0 4 307 51 308 157
		f 4 -193 -154 -588 586
		mu 0 4 308 50 305 157
		f 4 -153 150 -585 587
		mu 0 4 305 39 287 157
		f 4 155 160 -590 588
		mu 0 4 289 41 309 158
		f 4 161 -198 -591 589
		mu 0 4 309 52 310 158
		f 4 -197 -158 -592 590
		mu 0 4 310 51 307 158
		f 4 -157 154 -589 591
		mu 0 4 307 40 289 158
		f 4 159 164 -594 592
		mu 0 4 291 42 311 159
		f 4 165 -202 -595 593
		mu 0 4 311 53 312 159
		f 4 -201 -162 -596 594
		mu 0 4 312 52 309 159
		f 4 -161 158 -593 595
		mu 0 4 309 41 291 159
		f 4 163 166 -598 596
		mu 0 4 293 43 313 160
		f 4 167 -206 -599 597
		mu 0 4 313 54 314 160
		f 4 -205 -166 -600 598
		mu 0 4 314 53 311 160
		f 4 -165 162 -597 599
		mu 0 4 311 42 293 160
		f 4 169 174 -602 600
		mu 0 4 295 45 315 161
		f 4 175 -212 -603 601
		mu 0 4 315 56 316 161
		f 4 -211 -172 -604 602
		mu 0 4 316 55 317 161
		f 4 -171 168 -601 603
		mu 0 4 317 44 295 161
		f 4 173 178 -606 604
		mu 0 4 298 46 318 162
		f 4 179 -216 -607 605
		mu 0 4 318 57 319 162
		f 4 -215 -176 -608 606
		mu 0 4 319 56 315 162
		f 4 -175 172 -605 607
		mu 0 4 315 45 298 162
		f 4 177 182 -610 608
		mu 0 4 300 47 320 163
		f 4 183 -220 -611 609
		mu 0 4 320 58 321 163
		f 4 -219 -180 -612 610
		mu 0 4 321 57 318 163
		f 4 -179 176 -609 611
		mu 0 4 318 46 300 163
		f 4 181 186 -614 612
		mu 0 4 302 48 322 164
		f 4 187 -224 -615 613
		mu 0 4 322 59 323 164
		f 4 -223 -184 -616 614
		mu 0 4 323 58 320 164
		f 4 -183 180 -613 615
		mu 0 4 320 47 302 164
		f 4 185 190 -618 616
		mu 0 4 304 49 324 165
		f 4 191 -228 -619 617
		mu 0 4 324 60 325 165
		f 4 -227 -188 -620 618
		mu 0 4 325 59 322 165
		f 4 -187 184 -617 619
		mu 0 4 322 48 304 165
		f 4 189 194 -622 620
		mu 0 4 306 50 326 166
		f 4 195 -232 -623 621
		mu 0 4 326 61 327 166
		f 4 -231 -192 -624 622
		mu 0 4 327 60 324 166
		f 4 -191 188 -621 623
		mu 0 4 324 49 306 166
		f 4 193 198 -626 624
		mu 0 4 308 51 328 167
		f 4 199 -236 -627 625
		mu 0 4 328 62 329 167
		f 4 -235 -196 -628 626
		mu 0 4 329 61 326 167
		f 4 -195 192 -625 627
		mu 0 4 326 50 308 167
		f 4 197 202 -630 628
		mu 0 4 310 52 330 168
		f 4 203 -240 -631 629
		mu 0 4 330 63 331 168
		f 4 -239 -200 -632 630
		mu 0 4 331 62 328 168
		f 4 -199 196 -629 631
		mu 0 4 328 51 310 168
		f 4 201 206 -634 632
		mu 0 4 312 53 332 169
		f 4 207 -244 -635 633
		mu 0 4 332 64 333 169
		f 4 -243 -204 -636 634
		mu 0 4 333 63 330 169
		f 4 -203 200 -633 635
		mu 0 4 330 52 312 169
		f 4 205 208 -638 636
		mu 0 4 314 54 334 170
		f 4 209 -248 -639 637
		mu 0 4 334 65 335 170
		f 4 -247 -208 -640 638
		mu 0 4 335 64 332 170
		f 4 -207 204 -637 639
		mu 0 4 332 53 314 170
		f 4 211 216 -642 640
		mu 0 4 316 56 336 171
		f 4 217 -254 -643 641
		mu 0 4 336 67 337 171
		f 4 -253 -214 -644 642
		mu 0 4 337 66 338 171
		f 4 -213 210 -641 643
		mu 0 4 338 55 316 171
		f 4 215 220 -646 644
		mu 0 4 319 57 339 172
		f 4 221 -258 -647 645
		mu 0 4 339 68 340 172
		f 4 -257 -218 -648 646
		mu 0 4 340 67 336 172
		f 4 -217 214 -645 647
		mu 0 4 336 56 319 172
		f 4 219 224 -650 648
		mu 0 4 321 58 341 173
		f 4 225 -262 -651 649
		mu 0 4 341 69 342 173
		f 4 -261 -222 -652 650
		mu 0 4 342 68 339 173
		f 4 -221 218 -649 651
		mu 0 4 339 57 321 173
		f 4 223 228 -654 652
		mu 0 4 323 59 343 174
		f 4 229 -266 -655 653
		mu 0 4 343 70 344 174
		f 4 -265 -226 -656 654
		mu 0 4 344 69 341 174
		f 4 -225 222 -653 655
		mu 0 4 341 58 323 174
		f 4 227 232 -658 656
		mu 0 4 325 60 345 175
		f 4 233 -270 -659 657
		mu 0 4 345 71 346 175
		f 4 -269 -230 -660 658
		mu 0 4 346 70 343 175
		f 4 -229 226 -657 659
		mu 0 4 343 59 325 175
		f 4 231 236 -662 660
		mu 0 4 327 61 347 176
		f 4 237 -274 -663 661
		mu 0 4 347 72 348 176
		f 4 -273 -234 -664 662
		mu 0 4 348 71 345 176
		f 4 -233 230 -661 663
		mu 0 4 345 60 327 176
		f 4 235 240 -666 664
		mu 0 4 329 62 349 177
		f 4 241 -278 -667 665
		mu 0 4 349 73 350 177
		f 4 -277 -238 -668 666
		mu 0 4 350 72 347 177
		f 4 -237 234 -665 667
		mu 0 4 347 61 329 177
		f 4 239 244 -670 668
		mu 0 4 331 63 351 178
		f 4 245 -282 -671 669
		mu 0 4 351 74 352 178
		f 4 -281 -242 -672 670
		mu 0 4 352 73 349 178
		f 4 -241 238 -669 671
		mu 0 4 349 62 331 178
		f 4 243 248 -674 672
		mu 0 4 333 64 353 179
		f 4 249 -286 -675 673
		mu 0 4 353 75 354 179
		f 4 -285 -246 -676 674
		mu 0 4 354 74 351 179
		f 4 -245 242 -673 675
		mu 0 4 351 63 333 179
		f 4 247 250 -678 676
		mu 0 4 335 65 355 180
		f 4 251 -290 -679 677
		mu 0 4 355 76 356 180
		f 4 -289 -250 -680 678
		mu 0 4 356 75 353 180
		f 4 -249 246 -677 679
		mu 0 4 353 64 335 180
		f 4 253 258 -682 680
		mu 0 4 337 67 357 181
		f 4 259 -296 -683 681
		mu 0 4 357 78 358 181
		f 4 -295 -256 -684 682
		mu 0 4 358 77 359 181
		f 4 -255 252 -681 683
		mu 0 4 359 66 337 181
		f 4 257 262 -686 684
		mu 0 4 340 68 360 182
		f 4 263 -300 -687 685
		mu 0 4 360 79 361 182
		f 4 -299 -260 -688 686
		mu 0 4 361 78 357 182
		f 4 -259 256 -685 687
		mu 0 4 357 67 340 182
		f 4 261 266 -690 688
		mu 0 4 342 69 362 183
		f 4 267 -304 -691 689
		mu 0 4 362 80 363 183
		f 4 -303 -264 -692 690
		mu 0 4 363 79 360 183
		f 4 -263 260 -689 691
		mu 0 4 360 68 342 183
		f 4 265 270 -694 692
		mu 0 4 344 70 364 184
		f 4 271 -308 -695 693
		mu 0 4 364 81 365 184
		f 4 -307 -268 -696 694
		mu 0 4 365 80 362 184
		f 4 -267 264 -693 695
		mu 0 4 362 69 344 184
		f 4 269 274 -698 696
		mu 0 4 346 71 366 185
		f 4 275 -312 -699 697
		mu 0 4 366 82 367 185
		f 4 -311 -272 -700 698
		mu 0 4 367 81 364 185
		f 4 -271 268 -697 699
		mu 0 4 364 70 346 185
		f 4 273 278 -702 700
		mu 0 4 348 72 368 186
		f 4 279 -316 -703 701
		mu 0 4 368 83 369 186
		f 4 -315 -276 -704 702
		mu 0 4 369 82 366 186
		f 4 -275 272 -701 703
		mu 0 4 366 71 348 186
		f 4 277 282 -706 704
		mu 0 4 350 73 370 187
		f 4 283 -320 -707 705
		mu 0 4 370 84 371 187
		f 4 -319 -280 -708 706
		mu 0 4 371 83 368 187
		f 4 -279 276 -705 707
		mu 0 4 368 72 350 187
		f 4 281 286 -710 708
		mu 0 4 352 74 372 188
		f 4 287 -324 -711 709
		mu 0 4 372 85 373 188
		f 4 -323 -284 -712 710
		mu 0 4 373 84 370 188
		f 4 -283 280 -709 711
		mu 0 4 370 73 352 188
		f 4 285 290 -714 712
		mu 0 4 354 75 374 189
		f 4 291 -328 -715 713
		mu 0 4 374 86 375 189
		f 4 -327 -288 -716 714
		mu 0 4 375 85 372 189
		f 4 -287 284 -713 715
		mu 0 4 372 74 354 189
		f 4 289 292 -718 716
		mu 0 4 356 76 376 190
		f 4 293 -332 -719 717
		mu 0 4 376 87 377 190
		f 4 -331 -292 -720 718
		mu 0 4 377 86 374 190
		f 4 -291 288 -717 719
		mu 0 4 374 75 356 190
		f 4 295 300 -722 720
		mu 0 4 358 78 378 191
		f 4 301 -338 -723 721
		mu 0 4 378 89 379 191
		f 4 -337 -298 -724 722
		mu 0 4 379 88 380 191
		f 4 -297 294 -721 723
		mu 0 4 380 77 358 191
		f 4 299 304 -726 724
		mu 0 4 361 79 381 192
		f 4 305 -342 -727 725
		mu 0 4 381 90 382 192
		f 4 -341 -302 -728 726
		mu 0 4 382 89 378 192
		f 4 -301 298 -725 727
		mu 0 4 378 78 361 192
		f 4 303 308 -730 728
		mu 0 4 363 80 383 193
		f 4 309 -346 -731 729
		mu 0 4 383 91 384 193
		f 4 -345 -306 -732 730
		mu 0 4 384 90 381 193
		f 4 -305 302 -729 731
		mu 0 4 381 79 363 193
		f 4 307 312 -734 732
		mu 0 4 365 81 385 194
		f 4 313 -350 -735 733
		mu 0 4 385 92 386 194
		f 4 -349 -310 -736 734
		mu 0 4 386 91 383 194
		f 4 -309 306 -733 735
		mu 0 4 383 80 365 194
		f 4 311 316 -738 736
		mu 0 4 367 82 387 195
		f 4 317 -354 -739 737
		mu 0 4 387 93 388 195
		f 4 -353 -314 -740 738
		mu 0 4 388 92 385 195
		f 4 -313 310 -737 739
		mu 0 4 385 81 367 195
		f 4 315 320 -742 740
		mu 0 4 369 83 389 196
		f 4 321 -358 -743 741
		mu 0 4 389 94 390 196
		f 4 -357 -318 -744 742
		mu 0 4 390 93 387 196
		f 4 -317 314 -741 743
		mu 0 4 387 82 369 196
		f 4 319 324 -746 744
		mu 0 4 371 84 391 197
		f 4 325 -362 -747 745
		mu 0 4 391 95 392 197
		f 4 -361 -322 -748 746
		mu 0 4 392 94 389 197
		f 4 -321 318 -745 747
		mu 0 4 389 83 371 197
		f 4 323 328 -750 748
		mu 0 4 373 85 393 198
		f 4 329 -366 -751 749
		mu 0 4 393 96 394 198
		f 4 -365 -326 -752 750
		mu 0 4 394 95 391 198
		f 4 -325 322 -749 751
		mu 0 4 391 84 373 198
		f 4 327 332 -754 752
		mu 0 4 375 86 395 199
		f 4 333 -370 -755 753
		mu 0 4 395 97 396 199
		f 4 -369 -330 -756 754
		mu 0 4 396 96 393 199
		f 4 -329 326 -753 755
		mu 0 4 393 85 375 199
		f 4 331 334 -758 756
		mu 0 4 377 87 397 200
		f 4 335 -374 -759 757
		mu 0 4 397 98 398 200
		f 4 -373 -334 -760 758
		mu 0 4 398 97 395 200
		f 4 -333 330 -757 759
		mu 0 4 395 86 377 200
		f 4 337 342 -762 760
		mu 0 4 379 89 399 201
		f 4 343 -380 -763 761
		mu 0 4 399 100 400 201
		f 4 -379 -340 -764 762
		mu 0 4 400 99 401 201
		f 4 -339 336 -761 763
		mu 0 4 401 88 379 201
		f 4 341 346 -766 764
		mu 0 4 382 90 402 202
		f 4 347 -384 -767 765
		mu 0 4 402 101 403 202
		f 4 -383 -344 -768 766
		mu 0 4 403 100 399 202
		f 4 -343 340 -765 767
		mu 0 4 399 89 382 202
		f 4 345 350 -770 768
		mu 0 4 384 91 404 203
		f 4 351 -388 -771 769
		mu 0 4 404 102 405 203
		f 4 -387 -348 -772 770
		mu 0 4 405 101 402 203
		f 4 -347 344 -769 771
		mu 0 4 402 90 384 203
		f 4 349 354 -774 772
		mu 0 4 386 92 406 204
		f 4 355 -392 -775 773
		mu 0 4 406 103 407 204
		f 4 -391 -352 -776 774
		mu 0 4 407 102 404 204
		f 4 -351 348 -773 775
		mu 0 4 404 91 386 204
		f 4 353 358 -778 776
		mu 0 4 388 93 408 205
		f 4 359 -396 -779 777
		mu 0 4 408 104 409 205
		f 4 -395 -356 -780 778
		mu 0 4 409 103 406 205
		f 4 -355 352 -777 779
		mu 0 4 406 92 388 205
		f 4 357 362 -782 780
		mu 0 4 390 94 410 206
		f 4 363 -400 -783 781
		mu 0 4 410 105 411 206
		f 4 -399 -360 -784 782
		mu 0 4 411 104 408 206
		f 4 -359 356 -781 783
		mu 0 4 408 93 390 206
		f 4 361 366 -786 784
		mu 0 4 392 95 412 207
		f 4 367 -404 -787 785
		mu 0 4 412 106 413 207
		f 4 -403 -364 -788 786
		mu 0 4 413 105 410 207
		f 4 -363 360 -785 787
		mu 0 4 410 94 392 207
		f 4 365 370 -790 788
		mu 0 4 394 96 414 208
		f 4 371 -408 -791 789
		mu 0 4 414 107 415 208
		f 4 -407 -368 -792 790
		mu 0 4 415 106 412 208
		f 4 -367 364 -789 791
		mu 0 4 412 95 394 208
		f 4 369 374 -794 792
		mu 0 4 396 97 416 209
		f 4 375 -412 -795 793
		mu 0 4 416 108 417 209
		f 4 -411 -372 -796 794
		mu 0 4 417 107 414 209
		f 4 -371 368 -793 795
		mu 0 4 414 96 396 209
		f 4 373 376 -798 796
		mu 0 4 398 98 418 210
		f 4 377 -416 -799 797
		mu 0 4 418 109 419 210
		f 4 -415 -376 -800 798
		mu 0 4 419 108 416 210
		f 4 -375 372 -797 799
		mu 0 4 416 97 398 210
		f 4 379 384 -802 800
		mu 0 4 400 100 420 211
		f 4 385 -422 -803 801
		mu 0 4 420 111 421 211
		f 4 -421 -382 -804 802
		mu 0 4 421 110 422 211
		f 4 -381 378 -801 803
		mu 0 4 422 99 400 211
		f 4 383 388 -806 804
		mu 0 4 403 101 423 212
		f 4 389 -424 -807 805
		mu 0 4 423 112 424 212
		f 4 -423 -386 -808 806
		mu 0 4 424 111 420 212
		f 4 -385 382 -805 807
		mu 0 4 420 100 403 212
		f 4 387 392 -810 808
		mu 0 4 405 102 425 213
		f 4 393 -426 -811 809
		mu 0 4 425 113 426 213
		f 4 -425 -390 -812 810
		mu 0 4 426 112 423 213
		f 4 -389 386 -809 811
		mu 0 4 423 101 405 213
		f 4 391 396 -814 812
		mu 0 4 407 103 427 214
		f 4 397 -428 -815 813
		mu 0 4 427 114 428 214
		f 4 -427 -394 -816 814
		mu 0 4 428 113 425 214
		f 4 -393 390 -813 815
		mu 0 4 425 102 407 214
		f 4 395 400 -818 816
		mu 0 4 409 104 429 215
		f 4 401 -430 -819 817
		mu 0 4 429 115 430 215
		f 4 -429 -398 -820 818
		mu 0 4 430 114 427 215
		f 4 -397 394 -817 819
		mu 0 4 427 103 409 215
		f 4 399 404 -822 820
		mu 0 4 411 105 431 216
		f 4 405 -432 -823 821
		mu 0 4 431 116 432 216
		f 4 -431 -402 -824 822
		mu 0 4 432 115 429 216
		f 4 -401 398 -821 823
		mu 0 4 429 104 411 216
		f 4 403 408 -826 824
		mu 0 4 413 106 433 217
		f 4 409 -434 -827 825
		mu 0 4 433 117 434 217
		f 4 -433 -406 -828 826
		mu 0 4 434 116 431 217
		f 4 -405 402 -825 827
		mu 0 4 431 105 413 217
		f 4 407 412 -830 828
		mu 0 4 415 107 435 218
		f 4 413 -436 -831 829
		mu 0 4 435 118 436 218
		f 4 -435 -410 -832 830
		mu 0 4 436 117 433 218
		f 4 -409 406 -829 831
		mu 0 4 433 106 415 218
		f 4 411 416 -834 832
		mu 0 4 417 108 437 219
		f 4 417 -438 -835 833
		mu 0 4 437 119 438 219
		f 4 -437 -414 -836 834
		mu 0 4 438 118 435 219
		f 4 -413 410 -833 835
		mu 0 4 435 107 417 219
		f 4 415 418 -838 836
		mu 0 4 419 109 439 220
		f 4 419 -440 -839 837
		mu 0 4 439 120 440 220
		f 4 -439 -418 -840 838
		mu 0 4 440 119 437 220
		f 4 -417 414 -837 839
		mu 0 4 437 108 419 220
		f 4 841 850 -866 864
		mu 0 4 441 442 443 444
		f 4 851 -844 -867 865
		mu 0 4 443 445 446 444
		f 4 -843 -850 -868 866
		mu 0 4 446 447 448 444
		f 4 -849 840 -865 867
		mu 0 4 448 449 441 444
		f 4 843 854 -870 868
		mu 0 4 446 445 450 451
		f 4 855 -846 -871 869
		mu 0 4 450 452 453 451
		f 4 -845 -854 -872 870
		mu 0 4 453 454 455 451
		f 4 -853 842 -869 871
		mu 0 4 455 447 446 451
		f 4 845 858 -874 872
		mu 0 4 453 452 456 457
		f 4 859 -848 -875 873
		mu 0 4 456 458 459 457
		f 4 -847 -858 -876 874
		mu 0 4 459 460 461 457
		f 4 -857 844 -873 875
		mu 0 4 461 454 453 457
		f 4 -863 -860 -878 876
		mu 0 4 462 463 464 465
		f 4 -859 -856 -879 877
		mu 0 4 464 466 467 465
		f 4 -855 -852 -880 878
		mu 0 4 467 445 443 465
		f 4 -851 -864 -877 879
		mu 0 4 443 442 462 465
		f 4 861 848 -882 880
		mu 0 4 468 449 448 469
		f 4 849 852 -883 881
		mu 0 4 448 447 470 469
		f 4 853 856 -884 882
		mu 0 4 470 471 472 469
		f 4 857 860 -881 883
		mu 0 4 472 473 468 469
		f 4 885 894 -910 908
		mu 0 4 474 475 476 477
		f 4 895 -888 -911 909
		mu 0 4 476 478 479 477
		f 4 -887 -894 -912 910
		mu 0 4 479 480 481 477
		f 4 -893 884 -909 911
		mu 0 4 481 482 474 477
		f 4 887 898 -914 912
		mu 0 4 479 478 483 484
		f 4 899 -890 -915 913
		mu 0 4 483 485 486 484
		f 4 -889 -898 -916 914
		mu 0 4 486 487 488 484
		f 4 -897 886 -913 915
		mu 0 4 488 480 479 484
		f 4 889 902 -918 916
		mu 0 4 486 485 489 490
		f 4 903 -892 -919 917
		mu 0 4 489 491 492 490
		f 4 -891 -902 -920 918
		mu 0 4 492 493 494 490
		f 4 -901 888 -917 919
		mu 0 4 494 487 486 490
		f 4 -907 -904 -922 920
		mu 0 4 495 496 497 498
		f 4 -903 -900 -923 921
		mu 0 4 497 499 500 498
		f 4 -899 -896 -924 922
		mu 0 4 500 478 476 498
		f 4 -895 -908 -921 923
		mu 0 4 476 475 495 498
		f 4 905 892 -926 924
		mu 0 4 501 482 481 502
		f 4 893 896 -927 925
		mu 0 4 481 480 503 502
		f 4 897 900 -928 926
		mu 0 4 503 504 505 502
		f 4 901 904 -925 927
		mu 0 4 505 506 501 502
		f 4 929 938 -954 952
		mu 0 4 507 508 509 510
		f 4 939 -932 -955 953
		mu 0 4 509 511 512 510
		f 4 -931 -938 -956 954
		mu 0 4 512 513 514 510
		f 4 -937 928 -953 955
		mu 0 4 514 515 507 510
		f 4 931 942 -958 956
		mu 0 4 512 511 516 517
		f 4 943 -934 -959 957
		mu 0 4 516 518 519 517
		f 4 -933 -942 -960 958
		mu 0 4 519 520 521 517
		f 4 -941 930 -957 959
		mu 0 4 521 513 512 517
		f 4 933 946 -962 960
		mu 0 4 519 518 522 523
		f 4 947 -936 -963 961
		mu 0 4 522 524 525 523
		f 4 -935 -946 -964 962
		mu 0 4 525 526 527 523
		f 4 -945 932 -961 963
		mu 0 4 527 520 519 523
		f 4 -951 -948 -966 964
		mu 0 4 528 529 530 531
		f 4 -947 -944 -967 965
		mu 0 4 530 532 533 531
		f 4 -943 -940 -968 966
		mu 0 4 533 511 509 531
		f 4 -939 -952 -965 967
		mu 0 4 509 508 528 531
		f 4 949 936 -970 968
		mu 0 4 534 515 514 535
		f 4 937 940 -971 969
		mu 0 4 514 513 536 535
		f 4 941 944 -972 970
		mu 0 4 536 537 538 535
		f 4 945 948 -969 971
		mu 0 4 538 539 534 535
		f 4 972 977 -974 -977
		mu 0 4 540 541 542 543
		f 4 973 979 -975 -979
		mu 0 4 543 542 544 545
		f 4 974 981 -976 -981
		mu 0 4 545 544 546 547
		f 4 -984 -982 -980 -978
		mu 0 4 541 548 549 542
		f 4 982 976 978 980
		mu 0 4 550 540 543 551
		f 4 984 989 -986 -989
		mu 0 4 552 553 554 555
		f 4 985 991 -987 -991
		mu 0 4 555 554 556 557
		f 4 986 993 -988 -993
		mu 0 4 557 556 558 559
		f 4 -996 -994 -992 -990
		mu 0 4 553 560 561 554
		f 4 994 988 990 992
		mu 0 4 562 552 555 563
		f 4 996 1001 -998 -1001
		mu 0 4 564 565 566 567
		f 4 997 1003 -999 -1003
		mu 0 4 567 566 568 569
		f 4 998 1005 -1000 -1005
		mu 0 4 569 568 570 571
		f 4 -1008 -1006 -1004 -1002
		mu 0 4 565 572 573 566
		f 4 1006 1000 1002 1004
		mu 0 4 574 564 567 575
		f 4 1008 1013 -1010 -1013
		mu 0 4 576 577 578 579
		f 4 1009 1015 -1011 -1015
		mu 0 4 579 578 580 581
		f 4 1010 1017 -1012 -1017
		mu 0 4 581 580 582 583
		f 4 -1020 -1018 -1016 -1014
		mu 0 4 577 584 585 578
		f 4 1018 1012 1014 1016
		mu 0 4 586 576 579 587
		f 4 1020 1025 -1022 -1025
		mu 0 4 588 589 590 591
		f 4 1021 1027 -1023 -1027
		mu 0 4 591 590 592 593
		f 4 1022 1029 -1024 -1029
		mu 0 4 593 592 594 595
		f 4 -1032 -1030 -1028 -1026
		mu 0 4 589 596 597 590
		f 4 1030 1024 1026 1028
		mu 0 4 598 588 591 599
		f 4 1032 1037 -1034 -1037
		mu 0 4 600 601 602 603
		f 4 1033 1039 -1035 -1039
		mu 0 4 603 602 604 605
		f 4 1034 1041 -1036 -1041
		mu 0 4 605 604 606 607
		f 4 -1044 -1042 -1040 -1038
		mu 0 4 601 608 609 602
		f 4 1042 1036 1038 1040
		mu 0 4 610 600 603 611
		f 4 1044 1049 -1046 -1049
		mu 0 4 612 613 614 615
		f 4 1045 1051 -1047 -1051
		mu 0 4 615 614 616 617
		f 4 1046 1053 -1048 -1053
		mu 0 4 617 616 618 619
		f 4 -1056 -1054 -1052 -1050
		mu 0 4 613 620 621 614
		f 4 1054 1048 1050 1052
		mu 0 4 622 612 615 623
		f 4 1056 1061 -1058 -1061
		mu 0 4 624 625 626 627
		f 4 1057 1063 -1059 -1063
		mu 0 4 627 626 628 629
		f 4 1058 1065 -1060 -1065
		mu 0 4 629 628 630 631
		f 4 -1068 -1066 -1064 -1062
		mu 0 4 625 632 633 626
		f 4 1066 1060 1062 1064
		mu 0 4 634 624 627 635;
	setAttr ".fc[500:824]"
		f 4 1069 1078 -1094 1092
		mu 0 4 636 637 638 639
		f 4 1079 -1072 -1095 1093
		mu 0 4 638 640 641 639
		f 4 -1071 -1078 -1096 1094
		mu 0 4 641 642 643 639
		f 4 -1077 1068 -1093 1095
		mu 0 4 643 644 636 639
		f 4 1071 1082 -1098 1096
		mu 0 4 641 640 645 646
		f 4 1083 -1074 -1099 1097
		mu 0 4 645 647 648 646
		f 4 -1073 -1082 -1100 1098
		mu 0 4 648 649 650 646
		f 4 -1081 1070 -1097 1099
		mu 0 4 650 642 641 646
		f 4 1073 1086 -1102 1100
		mu 0 4 648 647 651 652
		f 4 1087 -1076 -1103 1101
		mu 0 4 651 653 654 652
		f 4 -1075 -1086 -1104 1102
		mu 0 4 654 655 656 652
		f 4 -1085 1072 -1101 1103
		mu 0 4 656 649 648 652
		f 4 -1091 -1088 -1106 1104
		mu 0 4 657 658 659 660
		f 4 -1087 -1084 -1107 1105
		mu 0 4 659 661 662 660
		f 4 -1083 -1080 -1108 1106
		mu 0 4 662 640 638 660
		f 4 -1079 -1092 -1105 1107
		mu 0 4 638 637 657 660
		f 4 1089 1076 -1110 1108
		mu 0 4 663 644 643 664
		f 4 1077 1080 -1111 1109
		mu 0 4 643 642 665 664
		f 4 1081 1084 -1112 1110
		mu 0 4 665 666 667 664
		f 4 1085 1088 -1109 1111
		mu 0 4 667 668 663 664
		f 4 1113 1122 -1138 1136
		mu 0 4 669 670 671 672
		f 4 1123 -1116 -1139 1137
		mu 0 4 671 673 674 672
		f 4 -1115 -1122 -1140 1138
		mu 0 4 674 675 676 672
		f 4 -1121 1112 -1137 1139
		mu 0 4 676 677 669 672
		f 4 1115 1126 -1142 1140
		mu 0 4 674 673 678 679
		f 4 1127 -1118 -1143 1141
		mu 0 4 678 680 681 679
		f 4 -1117 -1126 -1144 1142
		mu 0 4 681 682 683 679
		f 4 -1125 1114 -1141 1143
		mu 0 4 683 675 674 679
		f 4 1117 1130 -1146 1144
		mu 0 4 681 680 684 685
		f 4 1131 -1120 -1147 1145
		mu 0 4 684 686 687 685
		f 4 -1119 -1130 -1148 1146
		mu 0 4 687 688 689 685
		f 4 -1129 1116 -1145 1147
		mu 0 4 689 682 681 685
		f 4 -1135 -1132 -1150 1148
		mu 0 4 690 691 692 693
		f 4 -1131 -1128 -1151 1149
		mu 0 4 692 694 695 693
		f 4 -1127 -1124 -1152 1150
		mu 0 4 695 673 671 693
		f 4 -1123 -1136 -1149 1151
		mu 0 4 671 670 690 693
		f 4 1133 1120 -1154 1152
		mu 0 4 696 677 676 697
		f 4 1121 1124 -1155 1153
		mu 0 4 676 675 698 697
		f 4 1125 1128 -1156 1154
		mu 0 4 698 699 700 697
		f 4 1129 1132 -1153 1155
		mu 0 4 700 701 696 697
		f 4 1157 1166 -1182 1180
		mu 0 4 702 703 704 705
		f 4 1167 -1160 -1183 1181
		mu 0 4 704 706 707 705
		f 4 -1159 -1166 -1184 1182
		mu 0 4 707 708 709 705
		f 4 -1165 1156 -1181 1183
		mu 0 4 709 710 702 705
		f 4 1159 1170 -1186 1184
		mu 0 4 707 706 711 712
		f 4 1171 -1162 -1187 1185
		mu 0 4 711 713 714 712
		f 4 -1161 -1170 -1188 1186
		mu 0 4 714 715 716 712
		f 4 -1169 1158 -1185 1187
		mu 0 4 716 708 707 712
		f 4 1161 1174 -1190 1188
		mu 0 4 714 713 717 718
		f 4 1175 -1164 -1191 1189
		mu 0 4 717 719 720 718
		f 4 -1163 -1174 -1192 1190
		mu 0 4 720 721 722 718
		f 4 -1173 1160 -1189 1191
		mu 0 4 722 715 714 718
		f 4 -1179 -1176 -1194 1192
		mu 0 4 723 724 725 726
		f 4 -1175 -1172 -1195 1193
		mu 0 4 725 727 728 726
		f 4 -1171 -1168 -1196 1194
		mu 0 4 728 706 704 726
		f 4 -1167 -1180 -1193 1195
		mu 0 4 704 703 723 726
		f 4 1177 1164 -1198 1196
		mu 0 4 729 710 709 730
		f 4 1165 1168 -1199 1197
		mu 0 4 709 708 731 730
		f 4 1169 1172 -1200 1198
		mu 0 4 731 732 733 730
		f 4 1173 1176 -1197 1199
		mu 0 4 733 734 729 730
		f 4 1200 1205 -1202 -1205
		mu 0 4 735 736 737 738
		f 4 1201 1207 -1203 -1207
		mu 0 4 738 737 739 740
		f 4 1202 1209 -1204 -1209
		mu 0 4 740 739 741 742
		f 4 -1212 -1210 -1208 -1206
		mu 0 4 736 743 744 737
		f 4 1210 1204 1206 1208
		mu 0 4 745 735 738 746
		f 4 1212 1217 -1214 -1217
		mu 0 4 747 748 749 750
		f 4 1213 1219 -1215 -1219
		mu 0 4 750 749 751 752
		f 4 1214 1221 -1216 -1221
		mu 0 4 752 751 753 754
		f 4 -1224 -1222 -1220 -1218
		mu 0 4 748 755 756 749
		f 4 1222 1216 1218 1220
		mu 0 4 757 747 750 758
		f 4 1224 1229 -1226 -1229
		mu 0 4 759 760 761 762
		f 4 1225 1231 -1227 -1231
		mu 0 4 762 761 763 764
		f 4 1226 1233 -1228 -1233
		mu 0 4 764 763 765 766
		f 4 -1236 -1234 -1232 -1230
		mu 0 4 760 767 768 761
		f 4 1234 1228 1230 1232
		mu 0 4 769 759 762 770
		f 4 1236 1241 -1238 -1241
		mu 0 4 771 772 773 774
		f 4 1237 1243 -1239 -1243
		mu 0 4 774 773 775 776
		f 4 1238 1245 -1240 -1245
		mu 0 4 776 775 777 778
		f 4 -1248 -1246 -1244 -1242
		mu 0 4 772 779 780 773
		f 4 1246 1240 1242 1244
		mu 0 4 781 771 774 782
		f 4 1248 1253 -1250 -1253
		mu 0 4 783 784 785 786
		f 4 1249 1255 -1251 -1255
		mu 0 4 786 785 787 788
		f 4 1250 1257 -1252 -1257
		mu 0 4 788 787 789 790
		f 4 -1260 -1258 -1256 -1254
		mu 0 4 784 791 792 785
		f 4 1258 1252 1254 1256
		mu 0 4 793 783 786 794
		f 4 1260 1265 -1262 -1265
		mu 0 4 795 796 797 798
		f 4 1261 1267 -1263 -1267
		mu 0 4 798 797 799 800
		f 4 1262 1269 -1264 -1269
		mu 0 4 800 799 801 802
		f 4 -1272 -1270 -1268 -1266
		mu 0 4 796 803 804 797
		f 4 1270 1264 1266 1268
		mu 0 4 805 795 798 806
		f 4 1273 1282 -1298 1296
		mu 0 4 807 808 809 810
		f 4 1283 -1276 -1299 1297
		mu 0 4 809 811 812 810
		f 4 -1275 -1282 -1300 1298
		mu 0 4 812 813 814 810
		f 4 -1281 1272 -1297 1299
		mu 0 4 814 815 807 810
		f 4 1275 1286 -1302 1300
		mu 0 4 812 811 816 817
		f 4 1287 -1278 -1303 1301
		mu 0 4 816 818 819 817
		f 4 -1277 -1286 -1304 1302
		mu 0 4 819 820 821 817
		f 4 -1285 1274 -1301 1303
		mu 0 4 821 813 812 817
		f 4 1277 1290 -1306 1304
		mu 0 4 819 818 822 823
		f 4 1291 -1280 -1307 1305
		mu 0 4 822 824 825 823
		f 4 -1279 -1290 -1308 1306
		mu 0 4 825 826 827 823
		f 4 -1289 1276 -1305 1307
		mu 0 4 827 820 819 823
		f 4 -1295 -1292 -1310 1308
		mu 0 4 828 829 830 831
		f 4 -1291 -1288 -1311 1309
		mu 0 4 830 832 833 831
		f 4 -1287 -1284 -1312 1310
		mu 0 4 833 811 809 831
		f 4 -1283 -1296 -1309 1311
		mu 0 4 809 808 828 831
		f 4 1293 1280 -1314 1312
		mu 0 4 834 815 814 835
		f 4 1281 1284 -1315 1313
		mu 0 4 814 813 836 835
		f 4 1285 1288 -1316 1314
		mu 0 4 836 837 838 835
		f 4 1289 1292 -1313 1315
		mu 0 4 838 839 834 835
		f 4 1317 1326 -1342 1340
		mu 0 4 840 841 842 843
		f 4 1327 -1320 -1343 1341
		mu 0 4 842 844 845 843
		f 4 -1319 -1326 -1344 1342
		mu 0 4 845 846 847 843
		f 4 -1325 1316 -1341 1343
		mu 0 4 847 848 840 843
		f 4 1319 1330 -1346 1344
		mu 0 4 845 844 849 850
		f 4 1331 -1322 -1347 1345
		mu 0 4 849 851 852 850
		f 4 -1321 -1330 -1348 1346
		mu 0 4 852 853 854 850
		f 4 -1329 1318 -1345 1347
		mu 0 4 854 846 845 850
		f 4 1321 1334 -1350 1348
		mu 0 4 852 851 855 856
		f 4 1335 -1324 -1351 1349
		mu 0 4 855 857 858 856
		f 4 -1323 -1334 -1352 1350
		mu 0 4 858 859 860 856
		f 4 -1333 1320 -1349 1351
		mu 0 4 860 853 852 856
		f 4 -1339 -1336 -1354 1352
		mu 0 4 861 862 863 864
		f 4 -1335 -1332 -1355 1353
		mu 0 4 863 865 866 864
		f 4 -1331 -1328 -1356 1354
		mu 0 4 866 844 842 864
		f 4 -1327 -1340 -1353 1355
		mu 0 4 842 841 861 864
		f 4 1337 1324 -1358 1356
		mu 0 4 867 848 847 868
		f 4 1325 1328 -1359 1357
		mu 0 4 847 846 869 868
		f 4 1329 1332 -1360 1358
		mu 0 4 869 870 871 868
		f 4 1333 1336 -1357 1359
		mu 0 4 871 872 867 868
		f 4 1360 1365 -1362 -1365
		mu 0 4 873 874 875 876
		f 4 1361 1367 -1363 -1367
		mu 0 4 876 875 877 878
		f 4 1362 1369 -1364 -1369
		mu 0 4 878 877 879 880
		f 4 -1372 -1370 -1368 -1366
		mu 0 4 874 881 882 875
		f 4 1370 1364 1366 1368
		mu 0 4 883 873 876 884
		f 4 1372 1377 -1374 -1377
		mu 0 4 885 886 887 888
		f 4 1373 1379 -1375 -1379
		mu 0 4 888 887 889 890
		f 4 1374 1381 -1376 -1381
		mu 0 4 890 889 891 892
		f 4 -1384 -1382 -1380 -1378
		mu 0 4 886 893 894 887
		f 4 1382 1376 1378 1380
		mu 0 4 895 885 888 896
		f 4 1384 1389 -1386 -1389
		mu 0 4 897 898 899 900
		f 4 1385 1391 -1387 -1391
		mu 0 4 900 899 901 902
		f 4 1386 1393 -1388 -1393
		mu 0 4 902 901 903 904
		f 4 -1396 -1394 -1392 -1390
		mu 0 4 898 905 906 899
		f 4 1394 1388 1390 1392
		mu 0 4 907 897 900 908
		f 4 1397 1406 -1422 1420
		mu 0 4 909 910 911 912
		f 4 1407 -1400 -1423 1421
		mu 0 4 911 913 914 912
		f 4 -1399 -1406 -1424 1422
		mu 0 4 914 915 916 912
		f 4 -1405 1396 -1421 1423
		mu 0 4 916 917 909 912
		f 4 1399 1410 -1426 1424
		mu 0 4 914 913 918 919
		f 4 1411 -1402 -1427 1425
		mu 0 4 918 920 921 919
		f 4 -1401 -1410 -1428 1426
		mu 0 4 921 922 923 919
		f 4 -1409 1398 -1425 1427
		mu 0 4 923 915 914 919
		f 4 1401 1414 -1430 1428
		mu 0 4 921 920 924 925
		f 4 1415 -1404 -1431 1429
		mu 0 4 924 926 927 925
		f 4 -1403 -1414 -1432 1430
		mu 0 4 927 928 929 925
		f 4 -1413 1400 -1429 1431
		mu 0 4 929 922 921 925
		f 4 -1419 -1416 -1434 1432
		mu 0 4 930 931 932 933
		f 4 -1415 -1412 -1435 1433
		mu 0 4 932 934 935 933
		f 4 -1411 -1408 -1436 1434
		mu 0 4 935 913 911 933
		f 4 -1407 -1420 -1433 1435
		mu 0 4 911 910 930 933
		f 4 1417 1404 -1438 1436
		mu 0 4 936 917 916 937
		f 4 1405 1408 -1439 1437
		mu 0 4 916 915 938 937
		f 4 1409 1412 -1440 1438
		mu 0 4 938 939 940 937
		f 4 1413 1416 -1437 1439
		mu 0 4 940 941 936 937
		f 4 1440 1445 -1442 -1445
		mu 0 4 942 943 944 945
		f 4 1441 1447 -1443 -1447
		mu 0 4 945 944 946 947
		f 4 1442 1449 -1444 -1449
		mu 0 4 947 946 948 949
		f 4 -1452 -1450 -1448 -1446
		mu 0 4 943 950 951 944
		f 4 1450 1444 1446 1448
		mu 0 4 952 942 945 953
		f 4 1452 1457 -1454 -1457
		mu 0 4 954 955 956 957
		f 4 1453 1459 -1455 -1459
		mu 0 4 957 956 958 959
		f 4 1454 1461 -1456 -1461
		mu 0 4 959 958 960 961
		f 4 -1464 -1462 -1460 -1458
		mu 0 4 955 962 963 956
		f 4 1462 1456 1458 1460
		mu 0 4 964 954 957 965
		f 4 1464 1469 -1466 -1469
		mu 0 4 966 967 968 969
		f 4 1465 1471 -1467 -1471
		mu 0 4 969 968 970 971
		f 4 1466 1473 -1468 -1473
		mu 0 4 971 970 972 973
		f 4 -1476 -1474 -1472 -1470
		mu 0 4 967 974 975 968
		f 4 1474 1468 1470 1472
		mu 0 4 976 966 969 977
		f 4 1476 1481 -1478 -1481
		mu 0 4 978 979 980 981
		f 4 1477 1483 -1479 -1483
		mu 0 4 981 980 982 983
		f 4 1478 1485 -1480 -1485
		mu 0 4 983 982 984 985
		f 4 -1488 -1486 -1484 -1482
		mu 0 4 979 986 987 980
		f 4 1486 1480 1482 1484
		mu 0 4 988 978 981 989
		f 4 1488 1493 -1490 -1493
		mu 0 4 990 991 992 993
		f 4 1489 1495 -1491 -1495
		mu 0 4 993 992 994 995
		f 4 1490 1497 -1492 -1497
		mu 0 4 995 994 996 997
		f 4 -1500 -1498 -1496 -1494
		mu 0 4 991 998 999 992
		f 4 1498 1492 1494 1496
		mu 0 4 1000 990 993 1001
		f 4 1500 1505 -1502 -1505
		mu 0 4 1002 1003 1004 1005
		f 4 1501 1507 -1503 -1507
		mu 0 4 1005 1004 1006 1007
		f 4 1502 1509 -1504 -1509
		mu 0 4 1007 1006 1008 1009
		f 4 -1512 -1510 -1508 -1506
		mu 0 4 1003 1010 1011 1004
		f 4 1510 1504 1506 1508
		mu 0 4 1012 1002 1005 1013
		f 4 1512 1517 -1514 -1517
		mu 0 4 1014 1015 1016 1017
		f 4 1513 1519 -1515 -1519
		mu 0 4 1017 1016 1018 1019
		f 4 1514 1521 -1516 -1521
		mu 0 4 1019 1018 1020 1021
		f 4 -1524 -1522 -1520 -1518
		mu 0 4 1015 1022 1023 1016
		f 4 1522 1516 1518 1520
		mu 0 4 1024 1014 1017 1025
		f 4 1524 1529 -1526 -1529
		mu 0 4 1026 1027 1028 1029
		f 4 1525 1531 -1527 -1531
		mu 0 4 1029 1028 1030 1031
		f 4 1526 1533 -1528 -1533
		mu 0 4 1031 1030 1032 1033
		f 4 -1536 -1534 -1532 -1530
		mu 0 4 1027 1034 1035 1028
		f 4 1534 1528 1530 1532
		mu 0 4 1036 1026 1029 1037
		f 4 1536 1541 -1538 -1541
		mu 0 4 1038 1039 1040 1041
		f 4 1537 1543 -1539 -1543
		mu 0 4 1041 1040 1042 1043
		f 4 1538 1545 -1540 -1545
		mu 0 4 1043 1042 1044 1045
		f 4 -1548 -1546 -1544 -1542
		mu 0 4 1039 1046 1047 1040
		f 4 1546 1540 1542 1544
		mu 0 4 1048 1038 1041 1049
		f 4 1548 1553 -1550 -1553
		mu 0 4 1050 1051 1052 1053
		f 4 1549 1555 -1551 -1555
		mu 0 4 1053 1052 1054 1055
		f 4 1550 1557 -1552 -1557
		mu 0 4 1055 1054 1056 1057
		f 4 -1560 -1558 -1556 -1554
		mu 0 4 1051 1058 1059 1052
		f 4 1558 1552 1554 1556
		mu 0 4 1060 1050 1053 1061
		f 4 1560 1565 -1562 -1565
		mu 0 4 1062 1063 1064 1065
		f 4 1561 1567 -1563 -1567
		mu 0 4 1065 1064 1066 1067
		f 4 1562 1569 -1564 -1569
		mu 0 4 1067 1066 1068 1069
		f 4 -1572 -1570 -1568 -1566
		mu 0 4 1063 1070 1071 1064
		f 4 1570 1564 1566 1568
		mu 0 4 1072 1062 1065 1073
		f 4 1572 1577 -1574 -1577
		mu 0 4 1074 1075 1076 1077
		f 4 1573 1579 -1575 -1579
		mu 0 4 1077 1076 1078 1079
		f 4 1574 1581 -1576 -1581
		mu 0 4 1079 1078 1080 1081
		f 4 -1584 -1582 -1580 -1578
		mu 0 4 1075 1082 1083 1076
		f 4 1582 1576 1578 1580
		mu 0 4 1084 1074 1077 1085
		f 4 1585 1594 -1610 1608
		mu 0 4 1086 1087 1088 1089
		f 4 1595 -1588 -1611 1609
		mu 0 4 1088 1090 1091 1089
		f 4 -1587 -1594 -1612 1610
		mu 0 4 1091 1092 1093 1089
		f 4 -1593 1584 -1609 1611
		mu 0 4 1093 1094 1086 1089
		f 4 1587 1598 -1614 1612
		mu 0 4 1091 1090 1095 1096
		f 4 1599 -1590 -1615 1613
		mu 0 4 1095 1097 1098 1096
		f 4 -1589 -1598 -1616 1614
		mu 0 4 1098 1099 1100 1096
		f 4 -1597 1586 -1613 1615
		mu 0 4 1100 1092 1091 1096
		f 4 1589 1602 -1618 1616
		mu 0 4 1098 1097 1101 1102
		f 4 1603 -1592 -1619 1617
		mu 0 4 1101 1103 1104 1102
		f 4 -1591 -1602 -1620 1618
		mu 0 4 1104 1105 1106 1102
		f 4 -1601 1588 -1617 1619
		mu 0 4 1106 1099 1098 1102
		f 4 -1607 -1604 -1622 1620
		mu 0 4 1107 1108 1109 1110
		f 4 -1603 -1600 -1623 1621
		mu 0 4 1109 1111 1112 1110
		f 4 -1599 -1596 -1624 1622
		mu 0 4 1112 1090 1088 1110
		f 4 -1595 -1608 -1621 1623
		mu 0 4 1088 1087 1107 1110
		f 4 1605 1592 -1626 1624
		mu 0 4 1113 1094 1093 1114
		f 4 1593 1596 -1627 1625
		mu 0 4 1093 1092 1115 1114
		f 4 1597 1600 -1628 1626
		mu 0 4 1115 1116 1117 1114
		f 4 1601 1604 -1625 1627
		mu 0 4 1117 1118 1113 1114
		f 4 1629 1638 -1654 1652
		mu 0 4 1119 1120 1121 1122
		f 4 1639 -1632 -1655 1653
		mu 0 4 1121 1123 1124 1122
		f 4 -1631 -1638 -1656 1654
		mu 0 4 1124 1125 1126 1122
		f 4 -1637 1628 -1653 1655
		mu 0 4 1126 1127 1119 1122
		f 4 1631 1642 -1658 1656
		mu 0 4 1124 1123 1128 1129
		f 4 1643 -1634 -1659 1657
		mu 0 4 1128 1130 1131 1129
		f 4 -1633 -1642 -1660 1658
		mu 0 4 1131 1132 1133 1129
		f 4 -1641 1630 -1657 1659
		mu 0 4 1133 1125 1124 1129
		f 4 1633 1646 -1662 1660
		mu 0 4 1131 1130 1134 1135
		f 4 1647 -1636 -1663 1661
		mu 0 4 1134 1136 1137 1135
		f 4 -1635 -1646 -1664 1662
		mu 0 4 1137 1138 1139 1135
		f 4 -1645 1632 -1661 1663
		mu 0 4 1139 1132 1131 1135
		f 4 -1651 -1648 -1666 1664
		mu 0 4 1140 1141 1142 1143
		f 4 -1647 -1644 -1667 1665
		mu 0 4 1142 1144 1145 1143
		f 4 -1643 -1640 -1668 1666
		mu 0 4 1145 1123 1121 1143
		f 4 -1639 -1652 -1665 1667
		mu 0 4 1121 1120 1140 1143
		f 4 1649 1636 -1670 1668
		mu 0 4 1146 1127 1126 1147
		f 4 1637 1640 -1671 1669
		mu 0 4 1126 1125 1148 1147
		f 4 1641 1644 -1672 1670
		mu 0 4 1148 1149 1150 1147
		f 4 1645 1648 -1669 1671
		mu 0 4 1150 1151 1146 1147
		f 4 1673 1682 -1698 1696
		mu 0 4 1152 1153 1154 1155
		f 4 1683 -1676 -1699 1697
		mu 0 4 1154 1156 1157 1155
		f 4 -1675 -1682 -1700 1698
		mu 0 4 1157 1158 1159 1155
		f 4 -1681 1672 -1697 1699
		mu 0 4 1159 1160 1152 1155
		f 4 1675 1686 -1702 1700
		mu 0 4 1157 1156 1161 1162
		f 4 1687 -1678 -1703 1701
		mu 0 4 1161 1163 1164 1162
		f 4 -1677 -1686 -1704 1702
		mu 0 4 1164 1165 1166 1162
		f 4 -1685 1674 -1701 1703
		mu 0 4 1166 1158 1157 1162
		f 4 1677 1690 -1706 1704
		mu 0 4 1164 1163 1167 1168
		f 4 1691 -1680 -1707 1705
		mu 0 4 1167 1169 1170 1168
		f 4 -1679 -1690 -1708 1706
		mu 0 4 1170 1171 1172 1168
		f 4 -1689 1676 -1705 1707
		mu 0 4 1172 1165 1164 1168
		f 4 -1695 -1692 -1710 1708
		mu 0 4 1173 1174 1175 1176
		f 4 -1691 -1688 -1711 1709
		mu 0 4 1175 1177 1178 1176
		f 4 -1687 -1684 -1712 1710
		mu 0 4 1178 1156 1154 1176
		f 4 -1683 -1696 -1709 1711
		mu 0 4 1154 1153 1173 1176
		f 4 1693 1680 -1714 1712
		mu 0 4 1179 1160 1159 1180
		f 4 1681 1684 -1715 1713
		mu 0 4 1159 1158 1181 1180
		f 4 1685 1688 -1716 1714
		mu 0 4 1181 1182 1183 1180
		f 4 1689 1692 -1713 1715
		mu 0 4 1183 1184 1179 1180
		f 4 1716 1721 -1718 -1721
		mu 0 4 1185 1186 1187 1188
		f 4 1717 1723 -1719 -1723
		mu 0 4 1188 1187 1189 1190
		f 4 1718 1725 -1720 -1725
		mu 0 4 1190 1189 1191 1192
		f 4 -1728 -1726 -1724 -1722
		mu 0 4 1186 1193 1194 1187
		f 4 1726 1720 1722 1724
		mu 0 4 1195 1185 1188 1196
		f 4 1728 1733 -1730 -1733
		mu 0 4 1197 1198 1199 1200
		f 4 1729 1735 -1731 -1735
		mu 0 4 1200 1199 1201 1202
		f 4 1730 1737 -1732 -1737
		mu 0 4 1202 1201 1203 1204
		f 4 -1740 -1738 -1736 -1734
		mu 0 4 1198 1205 1206 1199
		f 4 1738 1732 1734 1736
		mu 0 4 1207 1197 1200 1208
		f 4 1740 1745 -1742 -1745
		mu 0 4 1209 1210 1211 1212
		f 4 1741 1747 -1743 -1747
		mu 0 4 1212 1211 1213 1214
		f 4 1742 1749 -1744 -1749
		mu 0 4 1214 1213 1215 1216
		f 4 -1752 -1750 -1748 -1746
		mu 0 4 1210 1217 1218 1211
		f 4 1750 1744 1746 1748
		mu 0 4 1219 1209 1212 1220
		f 4 1752 1757 -1754 -1757
		mu 0 4 1221 1222 1223 1224
		f 4 1753 1759 -1755 -1759
		mu 0 4 1224 1223 1225 1226
		f 4 1754 1761 -1756 -1761
		mu 0 4 1226 1225 1227 1228
		f 4 -1764 -1762 -1760 -1758
		mu 0 4 1222 1229 1230 1223
		f 4 1762 1756 1758 1760
		mu 0 4 1231 1221 1224 1232
		f 4 1764 1769 -1766 -1769
		mu 0 4 1233 1234 1235 1236
		f 4 1765 1771 -1767 -1771
		mu 0 4 1236 1235 1237 1238
		f 4 1766 1773 -1768 -1773
		mu 0 4 1238 1237 1239 1240
		f 4 -1776 -1774 -1772 -1770
		mu 0 4 1234 1241 1242 1235
		f 4 1774 1768 1770 1772
		mu 0 4 1243 1233 1236 1244
		f 4 1776 1781 -1778 -1781
		mu 0 4 1245 1246 1247 1248
		f 4 1777 1783 -1779 -1783
		mu 0 4 1248 1247 1249 1250
		f 4 1778 1785 -1780 -1785
		mu 0 4 1250 1249 1251 1252
		f 4 -1788 -1786 -1784 -1782
		mu 0 4 1246 1253 1254 1247
		f 4 1786 1780 1782 1784
		mu 0 4 1255 1245 1248 1256
		f 4 1788 1793 -1790 -1793
		mu 0 4 1257 1258 1259 1260
		f 4 1789 1795 -1791 -1795
		mu 0 4 1260 1259 1261 1262
		f 4 1790 1797 -1792 -1797
		mu 0 4 1262 1261 1263 1264
		f 4 -1800 -1798 -1796 -1794
		mu 0 4 1258 1265 1266 1259
		f 4 1798 1792 1794 1796
		mu 0 4 1267 1257 1260 1268
		f 4 1800 1805 -1802 -1805
		mu 0 4 1269 1270 1271 1272
		f 4 1801 1807 -1803 -1807
		mu 0 4 1272 1271 1273 1274
		f 4 1802 1809 -1804 -1809
		mu 0 4 1274 1273 1275 1276
		f 4 -1812 -1810 -1808 -1806
		mu 0 4 1270 1277 1278 1271
		f 4 1810 1804 1806 1808
		mu 0 4 1279 1269 1272 1280;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface156" -p "MarsTerrain1_G2";
createNode transform -n "transform72" -p "polySurface156";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape169" -p "transform72";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface157" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -47.098764419555664 0.47400947660207748 -5.6283068656921387 ;
	setAttr ".sp" -type "double3" -47.098764419555664 0.47400947660207748 -5.6283068656921387 ;
createNode transform -n "transform71" -p "polySurface157";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape170" -p "transform71";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface158" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -86.809074401855469 0.3559696301817894 15.555907726287842 ;
	setAttr ".sp" -type "double3" -86.809074401855469 0.3559696301817894 15.555907726287842 ;
createNode transform -n "transform70" -p "polySurface158";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape171" -p "transform70";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface159" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -49.04998779296875 0.2093864269554615 -91.155433654785156 ;
	setAttr ".sp" -type "double3" -49.04998779296875 0.2093864269554615 -91.155433654785156 ;
createNode transform -n "transform69" -p "polySurface159";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape172" -p "transform69";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface160" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -93.258407592773438 0.11540486291050911 -56.164272308349609 ;
	setAttr ".sp" -type "double3" -93.258407592773438 0.11540486291050911 -56.164272308349609 ;
createNode transform -n "transform68" -p "polySurface160";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape173" -p "transform68";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface161" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -54.171253204345703 0.11540486291050911 13.374463558197021 ;
	setAttr ".sp" -type "double3" -54.171253204345703 0.11540486291050911 13.374463558197021 ;
createNode transform -n "transform67" -p "polySurface161";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape174" -p "transform67";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface162" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.040442288665773596 0 ;
	setAttr ".rp" -type "double3" -57.543350219726562 0.11242256313562393 -12.910833358764648 ;
	setAttr ".sp" -type "double3" -57.543350219726562 0.11242256313562393 -12.910833358764648 ;
createNode transform -n "transform66" -p "polySurface162";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape175" -p "transform66";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface163" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.10110572166443355 0 ;
	setAttr ".rp" -type "double3" -43.718542098999023 0.23238596320152283 -24.183878898620605 ;
	setAttr ".sp" -type "double3" -43.718542098999023 0.23238596320152283 -24.183878898620605 ;
createNode transform -n "transform65" -p "polySurface163";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape176" -p "transform65";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface164" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.071328455896812137 0 ;
	setAttr ".rp" -type "double3" -66.855674743652344 0.17635311931371689 -41.43707275390625 ;
	setAttr ".sp" -type "double3" -66.855674743652344 0.17635311931371689 -41.43707275390625 ;
createNode transform -n "transform64" -p "polySurface164";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape177" -p "transform64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface165" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.071328455896812137 0 ;
	setAttr ".rp" -type "double3" -84.060306549072266 0.15998020023107529 -25.757606506347656 ;
	setAttr ".sp" -type "double3" -84.060306549072266 0.15998020023107529 -25.757606506347656 ;
createNode transform -n "transform63" -p "polySurface165";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape178" -p "transform63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface166" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.071328455896813026 0 ;
	setAttr ".rp" -type "double3" -75.970375061035156 0.11540486291050911 -81.170925140380859 ;
	setAttr ".sp" -type "double3" -75.970375061035156 0.11540486291050911 -81.170925140380859 ;
createNode transform -n "transform62" -p "polySurface166";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape179" -p "transform62";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface167" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -55.373708724975586 0.16762161254882812 -61.294334411621094 ;
	setAttr ".sp" -type "double3" -55.373708724975586 0.16762161254882812 -61.294334411621094 ;
createNode transform -n "transform61" -p "polySurface167";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape180" -p "transform61";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface168" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -6.1970562934875488 0.37108423560857773 -34.635448455810547 ;
	setAttr ".sp" -type "double3" -6.1970562934875488 0.37108423560857773 -34.635448455810547 ;
createNode transform -n "transform60" -p "polySurface168";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape181" -p "transform60";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface169" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -22.894656181335449 0.090621426701545715 -87.049652099609375 ;
	setAttr ".sp" -type "double3" -22.894656181335449 0.090621426701545715 -87.049652099609375 ;
createNode transform -n "transform59" -p "polySurface169";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape182" -p "transform59";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface170" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" 16.340512752532959 0.090621426701545715 9.5902915000915527 ;
	setAttr ".sp" -type "double3" 16.340512752532959 0.090621426701545715 9.5902915000915527 ;
createNode transform -n "transform58" -p "polySurface170";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape183" -p "transform58";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface171" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.060663432998660838 0 ;
	setAttr ".rp" -type "double3" 8.6542682647705078 0.021438777446746826 -34.592197418212891 ;
	setAttr ".sp" -type "double3" 8.6542682647705078 0.021438777446746826 -34.592197418212891 ;
createNode transform -n "transform57" -p "polySurface171";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape184" -p "transform57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface172" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" 24.66555118560791 0.021438777446746826 -10.013117790222168 ;
	setAttr ".sp" -type "double3" 24.66555118560791 0.021438777446746826 -10.013117790222168 ;
createNode transform -n "transform56" -p "polySurface172";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape185" -p "transform56";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface173" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -6.6837368011474609 0.10429025813937187 -68.174457550048828 ;
	setAttr ".sp" -type "double3" -6.6837368011474609 0.10429025813937187 -68.174457550048828 ;
createNode transform -n "transform55" -p "polySurface173";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape186" -p "transform55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface174" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -28.771075248718262 0.10429025813937187 -36.706092834472656 ;
	setAttr ".sp" -type "double3" -28.771075248718262 0.10429025813937187 -36.706092834472656 ;
createNode transform -n "transform54" -p "polySurface174";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape187" -p "transform54";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface175" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.060663432998660838 0 ;
	setAttr ".rp" -type "double3" 8.9387054443359375 0.10429025813937187 -80.492225646972656 ;
	setAttr ".sp" -type "double3" 8.9387054443359375 0.10429025813937187 -80.492225646972656 ;
createNode transform -n "transform53" -p "polySurface175";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape188" -p "transform53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface176" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 82.443832397460938 0.12302668392658234 -62.902248382568359 ;
	setAttr ".sp" -type "double3" 82.443832397460938 0.12302668392658234 -62.902248382568359 ;
createNode transform -n "transform52" -p "polySurface176";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape189" -p "transform52";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface177" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
	setAttr ".sp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
createNode transform -n "transform51" -p "polySurface177";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape190" -p "transform51";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface178" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -17.913358688354492 0.20518377795815468 2.3876751661300659 ;
	setAttr ".sp" -type "double3" -17.913358688354492 0.20518377795815468 2.3876751661300659 ;
createNode transform -n "transform50" -p "polySurface178";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape191" -p "transform50";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface179" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 73.883197784423828 0.23529626056551933 3.645287036895752 ;
	setAttr ".sp" -type "double3" 73.883197784423828 0.23529626056551933 3.645287036895752 ;
createNode transform -n "transform49" -p "polySurface179";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape192" -p "transform49";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface180" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.060663432998660838 0 ;
	setAttr ".rp" -type "double3" 86.378849029541016 0.040175199508666992 -32.854036331176758 ;
	setAttr ".sp" -type "double3" 86.378849029541016 0.040175199508666992 -32.854036331176758 ;
createNode transform -n "transform48" -p "polySurface180";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape193" -p "transform48";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface181" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 48.473140716552734 0.12302668392658234 -93.50634765625 ;
	setAttr ".sp" -type "double3" 48.473140716552734 0.12302668392658234 -93.50634765625 ;
createNode transform -n "transform47" -p "polySurface181";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape194" -p "transform47";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface182" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" 65.635227203369141 0.083128653466701508 -22.227506637573242 ;
	setAttr ".sp" -type "double3" 65.635227203369141 0.083128653466701508 -22.227506637573242 ;
createNode transform -n "transform46" -p "polySurface182";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape195" -p "transform46";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface183" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 36.161226272583008 0.08533264696598053 -44.327840805053711 ;
	setAttr ".sp" -type "double3" 36.161226272583008 0.08533264696598053 -44.327840805053711 ;
createNode transform -n "transform45" -p "polySurface183";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape196" -p "transform45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface184" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 63.49152946472168 0.08533264696598053 -66.531543731689453 ;
	setAttr ".sp" -type "double3" 63.49152946472168 0.08533264696598053 -66.531543731689453 ;
createNode transform -n "transform44" -p "polySurface184";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape197" -p "transform44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface185" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 -0.047552303931208684 0 ;
	setAttr ".rp" -type "double3" -83.626823425292969 0.33700666017830372 70.613128662109375 ;
	setAttr ".sp" -type "double3" -83.626823425292969 0.33700666017830372 70.613128662109375 ;
createNode transform -n "transform43" -p "polySurface185";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape198" -p "transform43";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface186" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.071328455896813026 0 ;
	setAttr ".rp" -type "double3" -73.832260131835938 0.18414868414402008 70.940128326416016 ;
	setAttr ".sp" -type "double3" -73.832260131835938 0.18414868414402008 70.940128326416016 ;
createNode transform -n "transform42" -p "polySurface186";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape199" -p "transform42";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface187" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -63.309896469116211 0.10187932103872299 46.136249542236328 ;
	setAttr ".sp" -type "double3" -63.309896469116211 0.10187932103872299 46.136249542236328 ;
createNode transform -n "transform41" -p "polySurface187";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape200" -p "transform41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface188" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.095104607862415591 0 ;
	setAttr ".rp" -type "double3" -96.241756439208984 0.10129721462726593 50.416378021240234 ;
	setAttr ".sp" -type "double3" -96.241756439208984 0.10129721462726593 50.416378021240234 ;
createNode transform -n "transform40" -p "polySurface188";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape201" -p "transform40";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface189" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.040442288665773596 0 ;
	setAttr ".rp" -type "double3" -56.784852981567383 0.064185291528701782 67.925857543945312 ;
	setAttr ".sp" -type "double3" -56.784852981567383 0.064185291528701782 67.925857543945312 ;
createNode transform -n "transform39" -p "polySurface189";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape202" -p "transform39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface190" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -54.146486282348633 0.064185291528701782 39.05150032043457 ;
	setAttr ".sp" -type "double3" -54.146486282348633 0.064185291528701782 39.05150032043457 ;
createNode transform -n "transform38" -p "polySurface190";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape203" -p "transform38";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface191" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.10110572166443355 0 ;
	setAttr ".rp" -type "double3" -15.581537246704102 0.019027844071388245 23.848250389099121 ;
	setAttr ".sp" -type "double3" -15.581537246704102 0.019027844071388245 23.848250389099121 ;
createNode transform -n "transform37" -p "polySurface191";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape204" -p "transform37";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface192" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" -5.2724151611328125 0.064185291528701782 67.334438323974609 ;
	setAttr ".sp" -type "double3" -5.2724151611328125 0.064185291528701782 67.334438323974609 ;
createNode transform -n "transform36" -p "polySurface192";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape205" -p "transform36";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface193" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.26287487632752971 0 ;
	setAttr ".rp" -type "double3" 63.1436767578125 -0.1120271161198616 69.575977325439453 ;
	setAttr ".sp" -type "double3" 63.1436767578125 -0.1120271161198616 69.575977325439453 ;
createNode transform -n "transform35" -p "polySurface193";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape206" -p "transform35";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface194" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -25.120800018310547 0.064185291528701782 36.215715408325195 ;
	setAttr ".sp" -type "double3" -25.120800018310547 0.064185291528701782 36.215715408325195 ;
createNode transform -n "transform34" -p "polySurface194";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape207" -p "transform34";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface195" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 -0.14154801033020981 0 ;
	setAttr ".rp" -type "double3" 53.334465026855469 0.58462426066398621 -27.611604690551758 ;
	setAttr ".sp" -type "double3" 53.334465026855469 0.58462426066398621 -27.611604690551758 ;
createNode transform -n "transform33" -p "polySurface195";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape208" -p "transform33";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface196" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 83.901985168457031 0.34593231603503227 79.573688507080078 ;
	setAttr ".sp" -type "double3" 83.901985168457031 0.34593231603503227 79.573688507080078 ;
createNode transform -n "transform32" -p "polySurface196";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape209" -p "transform32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface197" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 37.890949249267578 0.19934909790754318 86.675643920898438 ;
	setAttr ".sp" -type "double3" 37.890949249267578 0.19934909790754318 86.675643920898438 ;
createNode transform -n "transform31" -p "polySurface197";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape210" -p "transform31";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface198" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.040442288665772708 0 ;
	setAttr ".rp" -type "double3" -35.565944671630859 0.10536755248904228 58.008956909179688 ;
	setAttr ".sp" -type "double3" -35.565944671630859 0.10536755248904228 58.008956909179688 ;
createNode transform -n "transform30" -p "polySurface198";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape211" -p "transform30";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface199" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.060663432998660838 0 ;
	setAttr ".rp" -type "double3" 43.841039657592773 0.10536755248904228 33.227962493896484 ;
	setAttr ".sp" -type "double3" 43.841039657592773 0.10536755248904228 33.227962493896484 ;
createNode transform -n "transform29" -p "polySurface199";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape212" -p "transform29";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface200" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.080884577331547192 0 ;
	setAttr ".rp" -type "double3" -31.110069274902344 0.067673511803150177 85.836673736572266 ;
	setAttr ".sp" -type "double3" -31.110069274902344 0.067673511803150177 85.836673736572266 ;
createNode transform -n "transform28" -p "polySurface200";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape213" -p "transform28";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface201" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.14154801033020803 0 ;
	setAttr ".rp" -type "double3" 34.310050964355469 0.18763691931962967 44.760173797607422 ;
	setAttr ".sp" -type "double3" 34.310050964355469 0.18763691931962967 44.760173797607422 ;
createNode transform -n "transform27" -p "polySurface201";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape214" -p "transform27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface202" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 13.407047748565674 0.14994287118315697 91.185993194580078 ;
	setAttr ".sp" -type "double3" 13.407047748565674 0.14994287118315697 91.185993194580078 ;
createNode transform -n "transform26" -p "polySurface202";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape215" -p "transform26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface203" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.12132686599732079 0 ;
	setAttr ".rp" -type "double3" 94.779796600341797 0.14994288980960846 55.849250793457031 ;
	setAttr ".sp" -type "double3" 94.779796600341797 0.14994288980960846 55.849250793457031 ;
createNode transform -n "transform25" -p "polySurface203";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape216" -p "transform25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface204" -p "MarsTerrain1_G2";
	setAttr ".rp" -type "double3" 0.99906349182128906 0.10536755248904228 -6.7706534862518311 ;
	setAttr ".sp" -type "double3" 0.99906349182128906 0.10536755248904228 -6.7706534862518311 ;
createNode transform -n "transform24" -p "polySurface204";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape217" -p "transform24";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface205" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 0 0.10110572166443443 0 ;
	setAttr ".rp" -type "double3" 66.680644989013672 0.022516071796417236 33.612537384033203 ;
	setAttr ".sp" -type "double3" 66.680644989013672 0.022516071796417236 33.612537384033203 ;
createNode transform -n "transform23" -p "polySurface205";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape218" -p "transform23";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform19" -p "MarsTerrain1_G2";
	setAttr ".v" no;
createNode mesh -n "MarsTerrain1_G2Shape" -p "transform19";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface206" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" 9.3366212899021122 0.011593466900163829 -68.259189081399398 ;
	setAttr ".s" -type "double3" 1.5197634848527186 1.2241666265963258 2.1293348051406054 ;
	setAttr ".rp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
	setAttr ".sp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
createNode transform -n "transform22" -p "polySurface206";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape206" -p "transform22";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.5 0 0.625 0 0.625
		 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5
		 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5
		 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75
		 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  35.46895218 -0.016516156 3.15629125 36.41906738 -0.016516156 3.39911342
		 35.49910736 0.72246093 3.29611015 36.48433685 0.72246093 3.18797708 35.47335434 0.89320338 2.52003145
		 36.48433685 0.58372951 2.66013622 35.46895218 -0.016516156 2.60190463 36.28263855 -0.016516156 2.61244917
		 35.94400787 -0.016516156 3.742311 35.94400787 0.81483305 3.58876204 35.94400787 0.66406351 2.56776428
		 35.94400787 -0.016516156 2.44899988 35.42559814 0.45854056 3.4424665 36.4624176 0.45854056 3.4424665
		 35.38098145 0.9855755 2.78395152 36.57670975 0.67610162 2.92405677 35.42559814 0.45854056 2.4056468
		 36.4624176 0.45854056 2.4056468 35.60536957 -0.016516156 2.92405677 36.55549622 -0.016516156 3.0013282299
		 35.94400787 0.45854056 3.61526966 35.94400787 0.78282768 3.054822922 35.94400787 0.45854056 2.2328434
		 36.63522339 0.45854056 2.92405677 35.25279617 0.45854056 2.92405677;
	setAttr -s 44 ".ed[0:43]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0
		 11 7 0 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0
		 17 7 0 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 0 1 2 3
		f 4 11 -4 -27 25
		mu 0 4 2 4 5 3
		f 4 -3 -10 -28 26
		mu 0 4 5 6 7 3
		f 4 -9 0 -25 27
		mu 0 4 7 8 0 3
		f 4 3 14 -30 28
		mu 0 4 5 4 9 10
		f 4 15 -6 -31 29
		mu 0 4 9 11 12 10
		f 4 -5 -14 -32 30
		mu 0 4 12 13 14 10
		f 4 -13 2 -29 31
		mu 0 4 14 6 5 10
		f 4 5 18 -34 32
		mu 0 4 12 11 15 16
		f 4 19 -8 -35 33
		mu 0 4 15 17 18 16
		f 4 -7 -18 -36 34
		mu 0 4 18 19 20 16
		f 4 -17 4 -33 35
		mu 0 4 20 13 12 16
		f 4 -23 -20 -38 36
		mu 0 4 21 22 23 24
		f 4 -19 -16 -39 37
		mu 0 4 23 25 26 24
		f 4 -15 -12 -40 38
		mu 0 4 26 4 2 24
		f 4 -11 -24 -37 39
		mu 0 4 2 1 21 24
		f 4 21 8 -42 40
		mu 0 4 27 8 7 28
		f 4 9 12 -43 41
		mu 0 4 7 6 29 28
		f 4 13 16 -44 42
		mu 0 4 29 30 31 28
		f 4 17 20 -41 43
		mu 0 4 31 32 27 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface207" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" -76.521464877712319 0.011593466900163829 59.126799888544795 ;
	setAttr ".r" -type "double3" 0 105.83343721787016 0 ;
	setAttr ".s" -type "double3" 1.5197634848527186 1.2241666265963258 2.1293348051406054 ;
	setAttr ".rp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
	setAttr ".sp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
createNode transform -n "transform21" -p "polySurface207";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape207" -p "transform21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.5 0 0.625 0 0.625
		 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5
		 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5
		 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75
		 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  35.46895218 -0.016516156 3.15629125 36.41906738 -0.016516156 3.39911342
		 35.49910736 0.72246093 3.29611015 36.48433685 0.72246093 3.18797708 35.47335434 0.89320338 2.52003145
		 36.48433685 0.58372951 2.66013622 35.46895218 -0.016516156 2.60190463 36.28263855 -0.016516156 2.61244917
		 35.94400787 -0.016516156 3.742311 35.94400787 0.81483305 3.58876204 35.94400787 0.66406351 2.56776428
		 35.94400787 -0.016516156 2.44899988 35.42559814 0.45854056 3.4424665 36.4624176 0.45854056 3.4424665
		 35.38098145 0.9855755 2.78395152 36.57670975 0.67610162 2.92405677 35.42559814 0.45854056 2.4056468
		 36.4624176 0.45854056 2.4056468 35.60536957 -0.016516156 2.92405677 36.55549622 -0.016516156 3.0013282299
		 35.94400787 0.45854056 3.61526966 35.94400787 0.78282768 3.054822922 35.94400787 0.45854056 2.2328434
		 36.63522339 0.45854056 2.92405677 35.25279617 0.45854056 2.92405677;
	setAttr -s 44 ".ed[0:43]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0
		 11 7 0 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0
		 17 7 0 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 0 1 2 3
		f 4 11 -4 -27 25
		mu 0 4 2 4 5 3
		f 4 -3 -10 -28 26
		mu 0 4 5 6 7 3
		f 4 -9 0 -25 27
		mu 0 4 7 8 0 3
		f 4 3 14 -30 28
		mu 0 4 5 4 9 10
		f 4 15 -6 -31 29
		mu 0 4 9 11 12 10
		f 4 -5 -14 -32 30
		mu 0 4 12 13 14 10
		f 4 -13 2 -29 31
		mu 0 4 14 6 5 10
		f 4 5 18 -34 32
		mu 0 4 12 11 15 16
		f 4 19 -8 -35 33
		mu 0 4 15 17 18 16
		f 4 -7 -18 -36 34
		mu 0 4 18 19 20 16
		f 4 -17 4 -33 35
		mu 0 4 20 13 12 16
		f 4 -23 -20 -38 36
		mu 0 4 21 22 23 24
		f 4 -19 -16 -39 37
		mu 0 4 23 25 26 24
		f 4 -15 -12 -40 38
		mu 0 4 26 4 2 24
		f 4 -11 -24 -37 39
		mu 0 4 2 1 21 24
		f 4 21 8 -42 40
		mu 0 4 27 8 7 28
		f 4 9 12 -43 41
		mu 0 4 7 6 29 28
		f 4 13 16 -44 42
		mu 0 4 29 30 31 28
		f 4 17 20 -41 43
		mu 0 4 31 32 27 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface208" -p "MarsTerrain1_G2";
	setAttr ".t" -type "double3" -96.9499787692166 0.053931745148585675 -42.899855058199208 ;
	setAttr ".r" -type "double3" 0 -88.382387005822238 0 ;
	setAttr ".s" -type "double3" 1.5197634848527186 1.2241666265963258 2.1293348051406054 ;
	setAttr ".rp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
	setAttr ".sp" -type "double3" 35.944009780883789 0.48452967032790184 2.9875771999359131 ;
createNode transform -n "transform20" -p "polySurface208";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape208" -p "transform20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.5 0 0.625 0 0.625
		 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5
		 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5
		 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75
		 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".vt[0:24]"  35.46895218 -0.016516156 3.15629125 36.41906738 -0.016516156 3.39911342
		 35.49910736 0.72246093 3.29611015 36.48433685 0.72246093 3.18797708 35.47335434 0.89320338 2.52003145
		 36.48433685 0.58372951 2.66013622 35.46895218 -0.016516156 2.60190463 36.28263855 -0.016516156 2.61244917
		 35.94400787 -0.016516156 3.742311 35.94400787 0.81483305 3.58876204 35.94400787 0.66406351 2.56776428
		 35.94400787 -0.016516156 2.44899988 35.42559814 0.45854056 3.4424665 36.4624176 0.45854056 3.4424665
		 35.38098145 0.9855755 2.78395152 36.57670975 0.67610162 2.92405677 35.42559814 0.45854056 2.4056468
		 36.4624176 0.45854056 2.4056468 35.60536957 -0.016516156 2.92405677 36.55549622 -0.016516156 3.0013282299
		 35.94400787 0.45854056 3.61526966 35.94400787 0.78282768 3.054822922 35.94400787 0.45854056 2.2328434
		 36.63522339 0.45854056 2.92405677 35.25279617 0.45854056 2.92405677;
	setAttr -s 44 ".ed[0:43]"  0 8 0 8 1 0 2 9 0 9 3 0 4 10 0 10 5 0 6 11 0
		 11 7 0 0 12 0 12 2 0 1 13 0 13 3 0 2 14 0 14 4 0 3 15 0 15 5 0 4 16 0 16 6 0 5 17 0
		 17 7 0 6 18 0 18 0 0 7 19 0 19 1 0 20 8 0 20 13 0 20 9 0 20 12 0 21 9 0 21 15 0 21 10 0
		 21 14 0 22 10 0 22 17 0 22 11 0 22 16 0 23 19 0 23 17 0 23 15 0 23 13 0 24 18 0 24 12 0
		 24 14 0 24 16 0;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 1 10 -26 24
		mu 0 4 0 1 2 3
		f 4 11 -4 -27 25
		mu 0 4 2 4 5 3
		f 4 -3 -10 -28 26
		mu 0 4 5 6 7 3
		f 4 -9 0 -25 27
		mu 0 4 7 8 0 3
		f 4 3 14 -30 28
		mu 0 4 5 4 9 10
		f 4 15 -6 -31 29
		mu 0 4 9 11 12 10
		f 4 -5 -14 -32 30
		mu 0 4 12 13 14 10
		f 4 -13 2 -29 31
		mu 0 4 14 6 5 10
		f 4 5 18 -34 32
		mu 0 4 12 11 15 16
		f 4 19 -8 -35 33
		mu 0 4 15 17 18 16
		f 4 -7 -18 -36 34
		mu 0 4 18 19 20 16
		f 4 -17 4 -33 35
		mu 0 4 20 13 12 16
		f 4 -23 -20 -38 36
		mu 0 4 21 22 23 24
		f 4 -19 -16 -39 37
		mu 0 4 23 25 26 24
		f 4 -15 -12 -40 38
		mu 0 4 26 4 2 24
		f 4 -11 -24 -37 39
		mu 0 4 2 1 21 24
		f 4 21 8 -42 40
		mu 0 4 27 8 7 28
		f 4 9 12 -43 41
		mu 0 4 7 6 29 28
		f 4 13 16 -44 42
		mu 0 4 29 30 31 28
		f 4 17 20 -41 43
		mu 0 4 31 32 27 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface209";
createNode mesh -n "polySurfaceShape219" -p "polySurface209";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode groupParts -n "groupParts109";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:910]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 102 ".ip";
	setAttr -s 102 ".im";
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10.319998822969387 0.051846415320467062 550.84905026266779 1;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 11;
	setAttr -s 11 ".out";
createNode groupId -n "groupId757";
	setAttr ".ihi" 0;
createNode groupId -n "groupId758";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -193.14505945605501 0.051846415320466965 664.85945139281205 1;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId759";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -14.550872106712532 0.051846415320466854 115.52742702131404 1;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId760";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -271.2596186385158 -0.17940219602043067 278.53953288797959 1;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId761";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -61.802462129432847 -0.17940219602043062 677.19087274585559 1;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId762";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -63.849649003360071 0.13594857868390692 507.92348603150697 1;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId763";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry8";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 7.4218229037990398 -0.29704496710657902 465.1372450701387 1;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId764";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry9";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -169.87106790852073 -0.2557195299633459 366.74164911034671 1;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId765";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry10";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -239.3281042012232 -0.34029157479844618 482.73596121548599 1;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId766";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry11";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -200.37296337550194 -0.17940219602043067 137.30700763511885 1;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId767";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry12";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -110.71192939621466 0.81731659787629574 288.12492286106669 1;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId768";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry13";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -56.498254366632708 7.1683802112247989e-17 545.09735446089144 1;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 8;
	setAttr -s 8 ".out";
createNode groupId -n "groupId769";
	setAttr ".ihi" 0;
createNode groupId -n "groupId770";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry14";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -198.6106131647916 -0.18191263295220994 290.34033022183723 1;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId771";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry15";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 25.433138223055494 -0.18191263295220994 760.95462624499862 1;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId772";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry16";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -6.7548520320430328 0.067793860229887884 544.57541191688529 1;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId773";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry17";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 47.494765571438521 0.067793860229887884 680.02528642888819 1;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId774";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry18";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -120.35163284315747 -0.23124861134089753 357.43953903076476 1;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId775";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry19";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -197.4779943928956 -0.23124861134089753 552.20525691527314 1;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId776";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry20";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -55.855413901216252 -0.23124861134089753 326.03400924666516 1;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId777";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry21";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 152.64760792298102 -0.23124861134089758 463.92062065502728 1;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 9;
	setAttr -s 9 ".out";
createNode groupId -n "groupId778";
	setAttr ".ihi" 0;
createNode groupId -n "groupId779";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry22";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -67.21781080339494 2.8673520844899195e-16 802.69890048459581 1;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId780";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry23";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -342.82108041746409 0.074405718519549455 802.69890048459581 1;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId781";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry24";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 126.84882247810987 0.29853441859704277 802.69890048459581 1;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId782";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry25";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 138.44466044677091 0.067793860229887926 638.91574381182079 1;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId783";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry26";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -35.36364120033916 -0.23124861134089758 336.66394877723019 1;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId784";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry27";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 20.691220539576051 -0.087241422516855446 650.50442119684317 1;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId785";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry28";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -105.1126109312802 -0.095196517422234117 537.91676733569784 1;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId786";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry29";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -8.3526295233268115 -0.095196517422234478 477.02013865806174 1;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId787";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry30";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -453.93761884331872 -2.867352084489919e-16 924.74734053246493 1;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 10;
	setAttr -s 10 ".out";
createNode groupId -n "groupId788";
	setAttr ".ihi" 0;
createNode groupId -n "groupId789";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry31";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -446.15680028346941 -0.52819006321272066 918.76355512958287 1;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId790";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry32";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -412.28623358727748 -0.23124861134089775 808.61591411925428 1;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId791";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry33";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -551.46197003745635 -0.22914757081707948 793.16728607865718 1;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId792";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry34";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -361.78643174528406 -0.095196517422234783 891.98340241800156 1;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId793";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry35";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -315.96474709944681 -0.095196517422234478 763.57940249690023 1;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId794";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry36";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -116.56801879500124 0.067793860229887856 668.12937426215467 1;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId795";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry37";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -112.14935233244964 -0.095196517422234866 894.11805809081136 1;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId796";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry38";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 223.55132426088696 -1.0053974519119042 886.02749766522652 1;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId797";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry39";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -187.93833392813787 -0.095196517422234422 773.81482398246533 1;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId798";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry40";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 354.94638686318768 0.62321185823525926 536.98434067889116 1;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 11;
	setAttr -s 11 ".out";
createNode groupId -n "groupId799";
	setAttr ".ihi" 0;
createNode groupId -n "groupId800";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry41";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 514.49178724512399 -7.5267992217860382e-16 1095.2214791981346 1;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId801";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry42";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 260.38291318038603 -1.7204112506939515e-15 1133.7763430426985 1;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId802";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry43";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -147.40478997796333 -0.23124861134089963 967.97260140459218 1;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId803";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry44";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 270.31889720500982 -0.23124861134089786 879.42836752494679 1;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId804";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry45";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 -101.45983411423842 -0.095196517422236338 1117.6771349068856 1;
createNode groupParts -n "groupParts51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId805";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry46";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 236.32014040060236 -0.52819006321272077 920.94523660520917 1;
createNode groupParts -n "groupParts52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId806";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry47";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 124.7349102514882 -1.0035732295714717e-15 1150.3843482334255 1;
createNode groupParts -n "groupParts53";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId807";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry48";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 510.29817343638797 -0.39213799011891359 1003.9519365388427 1;
createNode groupParts -n "groupParts54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId808";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry49";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 23.054462698411953 -0.2312486113408998 621.29835499753563 1;
createNode groupParts -n "groupParts55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId809";
	setAttr ".ihi" 0;
createNode transformGeometry -n "transformGeometry50";
	setAttr ".txf" -type "matrix" 1.6987662069530829 0 0 0 0 1.6987662069530829 0 0
		 0 0 1.6987662069530829 0 345.59537650112793 0.067793860229887634 878.04028459759616 1;
createNode groupParts -n "groupParts56";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId810";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polySeparate -n "polySeparate6";
	setAttr ".ic" 50;
	setAttr -s 50 ".out";
createNode polyDelEdge -n "polyDelEdge2";
	setAttr ".ics" -type "componentList" 28 "e[6:7]" "e[10:11]" "e[14:15]" "e[18:19]" "e[22:23]" "e[26:27]" "e[30:31]" "e[34:35]" "e[38:39]" "e[42:43]" "e[46:81]" "e[84:85]" "e[88:123]" "e[126:127]" "e[130:165]" "e[168:169]" "e[172:207]" "e[210:211]" "e[214:249]" "e[252:253]" "e[256:291]" "e[294:295]" "e[298:333]" "e[336:337]" "e[340:375]" "e[378:379]" "e[382:417]" "e[440:839]";
	setAttr ".cv" yes;
createNode groupParts -n "groupParts58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:824]";
createNode groupId -n "groupId813";
	setAttr ".ihi" 0;
createNode groupId -n "groupId814";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts60";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId815";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId816";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts62";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId817";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId818";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId819";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId820";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId821";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId822";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId823";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId824";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId825";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId826";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId827";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId828";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId829";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId830";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId831";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId832";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId833";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId834";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId835";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId836";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId837";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId838";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId839";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId840";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId841";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId842";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId843";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId844";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId845";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId846";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId847";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId848";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId849";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId850";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId851";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId852";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId853";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId854";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 20 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
createNode groupId -n "groupId855";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId856";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId857";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId859";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId860";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId861";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId862";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]";
createNode groupId -n "groupId863";
	setAttr ".ihi" 0;
createNode groupId -n "groupId864";
	setAttr ".ihi" 0;
createNode groupId -n "groupId865";
	setAttr ".ihi" 0;
createNode groupId -n "groupId866";
	setAttr ".ihi" 0;
createNode groupId -n "groupId867";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :initialShadingGroup;
	setAttr -s 510 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 444 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :lightList1;
	setAttr -s 2 ".l";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry2.og" "polySurfaceShape112.i";
connectAttr "groupId758.id" "polySurfaceShape112.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape112.iog.og[0].gco";
connectAttr "transformGeometry3.og" "polySurfaceShape113.i";
connectAttr "groupId759.id" "polySurfaceShape113.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape113.iog.og[0].gco";
connectAttr "transformGeometry4.og" "|polySurface102|polySurface105|transform119|polySurfaceShape114.i"
		;
connectAttr "groupId760.id" "|polySurface102|polySurface105|transform119|polySurfaceShape114.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface102|polySurface105|transform119|polySurfaceShape114.iog.og[0].gco"
		;
connectAttr "transformGeometry5.og" "polySurfaceShape115.i";
connectAttr "groupId761.id" "polySurfaceShape115.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape115.iog.og[0].gco";
connectAttr "transformGeometry6.og" "polySurfaceShape116.i";
connectAttr "groupId762.id" "polySurfaceShape116.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape116.iog.og[0].gco";
connectAttr "transformGeometry7.og" "polySurfaceShape117.i";
connectAttr "groupId763.id" "polySurfaceShape117.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape117.iog.og[0].gco";
connectAttr "transformGeometry8.og" "polySurfaceShape118.i";
connectAttr "groupId764.id" "polySurfaceShape118.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape118.iog.og[0].gco";
connectAttr "transformGeometry9.og" "polySurfaceShape119.i";
connectAttr "groupId765.id" "polySurfaceShape119.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape119.iog.og[0].gco";
connectAttr "transformGeometry10.og" "polySurfaceShape120.i";
connectAttr "groupId766.id" "polySurfaceShape120.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape120.iog.og[0].gco";
connectAttr "transformGeometry11.og" "polySurfaceShape121.i";
connectAttr "groupId767.id" "polySurfaceShape121.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape121.iog.og[0].gco";
connectAttr "transformGeometry12.og" "polySurfaceShape122.i";
connectAttr "groupId768.id" "polySurfaceShape122.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape122.iog.og[0].gco";
connectAttr "groupId757.id" "|polySurface102|transform14|polySurfaceShape102.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface102|transform14|polySurfaceShape102.iog.og[0].gco"
		;
connectAttr "transformGeometry13.og" "polySurfaceShape124.i";
connectAttr "groupId770.id" "polySurfaceShape124.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape124.iog.og[0].gco";
connectAttr "transformGeometry14.og" "polySurfaceShape125.i";
connectAttr "groupId771.id" "polySurfaceShape125.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape125.iog.og[0].gco";
connectAttr "transformGeometry15.og" "polySurfaceShape126.i";
connectAttr "groupId772.id" "polySurfaceShape126.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape126.iog.og[0].gco";
connectAttr "transformGeometry16.og" "polySurfaceShape127.i";
connectAttr "groupId773.id" "polySurfaceShape127.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape127.iog.og[0].gco";
connectAttr "transformGeometry17.og" "polySurfaceShape128.i";
connectAttr "groupId774.id" "polySurfaceShape128.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape128.iog.og[0].gco";
connectAttr "transformGeometry18.og" "polySurfaceShape129.i";
connectAttr "groupId775.id" "polySurfaceShape129.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape129.iog.og[0].gco";
connectAttr "transformGeometry19.og" "polySurfaceShape130.i";
connectAttr "groupId776.id" "polySurfaceShape130.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape130.iog.og[0].gco";
connectAttr "transformGeometry20.og" "polySurfaceShape131.i";
connectAttr "groupId777.id" "polySurfaceShape131.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape131.iog.og[0].gco";
connectAttr "groupId769.id" "|polySurface114|transform15|polySurfaceShape114.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface114|transform15|polySurfaceShape114.iog.og[0].gco"
		;
connectAttr "transformGeometry21.og" "|polySurface123|polySurface124|transform102|polySurfaceShape133.i"
		;
connectAttr "groupId779.id" "|polySurface123|polySurface124|transform102|polySurfaceShape133.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface123|polySurface124|transform102|polySurfaceShape133.iog.og[0].gco"
		;
connectAttr "transformGeometry22.og" "polySurfaceShape134.i";
connectAttr "groupId780.id" "polySurfaceShape134.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape134.iog.og[0].gco";
connectAttr "transformGeometry23.og" "polySurfaceShape135.i";
connectAttr "groupId781.id" "polySurfaceShape135.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape135.iog.og[0].gco";
connectAttr "transformGeometry24.og" "polySurfaceShape136.i";
connectAttr "groupId782.id" "polySurfaceShape136.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape136.iog.og[0].gco";
connectAttr "transformGeometry25.og" "polySurfaceShape137.i";
connectAttr "groupId783.id" "polySurfaceShape137.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape137.iog.og[0].gco";
connectAttr "transformGeometry26.og" "polySurfaceShape138.i";
connectAttr "groupId784.id" "polySurfaceShape138.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape138.iog.og[0].gco";
connectAttr "transformGeometry27.og" "polySurfaceShape139.i";
connectAttr "groupId785.id" "polySurfaceShape139.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape139.iog.og[0].gco";
connectAttr "transformGeometry28.og" "polySurfaceShape140.i";
connectAttr "groupId786.id" "polySurfaceShape140.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape140.iog.og[0].gco";
connectAttr "transformGeometry29.og" "polySurfaceShape141.i";
connectAttr "groupId787.id" "polySurfaceShape141.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape141.iog.og[0].gco";
connectAttr "groupId778.id" "|polySurface123|transform16|polySurfaceShape123.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface123|transform16|polySurfaceShape123.iog.og[0].gco"
		;
connectAttr "transformGeometry30.og" "polySurfaceShape143.i";
connectAttr "groupId789.id" "polySurfaceShape143.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape143.iog.og[0].gco";
connectAttr "transformGeometry31.og" "|polySurface133|polySurface135|transform92|polySurfaceShape144.i"
		;
connectAttr "groupId790.id" "|polySurface133|polySurface135|transform92|polySurfaceShape144.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface133|polySurface135|transform92|polySurfaceShape144.iog.og[0].gco"
		;
connectAttr "transformGeometry32.og" "polySurfaceShape145.i";
connectAttr "groupId791.id" "polySurfaceShape145.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape145.iog.og[0].gco";
connectAttr "transformGeometry33.og" "polySurfaceShape146.i";
connectAttr "groupId792.id" "polySurfaceShape146.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape146.iog.og[0].gco";
connectAttr "transformGeometry34.og" "polySurfaceShape147.i";
connectAttr "groupId793.id" "polySurfaceShape147.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape147.iog.og[0].gco";
connectAttr "transformGeometry35.og" "polySurfaceShape148.i";
connectAttr "groupId794.id" "polySurfaceShape148.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape148.iog.og[0].gco";
connectAttr "transformGeometry36.og" "polySurfaceShape149.i";
connectAttr "groupId795.id" "polySurfaceShape149.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape149.iog.og[0].gco";
connectAttr "transformGeometry37.og" "polySurfaceShape150.i";
connectAttr "groupId796.id" "polySurfaceShape150.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape150.iog.og[0].gco";
connectAttr "transformGeometry38.og" "polySurfaceShape151.i";
connectAttr "groupId797.id" "polySurfaceShape151.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape151.iog.og[0].gco";
connectAttr "transformGeometry39.og" "polySurfaceShape152.i";
connectAttr "groupId798.id" "polySurfaceShape152.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape152.iog.og[0].gco";
connectAttr "groupId788.id" "|polySurface133|transform17|polySurfaceShape133.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface133|transform17|polySurfaceShape133.iog.og[0].gco"
		;
connectAttr "transformGeometry40.og" "polySurfaceShape153.i";
connectAttr "groupId800.id" "polySurfaceShape153.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape153.iog.og[0].gco";
connectAttr "transformGeometry41.og" "polySurfaceShape154.i";
connectAttr "groupId801.id" "polySurfaceShape154.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape154.iog.og[0].gco";
connectAttr "transformGeometry42.og" "polySurfaceShape155.i";
connectAttr "groupId802.id" "polySurfaceShape155.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape155.iog.og[0].gco";
connectAttr "transformGeometry43.og" "polySurfaceShape156.i";
connectAttr "groupId803.id" "polySurfaceShape156.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape156.iog.og[0].gco";
connectAttr "transformGeometry44.og" "polySurfaceShape157.i";
connectAttr "groupId804.id" "polySurfaceShape157.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape157.iog.og[0].gco";
connectAttr "transformGeometry45.og" "polySurfaceShape158.i";
connectAttr "groupId805.id" "polySurfaceShape158.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape158.iog.og[0].gco";
connectAttr "transformGeometry46.og" "polySurfaceShape159.i";
connectAttr "groupId806.id" "polySurfaceShape159.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape159.iog.og[0].gco";
connectAttr "transformGeometry47.og" "polySurfaceShape160.i";
connectAttr "groupId807.id" "polySurfaceShape160.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape160.iog.og[0].gco";
connectAttr "transformGeometry48.og" "polySurfaceShape161.i";
connectAttr "groupId808.id" "polySurfaceShape161.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape161.iog.og[0].gco";
connectAttr "transformGeometry49.og" "polySurfaceShape162.i";
connectAttr "groupId809.id" "polySurfaceShape162.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape162.iog.og[0].gco";
connectAttr "transformGeometry50.og" "polySurfaceShape163.i";
connectAttr "groupId810.id" "polySurfaceShape163.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape163.iog.og[0].gco";
connectAttr "groupId799.id" "|polySurface144|transform18|polySurfaceShape144.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface144|transform18|polySurfaceShape144.iog.og[0].gco"
		;
connectAttr "groupParts59.og" "polySurfaceShape169.i";
connectAttr "groupId814.id" "polySurfaceShape169.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape169.iog.og[0].gco";
connectAttr "groupParts60.og" "polySurfaceShape170.i";
connectAttr "groupId815.id" "polySurfaceShape170.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape170.iog.og[0].gco";
connectAttr "groupParts61.og" "polySurfaceShape171.i";
connectAttr "groupId816.id" "polySurfaceShape171.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape171.iog.og[0].gco";
connectAttr "groupParts62.og" "polySurfaceShape172.i";
connectAttr "groupId817.id" "polySurfaceShape172.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape172.iog.og[0].gco";
connectAttr "groupParts63.og" "polySurfaceShape173.i";
connectAttr "groupId818.id" "polySurfaceShape173.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape173.iog.og[0].gco";
connectAttr "groupParts64.og" "polySurfaceShape174.i";
connectAttr "groupId819.id" "polySurfaceShape174.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape174.iog.og[0].gco";
connectAttr "groupParts65.og" "polySurfaceShape175.i";
connectAttr "groupId820.id" "polySurfaceShape175.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape175.iog.og[0].gco";
connectAttr "groupParts66.og" "polySurfaceShape176.i";
connectAttr "groupId821.id" "polySurfaceShape176.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape176.iog.og[0].gco";
connectAttr "groupParts67.og" "polySurfaceShape177.i";
connectAttr "groupId822.id" "polySurfaceShape177.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape177.iog.og[0].gco";
connectAttr "groupParts68.og" "polySurfaceShape178.i";
connectAttr "groupId823.id" "polySurfaceShape178.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape178.iog.og[0].gco";
connectAttr "groupParts69.og" "polySurfaceShape179.i";
connectAttr "groupId824.id" "polySurfaceShape179.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape179.iog.og[0].gco";
connectAttr "groupParts70.og" "polySurfaceShape180.i";
connectAttr "groupId825.id" "polySurfaceShape180.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape180.iog.og[0].gco";
connectAttr "groupParts71.og" "polySurfaceShape181.i";
connectAttr "groupId826.id" "polySurfaceShape181.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape181.iog.og[0].gco";
connectAttr "groupParts72.og" "polySurfaceShape182.i";
connectAttr "groupId827.id" "polySurfaceShape182.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape182.iog.og[0].gco";
connectAttr "groupParts73.og" "polySurfaceShape183.i";
connectAttr "groupId828.id" "polySurfaceShape183.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape183.iog.og[0].gco";
connectAttr "groupParts74.og" "polySurfaceShape184.i";
connectAttr "groupId829.id" "polySurfaceShape184.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape184.iog.og[0].gco";
connectAttr "groupParts75.og" "polySurfaceShape185.i";
connectAttr "groupId830.id" "polySurfaceShape185.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape185.iog.og[0].gco";
connectAttr "groupParts76.og" "polySurfaceShape186.i";
connectAttr "groupId831.id" "polySurfaceShape186.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape186.iog.og[0].gco";
connectAttr "groupParts77.og" "polySurfaceShape187.i";
connectAttr "groupId832.id" "polySurfaceShape187.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape187.iog.og[0].gco";
connectAttr "groupParts78.og" "polySurfaceShape188.i";
connectAttr "groupId833.id" "polySurfaceShape188.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape188.iog.og[0].gco";
connectAttr "groupParts79.og" "polySurfaceShape189.i";
connectAttr "groupId834.id" "polySurfaceShape189.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape189.iog.og[0].gco";
connectAttr "groupParts80.og" "polySurfaceShape190.i";
connectAttr "groupId835.id" "polySurfaceShape190.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape190.iog.og[0].gco";
connectAttr "groupParts81.og" "polySurfaceShape191.i";
connectAttr "groupId836.id" "polySurfaceShape191.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape191.iog.og[0].gco";
connectAttr "groupParts82.og" "polySurfaceShape192.i";
connectAttr "groupId837.id" "polySurfaceShape192.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape192.iog.og[0].gco";
connectAttr "groupParts83.og" "polySurfaceShape193.i";
connectAttr "groupId838.id" "polySurfaceShape193.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape193.iog.og[0].gco";
connectAttr "groupParts84.og" "polySurfaceShape194.i";
connectAttr "groupId839.id" "polySurfaceShape194.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape194.iog.og[0].gco";
connectAttr "groupParts85.og" "polySurfaceShape195.i";
connectAttr "groupId840.id" "polySurfaceShape195.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape195.iog.og[0].gco";
connectAttr "groupParts86.og" "polySurfaceShape196.i";
connectAttr "groupId841.id" "polySurfaceShape196.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape196.iog.og[0].gco";
connectAttr "groupParts87.og" "polySurfaceShape197.i";
connectAttr "groupId842.id" "polySurfaceShape197.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape197.iog.og[0].gco";
connectAttr "groupParts88.og" "polySurfaceShape198.i";
connectAttr "groupId843.id" "polySurfaceShape198.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape198.iog.og[0].gco";
connectAttr "groupParts89.og" "polySurfaceShape199.i";
connectAttr "groupId844.id" "polySurfaceShape199.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape199.iog.og[0].gco";
connectAttr "groupParts90.og" "polySurfaceShape200.i";
connectAttr "groupId845.id" "polySurfaceShape200.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape200.iog.og[0].gco";
connectAttr "groupParts91.og" "polySurfaceShape201.i";
connectAttr "groupId846.id" "polySurfaceShape201.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape201.iog.og[0].gco";
connectAttr "groupParts92.og" "polySurfaceShape202.i";
connectAttr "groupId847.id" "polySurfaceShape202.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape202.iog.og[0].gco";
connectAttr "groupParts93.og" "polySurfaceShape203.i";
connectAttr "groupId848.id" "polySurfaceShape203.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape203.iog.og[0].gco";
connectAttr "groupParts94.og" "polySurfaceShape204.i";
connectAttr "groupId849.id" "polySurfaceShape204.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape204.iog.og[0].gco";
connectAttr "groupParts95.og" "polySurfaceShape205.i";
connectAttr "groupId850.id" "polySurfaceShape205.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape205.iog.og[0].gco";
connectAttr "groupParts96.og" "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.i"
		;
connectAttr "groupId851.id" "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.iog.og[0].gco"
		;
connectAttr "groupParts97.og" "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.i"
		;
connectAttr "groupId852.id" "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.iog.og[0].gco"
		;
connectAttr "groupParts98.og" "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.i"
		;
connectAttr "groupId853.id" "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.iog.og[0].gco"
		;
connectAttr "groupParts99.og" "polySurfaceShape209.i";
connectAttr "groupId854.id" "polySurfaceShape209.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape209.iog.og[0].gco";
connectAttr "groupParts100.og" "polySurfaceShape210.i";
connectAttr "groupId855.id" "polySurfaceShape210.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape210.iog.og[0].gco";
connectAttr "groupParts101.og" "polySurfaceShape211.i";
connectAttr "groupId856.id" "polySurfaceShape211.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape211.iog.og[0].gco";
connectAttr "groupParts102.og" "polySurfaceShape212.i";
connectAttr "groupId857.id" "polySurfaceShape212.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape212.iog.og[0].gco";
connectAttr "groupParts103.og" "polySurfaceShape213.i";
connectAttr "groupId858.id" "polySurfaceShape213.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape213.iog.og[0].gco";
connectAttr "groupParts104.og" "polySurfaceShape214.i";
connectAttr "groupId859.id" "polySurfaceShape214.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape214.iog.og[0].gco";
connectAttr "groupParts105.og" "polySurfaceShape215.i";
connectAttr "groupId860.id" "polySurfaceShape215.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape215.iog.og[0].gco";
connectAttr "groupParts106.og" "polySurfaceShape216.i";
connectAttr "groupId861.id" "polySurfaceShape216.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape216.iog.og[0].gco";
connectAttr "groupParts107.og" "polySurfaceShape217.i";
connectAttr "groupId862.id" "polySurfaceShape217.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape217.iog.og[0].gco";
connectAttr "groupParts108.og" "polySurfaceShape218.i";
connectAttr "groupId863.id" "polySurfaceShape218.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape218.iog.og[0].gco";
connectAttr "polyDelEdge2.out" "MarsTerrain1_G2Shape.i";
connectAttr "groupId813.id" "MarsTerrain1_G2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MarsTerrain1_G2Shape.iog.og[0].gco";
connectAttr "groupId864.id" "|MarsTerrain1_G2|polySurface206|transform22|polySurfaceShape206.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface206|transform22|polySurfaceShape206.iog.og[0].gco"
		;
connectAttr "groupId865.id" "|MarsTerrain1_G2|polySurface207|transform21|polySurfaceShape207.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface207|transform21|polySurfaceShape207.iog.og[0].gco"
		;
connectAttr "groupId866.id" "|MarsTerrain1_G2|polySurface208|transform20|polySurfaceShape208.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|MarsTerrain1_G2|polySurface208|transform20|polySurfaceShape208.iog.og[0].gco"
		;
connectAttr "groupParts109.og" "polySurfaceShape219.i";
connectAttr "groupId867.id" "polySurfaceShape219.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape219.iog.og[0].gco";
connectAttr "polyUnite2.out" "groupParts109.ig";
connectAttr "groupId867.id" "groupParts109.gi";
connectAttr "polySurfaceShape112.o" "polyUnite2.ip[0]";
connectAttr "polySurfaceShape113.o" "polyUnite2.ip[1]";
connectAttr "|polySurface102|polySurface105|transform119|polySurfaceShape114.o" "polyUnite2.ip[2]"
		;
connectAttr "polySurfaceShape115.o" "polyUnite2.ip[3]";
connectAttr "polySurfaceShape116.o" "polyUnite2.ip[4]";
connectAttr "polySurfaceShape117.o" "polyUnite2.ip[5]";
connectAttr "polySurfaceShape118.o" "polyUnite2.ip[6]";
connectAttr "polySurfaceShape119.o" "polyUnite2.ip[7]";
connectAttr "polySurfaceShape120.o" "polyUnite2.ip[8]";
connectAttr "polySurfaceShape121.o" "polyUnite2.ip[9]";
connectAttr "polySurfaceShape122.o" "polyUnite2.ip[10]";
connectAttr "polySurfaceShape124.o" "polyUnite2.ip[11]";
connectAttr "polySurfaceShape125.o" "polyUnite2.ip[12]";
connectAttr "polySurfaceShape126.o" "polyUnite2.ip[13]";
connectAttr "polySurfaceShape127.o" "polyUnite2.ip[14]";
connectAttr "polySurfaceShape128.o" "polyUnite2.ip[15]";
connectAttr "polySurfaceShape129.o" "polyUnite2.ip[16]";
connectAttr "polySurfaceShape130.o" "polyUnite2.ip[17]";
connectAttr "polySurfaceShape131.o" "polyUnite2.ip[18]";
connectAttr "|polySurface123|polySurface124|transform102|polySurfaceShape133.o" "polyUnite2.ip[19]"
		;
connectAttr "polySurfaceShape134.o" "polyUnite2.ip[20]";
connectAttr "polySurfaceShape135.o" "polyUnite2.ip[21]";
connectAttr "polySurfaceShape136.o" "polyUnite2.ip[22]";
connectAttr "polySurfaceShape137.o" "polyUnite2.ip[23]";
connectAttr "polySurfaceShape138.o" "polyUnite2.ip[24]";
connectAttr "polySurfaceShape139.o" "polyUnite2.ip[25]";
connectAttr "polySurfaceShape140.o" "polyUnite2.ip[26]";
connectAttr "polySurfaceShape141.o" "polyUnite2.ip[27]";
connectAttr "polySurfaceShape143.o" "polyUnite2.ip[28]";
connectAttr "|polySurface133|polySurface135|transform92|polySurfaceShape144.o" "polyUnite2.ip[29]"
		;
connectAttr "polySurfaceShape145.o" "polyUnite2.ip[30]";
connectAttr "polySurfaceShape146.o" "polyUnite2.ip[31]";
connectAttr "polySurfaceShape147.o" "polyUnite2.ip[32]";
connectAttr "polySurfaceShape148.o" "polyUnite2.ip[33]";
connectAttr "polySurfaceShape149.o" "polyUnite2.ip[34]";
connectAttr "polySurfaceShape150.o" "polyUnite2.ip[35]";
connectAttr "polySurfaceShape151.o" "polyUnite2.ip[36]";
connectAttr "polySurfaceShape152.o" "polyUnite2.ip[37]";
connectAttr "polySurfaceShape153.o" "polyUnite2.ip[38]";
connectAttr "polySurfaceShape154.o" "polyUnite2.ip[39]";
connectAttr "polySurfaceShape155.o" "polyUnite2.ip[40]";
connectAttr "polySurfaceShape156.o" "polyUnite2.ip[41]";
connectAttr "polySurfaceShape157.o" "polyUnite2.ip[42]";
connectAttr "polySurfaceShape158.o" "polyUnite2.ip[43]";
connectAttr "polySurfaceShape159.o" "polyUnite2.ip[44]";
connectAttr "polySurfaceShape160.o" "polyUnite2.ip[45]";
connectAttr "polySurfaceShape161.o" "polyUnite2.ip[46]";
connectAttr "polySurfaceShape162.o" "polyUnite2.ip[47]";
connectAttr "polySurfaceShape163.o" "polyUnite2.ip[48]";
connectAttr "polySurfaceShape169.o" "polyUnite2.ip[49]";
connectAttr "polySurfaceShape170.o" "polyUnite2.ip[50]";
connectAttr "polySurfaceShape171.o" "polyUnite2.ip[51]";
connectAttr "polySurfaceShape172.o" "polyUnite2.ip[52]";
connectAttr "polySurfaceShape173.o" "polyUnite2.ip[53]";
connectAttr "polySurfaceShape174.o" "polyUnite2.ip[54]";
connectAttr "polySurfaceShape175.o" "polyUnite2.ip[55]";
connectAttr "polySurfaceShape176.o" "polyUnite2.ip[56]";
connectAttr "polySurfaceShape177.o" "polyUnite2.ip[57]";
connectAttr "polySurfaceShape178.o" "polyUnite2.ip[58]";
connectAttr "polySurfaceShape179.o" "polyUnite2.ip[59]";
connectAttr "polySurfaceShape180.o" "polyUnite2.ip[60]";
connectAttr "polySurfaceShape181.o" "polyUnite2.ip[61]";
connectAttr "polySurfaceShape182.o" "polyUnite2.ip[62]";
connectAttr "polySurfaceShape183.o" "polyUnite2.ip[63]";
connectAttr "polySurfaceShape184.o" "polyUnite2.ip[64]";
connectAttr "polySurfaceShape185.o" "polyUnite2.ip[65]";
connectAttr "polySurfaceShape186.o" "polyUnite2.ip[66]";
connectAttr "polySurfaceShape187.o" "polyUnite2.ip[67]";
connectAttr "polySurfaceShape188.o" "polyUnite2.ip[68]";
connectAttr "polySurfaceShape189.o" "polyUnite2.ip[69]";
connectAttr "polySurfaceShape190.o" "polyUnite2.ip[70]";
connectAttr "polySurfaceShape191.o" "polyUnite2.ip[71]";
connectAttr "polySurfaceShape192.o" "polyUnite2.ip[72]";
connectAttr "polySurfaceShape193.o" "polyUnite2.ip[73]";
connectAttr "polySurfaceShape194.o" "polyUnite2.ip[74]";
connectAttr "polySurfaceShape195.o" "polyUnite2.ip[75]";
connectAttr "polySurfaceShape196.o" "polyUnite2.ip[76]";
connectAttr "polySurfaceShape197.o" "polyUnite2.ip[77]";
connectAttr "polySurfaceShape198.o" "polyUnite2.ip[78]";
connectAttr "polySurfaceShape199.o" "polyUnite2.ip[79]";
connectAttr "polySurfaceShape200.o" "polyUnite2.ip[80]";
connectAttr "polySurfaceShape201.o" "polyUnite2.ip[81]";
connectAttr "polySurfaceShape202.o" "polyUnite2.ip[82]";
connectAttr "polySurfaceShape203.o" "polyUnite2.ip[83]";
connectAttr "polySurfaceShape204.o" "polyUnite2.ip[84]";
connectAttr "polySurfaceShape205.o" "polyUnite2.ip[85]";
connectAttr "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.o" "polyUnite2.ip[86]"
		;
connectAttr "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.o" "polyUnite2.ip[87]"
		;
connectAttr "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.o" "polyUnite2.ip[88]"
		;
connectAttr "polySurfaceShape209.o" "polyUnite2.ip[89]";
connectAttr "polySurfaceShape210.o" "polyUnite2.ip[90]";
connectAttr "polySurfaceShape211.o" "polyUnite2.ip[91]";
connectAttr "polySurfaceShape212.o" "polyUnite2.ip[92]";
connectAttr "polySurfaceShape213.o" "polyUnite2.ip[93]";
connectAttr "polySurfaceShape214.o" "polyUnite2.ip[94]";
connectAttr "polySurfaceShape215.o" "polyUnite2.ip[95]";
connectAttr "polySurfaceShape216.o" "polyUnite2.ip[96]";
connectAttr "polySurfaceShape217.o" "polyUnite2.ip[97]";
connectAttr "polySurfaceShape218.o" "polyUnite2.ip[98]";
connectAttr "|MarsTerrain1_G2|polySurface206|transform22|polySurfaceShape206.o" "polyUnite2.ip[99]"
		;
connectAttr "|MarsTerrain1_G2|polySurface207|transform21|polySurfaceShape207.o" "polyUnite2.ip[100]"
		;
connectAttr "|MarsTerrain1_G2|polySurface208|transform20|polySurfaceShape208.o" "polyUnite2.ip[101]"
		;
connectAttr "polySurfaceShape112.wm" "polyUnite2.im[0]";
connectAttr "polySurfaceShape113.wm" "polyUnite2.im[1]";
connectAttr "|polySurface102|polySurface105|transform119|polySurfaceShape114.wm" "polyUnite2.im[2]"
		;
connectAttr "polySurfaceShape115.wm" "polyUnite2.im[3]";
connectAttr "polySurfaceShape116.wm" "polyUnite2.im[4]";
connectAttr "polySurfaceShape117.wm" "polyUnite2.im[5]";
connectAttr "polySurfaceShape118.wm" "polyUnite2.im[6]";
connectAttr "polySurfaceShape119.wm" "polyUnite2.im[7]";
connectAttr "polySurfaceShape120.wm" "polyUnite2.im[8]";
connectAttr "polySurfaceShape121.wm" "polyUnite2.im[9]";
connectAttr "polySurfaceShape122.wm" "polyUnite2.im[10]";
connectAttr "polySurfaceShape124.wm" "polyUnite2.im[11]";
connectAttr "polySurfaceShape125.wm" "polyUnite2.im[12]";
connectAttr "polySurfaceShape126.wm" "polyUnite2.im[13]";
connectAttr "polySurfaceShape127.wm" "polyUnite2.im[14]";
connectAttr "polySurfaceShape128.wm" "polyUnite2.im[15]";
connectAttr "polySurfaceShape129.wm" "polyUnite2.im[16]";
connectAttr "polySurfaceShape130.wm" "polyUnite2.im[17]";
connectAttr "polySurfaceShape131.wm" "polyUnite2.im[18]";
connectAttr "|polySurface123|polySurface124|transform102|polySurfaceShape133.wm" "polyUnite2.im[19]"
		;
connectAttr "polySurfaceShape134.wm" "polyUnite2.im[20]";
connectAttr "polySurfaceShape135.wm" "polyUnite2.im[21]";
connectAttr "polySurfaceShape136.wm" "polyUnite2.im[22]";
connectAttr "polySurfaceShape137.wm" "polyUnite2.im[23]";
connectAttr "polySurfaceShape138.wm" "polyUnite2.im[24]";
connectAttr "polySurfaceShape139.wm" "polyUnite2.im[25]";
connectAttr "polySurfaceShape140.wm" "polyUnite2.im[26]";
connectAttr "polySurfaceShape141.wm" "polyUnite2.im[27]";
connectAttr "polySurfaceShape143.wm" "polyUnite2.im[28]";
connectAttr "|polySurface133|polySurface135|transform92|polySurfaceShape144.wm" "polyUnite2.im[29]"
		;
connectAttr "polySurfaceShape145.wm" "polyUnite2.im[30]";
connectAttr "polySurfaceShape146.wm" "polyUnite2.im[31]";
connectAttr "polySurfaceShape147.wm" "polyUnite2.im[32]";
connectAttr "polySurfaceShape148.wm" "polyUnite2.im[33]";
connectAttr "polySurfaceShape149.wm" "polyUnite2.im[34]";
connectAttr "polySurfaceShape150.wm" "polyUnite2.im[35]";
connectAttr "polySurfaceShape151.wm" "polyUnite2.im[36]";
connectAttr "polySurfaceShape152.wm" "polyUnite2.im[37]";
connectAttr "polySurfaceShape153.wm" "polyUnite2.im[38]";
connectAttr "polySurfaceShape154.wm" "polyUnite2.im[39]";
connectAttr "polySurfaceShape155.wm" "polyUnite2.im[40]";
connectAttr "polySurfaceShape156.wm" "polyUnite2.im[41]";
connectAttr "polySurfaceShape157.wm" "polyUnite2.im[42]";
connectAttr "polySurfaceShape158.wm" "polyUnite2.im[43]";
connectAttr "polySurfaceShape159.wm" "polyUnite2.im[44]";
connectAttr "polySurfaceShape160.wm" "polyUnite2.im[45]";
connectAttr "polySurfaceShape161.wm" "polyUnite2.im[46]";
connectAttr "polySurfaceShape162.wm" "polyUnite2.im[47]";
connectAttr "polySurfaceShape163.wm" "polyUnite2.im[48]";
connectAttr "polySurfaceShape169.wm" "polyUnite2.im[49]";
connectAttr "polySurfaceShape170.wm" "polyUnite2.im[50]";
connectAttr "polySurfaceShape171.wm" "polyUnite2.im[51]";
connectAttr "polySurfaceShape172.wm" "polyUnite2.im[52]";
connectAttr "polySurfaceShape173.wm" "polyUnite2.im[53]";
connectAttr "polySurfaceShape174.wm" "polyUnite2.im[54]";
connectAttr "polySurfaceShape175.wm" "polyUnite2.im[55]";
connectAttr "polySurfaceShape176.wm" "polyUnite2.im[56]";
connectAttr "polySurfaceShape177.wm" "polyUnite2.im[57]";
connectAttr "polySurfaceShape178.wm" "polyUnite2.im[58]";
connectAttr "polySurfaceShape179.wm" "polyUnite2.im[59]";
connectAttr "polySurfaceShape180.wm" "polyUnite2.im[60]";
connectAttr "polySurfaceShape181.wm" "polyUnite2.im[61]";
connectAttr "polySurfaceShape182.wm" "polyUnite2.im[62]";
connectAttr "polySurfaceShape183.wm" "polyUnite2.im[63]";
connectAttr "polySurfaceShape184.wm" "polyUnite2.im[64]";
connectAttr "polySurfaceShape185.wm" "polyUnite2.im[65]";
connectAttr "polySurfaceShape186.wm" "polyUnite2.im[66]";
connectAttr "polySurfaceShape187.wm" "polyUnite2.im[67]";
connectAttr "polySurfaceShape188.wm" "polyUnite2.im[68]";
connectAttr "polySurfaceShape189.wm" "polyUnite2.im[69]";
connectAttr "polySurfaceShape190.wm" "polyUnite2.im[70]";
connectAttr "polySurfaceShape191.wm" "polyUnite2.im[71]";
connectAttr "polySurfaceShape192.wm" "polyUnite2.im[72]";
connectAttr "polySurfaceShape193.wm" "polyUnite2.im[73]";
connectAttr "polySurfaceShape194.wm" "polyUnite2.im[74]";
connectAttr "polySurfaceShape195.wm" "polyUnite2.im[75]";
connectAttr "polySurfaceShape196.wm" "polyUnite2.im[76]";
connectAttr "polySurfaceShape197.wm" "polyUnite2.im[77]";
connectAttr "polySurfaceShape198.wm" "polyUnite2.im[78]";
connectAttr "polySurfaceShape199.wm" "polyUnite2.im[79]";
connectAttr "polySurfaceShape200.wm" "polyUnite2.im[80]";
connectAttr "polySurfaceShape201.wm" "polyUnite2.im[81]";
connectAttr "polySurfaceShape202.wm" "polyUnite2.im[82]";
connectAttr "polySurfaceShape203.wm" "polyUnite2.im[83]";
connectAttr "polySurfaceShape204.wm" "polyUnite2.im[84]";
connectAttr "polySurfaceShape205.wm" "polyUnite2.im[85]";
connectAttr "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.wm" "polyUnite2.im[86]"
		;
connectAttr "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.wm" "polyUnite2.im[87]"
		;
connectAttr "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.wm" "polyUnite2.im[88]"
		;
connectAttr "polySurfaceShape209.wm" "polyUnite2.im[89]";
connectAttr "polySurfaceShape210.wm" "polyUnite2.im[90]";
connectAttr "polySurfaceShape211.wm" "polyUnite2.im[91]";
connectAttr "polySurfaceShape212.wm" "polyUnite2.im[92]";
connectAttr "polySurfaceShape213.wm" "polyUnite2.im[93]";
connectAttr "polySurfaceShape214.wm" "polyUnite2.im[94]";
connectAttr "polySurfaceShape215.wm" "polyUnite2.im[95]";
connectAttr "polySurfaceShape216.wm" "polyUnite2.im[96]";
connectAttr "polySurfaceShape217.wm" "polyUnite2.im[97]";
connectAttr "polySurfaceShape218.wm" "polyUnite2.im[98]";
connectAttr "|MarsTerrain1_G2|polySurface206|transform22|polySurfaceShape206.wm" "polyUnite2.im[99]"
		;
connectAttr "|MarsTerrain1_G2|polySurface207|transform21|polySurfaceShape207.wm" "polyUnite2.im[100]"
		;
connectAttr "|MarsTerrain1_G2|polySurface208|transform20|polySurfaceShape208.wm" "polyUnite2.im[101]"
		;
connectAttr "groupParts8.og" "transformGeometry2.ig";
connectAttr "polySeparate1.out[0]" "groupParts8.ig";
connectAttr "groupId758.id" "groupParts8.gi";
connectAttr "|polySurface102|transform14|polySurfaceShape102.o" "polySeparate1.ip"
		;
connectAttr "groupParts9.og" "transformGeometry3.ig";
connectAttr "polySeparate1.out[1]" "groupParts9.ig";
connectAttr "groupId759.id" "groupParts9.gi";
connectAttr "groupParts10.og" "transformGeometry4.ig";
connectAttr "polySeparate1.out[2]" "groupParts10.ig";
connectAttr "groupId760.id" "groupParts10.gi";
connectAttr "groupParts11.og" "transformGeometry5.ig";
connectAttr "polySeparate1.out[3]" "groupParts11.ig";
connectAttr "groupId761.id" "groupParts11.gi";
connectAttr "groupParts12.og" "transformGeometry6.ig";
connectAttr "polySeparate1.out[4]" "groupParts12.ig";
connectAttr "groupId762.id" "groupParts12.gi";
connectAttr "groupParts13.og" "transformGeometry7.ig";
connectAttr "polySeparate1.out[5]" "groupParts13.ig";
connectAttr "groupId763.id" "groupParts13.gi";
connectAttr "groupParts14.og" "transformGeometry8.ig";
connectAttr "polySeparate1.out[6]" "groupParts14.ig";
connectAttr "groupId764.id" "groupParts14.gi";
connectAttr "groupParts15.og" "transformGeometry9.ig";
connectAttr "polySeparate1.out[7]" "groupParts15.ig";
connectAttr "groupId765.id" "groupParts15.gi";
connectAttr "groupParts16.og" "transformGeometry10.ig";
connectAttr "polySeparate1.out[8]" "groupParts16.ig";
connectAttr "groupId766.id" "groupParts16.gi";
connectAttr "groupParts17.og" "transformGeometry11.ig";
connectAttr "polySeparate1.out[9]" "groupParts17.ig";
connectAttr "groupId767.id" "groupParts17.gi";
connectAttr "groupParts18.og" "transformGeometry12.ig";
connectAttr "polySeparate1.out[10]" "groupParts18.ig";
connectAttr "groupId768.id" "groupParts18.gi";
connectAttr "groupParts19.og" "transformGeometry13.ig";
connectAttr "polySeparate2.out[0]" "groupParts19.ig";
connectAttr "groupId770.id" "groupParts19.gi";
connectAttr "|polySurface114|transform15|polySurfaceShape114.o" "polySeparate2.ip"
		;
connectAttr "groupParts20.og" "transformGeometry14.ig";
connectAttr "polySeparate2.out[1]" "groupParts20.ig";
connectAttr "groupId771.id" "groupParts20.gi";
connectAttr "groupParts21.og" "transformGeometry15.ig";
connectAttr "polySeparate2.out[2]" "groupParts21.ig";
connectAttr "groupId772.id" "groupParts21.gi";
connectAttr "groupParts22.og" "transformGeometry16.ig";
connectAttr "polySeparate2.out[3]" "groupParts22.ig";
connectAttr "groupId773.id" "groupParts22.gi";
connectAttr "groupParts23.og" "transformGeometry17.ig";
connectAttr "polySeparate2.out[4]" "groupParts23.ig";
connectAttr "groupId774.id" "groupParts23.gi";
connectAttr "groupParts24.og" "transformGeometry18.ig";
connectAttr "polySeparate2.out[5]" "groupParts24.ig";
connectAttr "groupId775.id" "groupParts24.gi";
connectAttr "groupParts25.og" "transformGeometry19.ig";
connectAttr "polySeparate2.out[6]" "groupParts25.ig";
connectAttr "groupId776.id" "groupParts25.gi";
connectAttr "groupParts26.og" "transformGeometry20.ig";
connectAttr "polySeparate2.out[7]" "groupParts26.ig";
connectAttr "groupId777.id" "groupParts26.gi";
connectAttr "groupParts27.og" "transformGeometry21.ig";
connectAttr "polySeparate3.out[0]" "groupParts27.ig";
connectAttr "groupId779.id" "groupParts27.gi";
connectAttr "|polySurface123|transform16|polySurfaceShape123.o" "polySeparate3.ip"
		;
connectAttr "groupParts28.og" "transformGeometry22.ig";
connectAttr "polySeparate3.out[1]" "groupParts28.ig";
connectAttr "groupId780.id" "groupParts28.gi";
connectAttr "groupParts29.og" "transformGeometry23.ig";
connectAttr "polySeparate3.out[2]" "groupParts29.ig";
connectAttr "groupId781.id" "groupParts29.gi";
connectAttr "groupParts30.og" "transformGeometry24.ig";
connectAttr "polySeparate3.out[3]" "groupParts30.ig";
connectAttr "groupId782.id" "groupParts30.gi";
connectAttr "groupParts31.og" "transformGeometry25.ig";
connectAttr "polySeparate3.out[4]" "groupParts31.ig";
connectAttr "groupId783.id" "groupParts31.gi";
connectAttr "groupParts32.og" "transformGeometry26.ig";
connectAttr "polySeparate3.out[5]" "groupParts32.ig";
connectAttr "groupId784.id" "groupParts32.gi";
connectAttr "groupParts33.og" "transformGeometry27.ig";
connectAttr "polySeparate3.out[6]" "groupParts33.ig";
connectAttr "groupId785.id" "groupParts33.gi";
connectAttr "groupParts34.og" "transformGeometry28.ig";
connectAttr "polySeparate3.out[7]" "groupParts34.ig";
connectAttr "groupId786.id" "groupParts34.gi";
connectAttr "groupParts35.og" "transformGeometry29.ig";
connectAttr "polySeparate3.out[8]" "groupParts35.ig";
connectAttr "groupId787.id" "groupParts35.gi";
connectAttr "groupParts36.og" "transformGeometry30.ig";
connectAttr "polySeparate4.out[0]" "groupParts36.ig";
connectAttr "groupId789.id" "groupParts36.gi";
connectAttr "|polySurface133|transform17|polySurfaceShape133.o" "polySeparate4.ip"
		;
connectAttr "groupParts37.og" "transformGeometry31.ig";
connectAttr "polySeparate4.out[1]" "groupParts37.ig";
connectAttr "groupId790.id" "groupParts37.gi";
connectAttr "groupParts38.og" "transformGeometry32.ig";
connectAttr "polySeparate4.out[2]" "groupParts38.ig";
connectAttr "groupId791.id" "groupParts38.gi";
connectAttr "groupParts39.og" "transformGeometry33.ig";
connectAttr "polySeparate4.out[3]" "groupParts39.ig";
connectAttr "groupId792.id" "groupParts39.gi";
connectAttr "groupParts40.og" "transformGeometry34.ig";
connectAttr "polySeparate4.out[4]" "groupParts40.ig";
connectAttr "groupId793.id" "groupParts40.gi";
connectAttr "groupParts41.og" "transformGeometry35.ig";
connectAttr "polySeparate4.out[5]" "groupParts41.ig";
connectAttr "groupId794.id" "groupParts41.gi";
connectAttr "groupParts42.og" "transformGeometry36.ig";
connectAttr "polySeparate4.out[6]" "groupParts42.ig";
connectAttr "groupId795.id" "groupParts42.gi";
connectAttr "groupParts43.og" "transformGeometry37.ig";
connectAttr "polySeparate4.out[7]" "groupParts43.ig";
connectAttr "groupId796.id" "groupParts43.gi";
connectAttr "groupParts44.og" "transformGeometry38.ig";
connectAttr "polySeparate4.out[8]" "groupParts44.ig";
connectAttr "groupId797.id" "groupParts44.gi";
connectAttr "groupParts45.og" "transformGeometry39.ig";
connectAttr "polySeparate4.out[9]" "groupParts45.ig";
connectAttr "groupId798.id" "groupParts45.gi";
connectAttr "groupParts46.og" "transformGeometry40.ig";
connectAttr "polySeparate5.out[0]" "groupParts46.ig";
connectAttr "groupId800.id" "groupParts46.gi";
connectAttr "|polySurface144|transform18|polySurfaceShape144.o" "polySeparate5.ip"
		;
connectAttr "groupParts47.og" "transformGeometry41.ig";
connectAttr "polySeparate5.out[1]" "groupParts47.ig";
connectAttr "groupId801.id" "groupParts47.gi";
connectAttr "groupParts48.og" "transformGeometry42.ig";
connectAttr "polySeparate5.out[2]" "groupParts48.ig";
connectAttr "groupId802.id" "groupParts48.gi";
connectAttr "groupParts49.og" "transformGeometry43.ig";
connectAttr "polySeparate5.out[3]" "groupParts49.ig";
connectAttr "groupId803.id" "groupParts49.gi";
connectAttr "groupParts50.og" "transformGeometry44.ig";
connectAttr "polySeparate5.out[4]" "groupParts50.ig";
connectAttr "groupId804.id" "groupParts50.gi";
connectAttr "groupParts51.og" "transformGeometry45.ig";
connectAttr "polySeparate5.out[5]" "groupParts51.ig";
connectAttr "groupId805.id" "groupParts51.gi";
connectAttr "groupParts52.og" "transformGeometry46.ig";
connectAttr "polySeparate5.out[6]" "groupParts52.ig";
connectAttr "groupId806.id" "groupParts52.gi";
connectAttr "groupParts53.og" "transformGeometry47.ig";
connectAttr "polySeparate5.out[7]" "groupParts53.ig";
connectAttr "groupId807.id" "groupParts53.gi";
connectAttr "groupParts54.og" "transformGeometry48.ig";
connectAttr "polySeparate5.out[8]" "groupParts54.ig";
connectAttr "groupId808.id" "groupParts54.gi";
connectAttr "groupParts55.og" "transformGeometry49.ig";
connectAttr "polySeparate5.out[9]" "groupParts55.ig";
connectAttr "groupId809.id" "groupParts55.gi";
connectAttr "groupParts56.og" "transformGeometry50.ig";
connectAttr "polySeparate5.out[10]" "groupParts56.ig";
connectAttr "groupId810.id" "groupParts56.gi";
connectAttr "polySeparate6.out[0]" "groupParts59.ig";
connectAttr "groupId814.id" "groupParts59.gi";
connectAttr "MarsTerrain1_G2Shape.o" "polySeparate6.ip";
connectAttr "groupParts58.og" "polyDelEdge2.ip";
connectAttr "polySurfaceShape168.o" "groupParts58.ig";
connectAttr "groupId813.id" "groupParts58.gi";
connectAttr "polySeparate6.out[1]" "groupParts60.ig";
connectAttr "groupId815.id" "groupParts60.gi";
connectAttr "polySeparate6.out[2]" "groupParts61.ig";
connectAttr "groupId816.id" "groupParts61.gi";
connectAttr "polySeparate6.out[3]" "groupParts62.ig";
connectAttr "groupId817.id" "groupParts62.gi";
connectAttr "polySeparate6.out[4]" "groupParts63.ig";
connectAttr "groupId818.id" "groupParts63.gi";
connectAttr "polySeparate6.out[5]" "groupParts64.ig";
connectAttr "groupId819.id" "groupParts64.gi";
connectAttr "polySeparate6.out[6]" "groupParts65.ig";
connectAttr "groupId820.id" "groupParts65.gi";
connectAttr "polySeparate6.out[7]" "groupParts66.ig";
connectAttr "groupId821.id" "groupParts66.gi";
connectAttr "polySeparate6.out[8]" "groupParts67.ig";
connectAttr "groupId822.id" "groupParts67.gi";
connectAttr "polySeparate6.out[9]" "groupParts68.ig";
connectAttr "groupId823.id" "groupParts68.gi";
connectAttr "polySeparate6.out[10]" "groupParts69.ig";
connectAttr "groupId824.id" "groupParts69.gi";
connectAttr "polySeparate6.out[11]" "groupParts70.ig";
connectAttr "groupId825.id" "groupParts70.gi";
connectAttr "polySeparate6.out[12]" "groupParts71.ig";
connectAttr "groupId826.id" "groupParts71.gi";
connectAttr "polySeparate6.out[13]" "groupParts72.ig";
connectAttr "groupId827.id" "groupParts72.gi";
connectAttr "polySeparate6.out[14]" "groupParts73.ig";
connectAttr "groupId828.id" "groupParts73.gi";
connectAttr "polySeparate6.out[15]" "groupParts74.ig";
connectAttr "groupId829.id" "groupParts74.gi";
connectAttr "polySeparate6.out[16]" "groupParts75.ig";
connectAttr "groupId830.id" "groupParts75.gi";
connectAttr "polySeparate6.out[17]" "groupParts76.ig";
connectAttr "groupId831.id" "groupParts76.gi";
connectAttr "polySeparate6.out[18]" "groupParts77.ig";
connectAttr "groupId832.id" "groupParts77.gi";
connectAttr "polySeparate6.out[19]" "groupParts78.ig";
connectAttr "groupId833.id" "groupParts78.gi";
connectAttr "polySeparate6.out[20]" "groupParts79.ig";
connectAttr "groupId834.id" "groupParts79.gi";
connectAttr "polySeparate6.out[21]" "groupParts80.ig";
connectAttr "groupId835.id" "groupParts80.gi";
connectAttr "polySeparate6.out[22]" "groupParts81.ig";
connectAttr "groupId836.id" "groupParts81.gi";
connectAttr "polySeparate6.out[23]" "groupParts82.ig";
connectAttr "groupId837.id" "groupParts82.gi";
connectAttr "polySeparate6.out[24]" "groupParts83.ig";
connectAttr "groupId838.id" "groupParts83.gi";
connectAttr "polySeparate6.out[25]" "groupParts84.ig";
connectAttr "groupId839.id" "groupParts84.gi";
connectAttr "polySeparate6.out[26]" "groupParts85.ig";
connectAttr "groupId840.id" "groupParts85.gi";
connectAttr "polySeparate6.out[27]" "groupParts86.ig";
connectAttr "groupId841.id" "groupParts86.gi";
connectAttr "polySeparate6.out[28]" "groupParts87.ig";
connectAttr "groupId842.id" "groupParts87.gi";
connectAttr "polySeparate6.out[29]" "groupParts88.ig";
connectAttr "groupId843.id" "groupParts88.gi";
connectAttr "polySeparate6.out[30]" "groupParts89.ig";
connectAttr "groupId844.id" "groupParts89.gi";
connectAttr "polySeparate6.out[31]" "groupParts90.ig";
connectAttr "groupId845.id" "groupParts90.gi";
connectAttr "polySeparate6.out[32]" "groupParts91.ig";
connectAttr "groupId846.id" "groupParts91.gi";
connectAttr "polySeparate6.out[33]" "groupParts92.ig";
connectAttr "groupId847.id" "groupParts92.gi";
connectAttr "polySeparate6.out[34]" "groupParts93.ig";
connectAttr "groupId848.id" "groupParts93.gi";
connectAttr "polySeparate6.out[35]" "groupParts94.ig";
connectAttr "groupId849.id" "groupParts94.gi";
connectAttr "polySeparate6.out[36]" "groupParts95.ig";
connectAttr "groupId850.id" "groupParts95.gi";
connectAttr "polySeparate6.out[37]" "groupParts96.ig";
connectAttr "groupId851.id" "groupParts96.gi";
connectAttr "polySeparate6.out[38]" "groupParts97.ig";
connectAttr "groupId852.id" "groupParts97.gi";
connectAttr "polySeparate6.out[39]" "groupParts98.ig";
connectAttr "groupId853.id" "groupParts98.gi";
connectAttr "polySeparate6.out[40]" "groupParts99.ig";
connectAttr "groupId854.id" "groupParts99.gi";
connectAttr "polySeparate6.out[41]" "groupParts100.ig";
connectAttr "groupId855.id" "groupParts100.gi";
connectAttr "polySeparate6.out[42]" "groupParts101.ig";
connectAttr "groupId856.id" "groupParts101.gi";
connectAttr "polySeparate6.out[43]" "groupParts102.ig";
connectAttr "groupId857.id" "groupParts102.gi";
connectAttr "polySeparate6.out[44]" "groupParts103.ig";
connectAttr "groupId858.id" "groupParts103.gi";
connectAttr "polySeparate6.out[45]" "groupParts104.ig";
connectAttr "groupId859.id" "groupParts104.gi";
connectAttr "polySeparate6.out[46]" "groupParts105.ig";
connectAttr "groupId860.id" "groupParts105.gi";
connectAttr "polySeparate6.out[47]" "groupParts106.ig";
connectAttr "groupId861.id" "groupParts106.gi";
connectAttr "polySeparate6.out[48]" "groupParts107.ig";
connectAttr "groupId862.id" "groupParts107.gi";
connectAttr "polySeparate6.out[49]" "groupParts108.ig";
connectAttr "groupId863.id" "groupParts108.gi";
connectAttr "|polySurface102|transform14|polySurfaceShape102.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape112.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape113.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface102|polySurface105|transform119|polySurfaceShape114.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape115.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape116.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape117.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape118.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape119.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape120.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape121.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape122.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface114|transform15|polySurfaceShape114.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape124.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape125.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape126.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape127.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape128.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape129.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape130.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape131.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface123|transform16|polySurfaceShape123.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface123|polySurface124|transform102|polySurfaceShape133.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape134.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape135.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape136.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape137.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape138.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape139.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape140.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape141.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface133|transform17|polySurfaceShape133.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape143.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface133|polySurface135|transform92|polySurfaceShape144.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape145.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape146.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape147.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape148.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape149.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape150.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape151.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape152.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface144|transform18|polySurfaceShape144.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape153.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape154.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape155.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape156.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape157.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape158.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape159.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape160.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape161.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape162.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape163.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MarsTerrain1_G2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape169.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape170.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape171.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape172.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape173.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape174.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape175.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape176.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape177.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape178.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape179.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape180.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape181.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape182.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape183.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape184.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape185.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape186.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape187.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape188.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape189.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape190.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape191.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape192.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape193.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape194.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape195.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape196.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape197.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape198.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape199.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape200.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape201.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape202.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape203.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape204.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape205.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|MarsTerrain1_G2|polySurface193|transform35|polySurfaceShape206.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MarsTerrain1_G2|polySurface194|transform34|polySurfaceShape207.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MarsTerrain1_G2|polySurface195|transform33|polySurfaceShape208.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape209.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape210.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape211.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape212.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape213.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape214.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape215.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape216.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape217.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape218.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|MarsTerrain1_G2|polySurface206|transform22|polySurfaceShape206.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MarsTerrain1_G2|polySurface207|transform21|polySurfaceShape207.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|MarsTerrain1_G2|polySurface208|transform20|polySurfaceShape208.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape219.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId757.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId758.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId759.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId760.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId761.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId762.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId763.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId764.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId765.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId766.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId767.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId768.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId769.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId770.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId771.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId772.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId773.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId774.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId775.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId776.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId777.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId778.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId779.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId780.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId781.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId782.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId783.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId784.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId785.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId786.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId787.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId788.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId789.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId790.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId791.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId792.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId793.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId794.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId795.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId796.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId797.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId798.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId799.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId800.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId801.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId802.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId803.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId804.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId805.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId806.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId807.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId808.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId809.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId810.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId813.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId814.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId815.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId816.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId817.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId818.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId819.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId820.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId821.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId822.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId823.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId824.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId825.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId826.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId827.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId828.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId829.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId830.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId831.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId832.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId833.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId834.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId835.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId836.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId837.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId838.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId839.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId840.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId841.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId842.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId843.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId844.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId845.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId846.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId847.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId848.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId849.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId850.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId851.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId852.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId853.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId854.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId855.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId856.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId857.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId858.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId859.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId860.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId861.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId862.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId863.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId864.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId865.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId866.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId867.msg" ":initialShadingGroup.gn" -na;
// End of Terrain1.ma

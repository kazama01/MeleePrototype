Shader "Enviro3/URP/UBER"
{
	Properties
	{
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		_TilingOffset("Tiling / Offset", Vector) = (1,1,0,0)
		[NoScaleOffset][SingleLineTexture]_MainTex("Albedo", 2D) = "white" {}
		_Color("Base Tint", Color) = (1,1,1,1)
		_DetailTint("Detail Tint", Color) = (1,1,1,1)
		[NoScaleOffset][Normal][SingleLineTexture]_BumpMap("Normal", 2D) = "bump" {}
		_BumpScale("Normal Intensity", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_BaseMask("Base Mask", 2D) = "black" {}
		_Smoothness("Smoothness", Range( 0 , 1)) = 1
		_SmoothnessDetail("Smoothness Detail", Range( 0 , 1)) = 1
		_SmoothnessWet("SmoothnessWet", Range( 0 , 1)) = 0.1
		[SingleLineTexture]_EmissionMap("Emission", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Color", Color) = (0,0,0,0)
		_SnowDisplacementStrength("Snow Displacement Strength", Range( 0 , 0.05)) = 0.01
		_SSSIntensity("SSS Intensity", Range( 0 , 5)) = 3
		_SSSScale("SSS Scale", Range( 0 , 1)) = 0.5
		_SSSDistortion("SSS Distortion", Range( 0 , 1)) = 0.9
		_DetailTilingOffset("Detail Tiling/Offset", Vector) = (1,1,0,0)
		[NoScaleOffset][SingleLineTexture]_Mask("Mask", 2D) = "black" {}
		_DetailMaskTiling("Detail Mask Tiling", Float) = 1
		[NoScaleOffset][SingleLineTexture]_DetailAlbedoMap("Detail Albedo", 2D) = "white" {}
		[NoScaleOffset][SingleLineTexture]_DetailNormalMap("Detail Normal", 2D) = "bump" {}
		[Toggle(_RAIN_ON)] _Rain("Rain", Float) = 1
		_RainFlowIntensity("Rain Flow Intensity", Range( 0 , 2)) = 1
		_RainFlowDistortionScale("Rain Flow Distortion Scale", Float) = 4
		[Toggle(_PUDDLES_ON)] _Puddles("Puddles", Float) = 1
		_RainFlowDistortionStrenght("Rain Flow Distortion Strenght", Range( 0 , 0.25)) = 0.1
		_PuddleWaveTiling("Puddle Wave Tiling", Float) = 1
		_PuddleWaveIntensity("Puddle Wave Intensity", Range( 0 , 2)) = 1
		[NoScaleOffset][SingleLineTexture]_GlobalNormal("Global Normal", 2D) = "bump" {}
		_GlobalNormalIntensity("Global Normal Intensity", Range( 0 , 2)) = 1
		_GlobalNormalTiling("Global Normal Tiling", Vector) = (1,1,0,0)
		_MetallicBase("Metallic Base", Range( 0 , 1)) = 0
		_MetallicDetail("Metallic Detail", Range( 0 , 1)) = 0
		_OcclusionStrength("Occlusion Intensity", Range( 0 , 1)) = 0
		_DetailNormalMapScale("DetailNormalMapScale", Range( 0 , 2)) = 1
		_RainDropIntensity("RainDropIntensity", Float) = 5
		_RainDropSpeed("Rain Drop Speed", Range( 0 , 2)) = 1
		_PuddleIntensity("Puddle Intensity", Range( 0 , 5)) = 1
		_PuddleCoverageNoise("Puddle Coverage Noise", Float) = 0.5
		_RainDropTiling("RainDropTiling", Float) = 10
		_PuddleColor("Puddle Color", Color) = (0.6037736,0.6037736,0.6037736,0.6666667)
		_RainDistanceFade("RainDistanceFade", Range( 0 , 10)) = 5
		_RainFlowTiling("Rain Flow Tiling", Float) = 1
		_SnowNormalScale("Snow Normal Scale", Range( 0 , 2)) = 1
		[Normal][SingleLineTexture]_WaveNormal("Wave Normal", 2D) = "white" {}
		[SingleLineTexture]_DetailMask("Detail Mask", 2D) = "black" {}
		[KeywordEnum(Off,Mask,Procedural,Height)] _DetailProceduralMask("Detail Procedural Mask", Float) = 0
		_DetailProceduralMaskScale("Detail Procedural Mask Scale", Float) = 20
		_DetailProceduralMaskIntensity("Detail Procedural Mask Intensity", Float) = 1
		[Enum(Back,2,Front,1,Off,0)]_CullMode("Cull Mode", Int) = 0
		[Toggle(_SNOW_ON)] _Snow("Snow", Float) = 1
		_RainFlowStrength("Rain Flow Strength", Range( 0 , 1)) = 0
		[HideInInspector]_SrcBlend("_SrcBlend", Int) = 0
		[HideInInspector]_ZWrite("_ZWrite", Int) = 0
		[HideInInspector]_DstBlend("_DstBlend", Int) = 1
		_CutOff("_CutOff", Range( 0 , 1)) = 0.5
		[SingleLineTexture]_SnowMask("Snow Mask", 2D) = "black" {}
		_RainFlowSmoothnessBoost("RainFlowSmoothnessBoost", Range( 0 , 4)) = 1
		[Normal][SingleLineTexture]_SnowNormal("Snow Normal", 2D) = "white" {}
		[SingleLineTexture]_SnowAlbedo("Snow Albedo", 2D) = "white" {}
		_SnowTiling("Snow Tiling", Float) = 1
		_DetailHeight("Detail Height", Range( -5 , 5)) = 0
		_DetailThreshold("DetailThreshold", Range( -1 , 1)) = 1
		_DetailHeightBlendStrength("DetailHeightBlendStrength", Float) = 1
		_TessellationFactor("Tessellation Factor", Float) = 24
		_DisplacementStrength("Displacement Strength", Float) = 0.05
		[Toggle(_TESSELLATION_ON)] _Tessellation("Tessellation", Float) = 0
		_Opacity("Opacity", Range( 0 , 1)) = 0


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 16
		_TessMin( "Tess Min Distance", Float ) = 10
		_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1.0
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull [_CullMode]
		ZWrite [_ZWrite]
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.6
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend [_SrcBlend] [_DstBlend], [_SrcBlend] [_DstBlend]
			ZWrite [_ZWrite]
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS

			
            #pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
		

			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			

			
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
           

			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _FORWARD_PLUS
		
			

			

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_FORWARD

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#pragma shader_feature_local _RAIN_ON
			#include "EnviroInclude.hlsl"


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _DetailAlbedoMap;
			sampler2D _Mask;
			sampler2D _BumpMap;
			sampler2D _SnowAlbedo;
			sampler2D _DetailNormalMap;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;
			float _EnviroRainIntensity;
			sampler2D _WaveNormal;
			sampler2D _EmissionMap;
			sampler2D _DetailMask;
			float _SmoothnessAdd;
			float _SmoothnessDetailAdd;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			float3 PerturbNormal107_g55( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.tangentOS.xyz);
				float ase_vertexTangentSign = v.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord9 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif
				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( v.normalOS, v.tangentOS );

				o.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				o.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				o.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( vertexInput.positionCS.z );
				#else
					half fogFactor = 0;
				#endif

				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						, bool ase_vface : SV_IsFrontFace ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord8.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float4 Albedo_Base195 = tex2DNode17;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord8.xy * appendResult261 + appendResult262;
				float4 Detail_Albedo248 = tex2D( _DetailAlbedoMap, texCoord257 );
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord8.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( WorldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float3x3 ase_tangentToWorldFast = float3x3(WorldTangent.x,WorldBiTangent.x,WorldNormal.x,WorldTangent.y,WorldBiTangent.y,WorldNormal.y,WorldTangent.z,WorldBiTangent.z,WorldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float4 lerpResult265 = lerp( ( Albedo_Base195 * _Color ) , ( Detail_Albedo248 * _DetailTint ) , Detail_Blending277);
				float4 lerpResult964 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float4 staticSwitch959 = ( lerpResult265 * lerpResult964 );
				#else
				float4 staticSwitch959 = lerpResult265;
				#endif
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord8.xy * temp_cast_2 + Global_UV170;
				float4 Albedo_Snow198 = tex2D( _SnowAlbedo, texCoord1385 );
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, WorldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( WorldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tangentToWorldDir1209 = mul( ase_tangentToWorldFast, Normal_Combined213 );
				float dotResult72 = dot( WorldViewDirection , -( _MainLightPosition.xyz + ( tangentToWorldDir1209 * _SSSDistortion ) ) );
				float dotResult82 = dot( dotResult72 , _SSSScale );
				float SSS184 = ( saturate( dotResult82 ) * _SSSIntensity );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				float4 lerpResult16 = lerp( staticSwitch959 , ( Albedo_Snow198 + SSS184 ) , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float4 staticSwitch1253 = lerpResult16;
				#else
				float4 staticSwitch1253 = staticSwitch959;
				#endif
				float4 temp_output_40_0 = ( staticSwitch1253 + (0.0 + (Wetness163 - 0.0) * (-0.01 - 0.0) / (1.0 - 0.0)) );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_FADE)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_TRANSPARENT)
				float4 staticSwitch1284 = ( temp_output_40_0 * BaseAlpha1283 );
				#elif defined(_RENDERING_OPAQUE)
				float4 staticSwitch1284 = temp_output_40_0;
				#else
				float4 staticSwitch1284 = temp_output_40_0;
				#endif
				float4 Albedo_Final224 = staticSwitch1284;
				
				float3 surf_pos107_g55 = WorldPosition;
				float3 surf_norm107_g55 = WorldNormal;
				float RainIntensity233 = _EnviroRainIntensity;
				float temp_output_1156_0 = (1.0 + (( _RainFlowStrength * RainIntensity233 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_1039_0 = ( _TimeParameters.x * 0.05 );
				float4 transform1024 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float2 appendResult1027 = (float2(( transform1024.z * 0.7 ) , ( transform1024.y * 0.2 )));
				float2 panner1030 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1027 * _RainFlowTiling ));
				float2 texCoord649 = IN.ase_texcoord8.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise650 = UnityGradientNoise(texCoord649,_RainFlowDistortionScale);
				gradientNoise650 = gradientNoise650*0.5 + 0.5;
				float Distortion655 = ( gradientNoise650 * _RainFlowDistortionStrenght );
				float simpleNoise1021 = SimpleNoise( ( panner1030 + Distortion655 )*100.0 );
				simpleNoise1021 = simpleNoise1021*2 - 1;
				float smoothstepResult1071 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1021);
				float temp_output_1047_0 = ( ( ( WorldNormal.y - 0.7 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_5 = (0.3).xxx;
				float3 break1080 = ( abs( WorldNormal ) - temp_cast_5 );
				float lerpResult1081 = lerp( 0.0 , ( smoothstepResult1071 * temp_output_1047_0 ) , break1080.x);
				float4 transform1025 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float2 appendResult1026 = (float2(( transform1025.x * 0.7 ) , ( transform1025.y * 0.2 )));
				float2 panner1031 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1026 * _RainFlowTiling ));
				float simpleNoise1028 = SimpleNoise( ( panner1031 + Distortion655 )*100.0 );
				simpleNoise1028 = simpleNoise1028*2 - 1;
				float smoothstepResult1070 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1028);
				float lerpResult1082 = lerp( 0.0 , ( smoothstepResult1070 * temp_output_1047_0 ) , break1080.z);
				float Rain_Distance_Fade1154 = ( 1.0 - sqrt( saturate( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float switchResult1400 = (((ase_vface>0)?(( ( lerpResult1081 + lerpResult1082 ) * Rain_Distance_Fade1154 )):(0.0)));
				float temp_output_1075_0 = saturate( switchResult1400 );
				float height107_g55 = temp_output_1075_0;
				float scale107_g55 = 0.1;
				float3 localPerturbNormal107_g55 = PerturbNormal107_g55( surf_pos107_g55 , surf_norm107_g55 , height107_g55 , scale107_g55 );
				float3 worldToTangentDir42_g55 = mul( ase_worldToTangent, localPerturbNormal107_g55);
				float3 RainFlow411 = worldToTangentDir42_g55;
				float localRainRipples1_g54 = ( 0.0 );
				float2 temp_cast_7 = (_RainDropTiling).xx;
				float2 texCoord879 = IN.ase_texcoord8.xy * temp_cast_7 + float2( 0,0 );
				float2 UV1_g54 = texCoord879;
				float AngleOffset1_g54 = 5.0;
				float CellDensity1_g54 = 12.0;
				float Time1_g54 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_1128_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult1126 = lerp( _RainDropIntensity , temp_output_1128_0 , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float staticSwitch1129 = lerpResult1126;
				#else
				float staticSwitch1129 = temp_output_1128_0;
				#endif
				float switchResult1402 = (((ase_vface>0)?(( ( ( WorldNormal.y - 0.8 ) * ( staticSwitch1129 * RainIntensity233 ) ) * Rain_Distance_Fade1154 )):(0.0)));
				float Strength1_g54 = max( 0.0 , switchResult1402 );
				float3 normal1_g54 = float3( 0,0,0 );
				float Out1_g54 = 0.0;
				float lerpResult1002 = lerp( 5.0 , 8.0 , Puddle_Mask584);
				float pow1_g54 = lerpResult1002;
				float lerpResult1004 = lerp( 1.0 , 0.0 , Puddle_Mask584);
				float sin1_g54 = lerpResult1004;
				{
				Rain(UV1_g54,AngleOffset1_g54,CellDensity1_g54,Time1_g54,Strength1_g54,pow1_g54,sin1_g54,Out1_g54,normal1_g54);
				}
				float3 temp_output_1392_9 = normal1_g54;
				float3 Rain_Drop341 = temp_output_1392_9;
				#ifdef _RAIN_ON
				float3 staticSwitch639 = BlendNormal( Normal_Combined213 , BlendNormal( RainFlow411 , Rain_Drop341 ) );
				#else
				float3 staticSwitch639 = Normal_Combined213;
				#endif
				float temp_output_729_0 = ( _TimeParameters.x * 0.05 );
				float2 temp_cast_8 = (_PuddleWaveTiling).xx;
				float2 texCoord732 = IN.ase_texcoord8.xy * temp_cast_8 + float2( 0,0 );
				float2 panner734 = ( temp_output_729_0 * float2( 1,0 ) + texCoord732);
				float temp_output_735_0 = ( Puddle_Mask584 * ( _PuddleWaveIntensity * Wetness163 ) );
				float3 unpack737 = UnpackNormalScale( tex2D( _WaveNormal, panner734 ), temp_output_735_0 );
				unpack737.z = lerp( 1, unpack737.z, saturate(temp_output_735_0) );
				float2 temp_cast_9 = (_PuddleWaveTiling).xx;
				float2 texCoord733 = IN.ase_texcoord8.xy * temp_cast_9 + float2( 0,0 );
				float2 panner736 = ( temp_output_729_0 * float2( 0,1 ) + texCoord733);
				float3 unpack738 = UnpackNormalScale( tex2D( _WaveNormal, panner736 ), temp_output_735_0 );
				unpack738.z = lerp( 1, unpack738.z, saturate(temp_output_735_0) );
				float3 Puddle740 = BlendNormal( unpack737 , unpack738 );
				#ifdef _PUDDLES_ON
				float3 staticSwitch628 = BlendNormal( staticSwitch639 , Puddle740 );
				#else
				float3 staticSwitch628 = staticSwitch639;
				#endif
				float3 Normals_Final216 = staticSwitch628;
				
				float4 Emission_Final678 = ( tex2D( _EmissionMap, Parallax_UV178 ) * _EmissionColor );
				
				float Metallic_Base187 = tex2DNode22.r;
				float4 tex2DNode1211 = tex2D( _DetailMask, texCoord257 );
				float Detail_Metallic1212 = tex2DNode1211.r;
				float lerpResult1231 = lerp( saturate( ( Metallic_Base187 + _MetallicBase ) ) , saturate( ( Detail_Metallic1212 + _MetallicDetail ) ) , Mask253);
				float4 tex2DNode1387 = tex2D( _SnowMask, texCoord1385 );
				float Metallic_Snow189 = tex2DNode1387.r;
				float lerpResult15 = lerp( lerpResult1231 , Metallic_Snow189 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1254 = lerpResult15;
				#else
				float staticSwitch1254 = lerpResult1231;
				#endif
				float Metallic_Final218 = staticSwitch1254;
				
				float Smoothness663 = tex2DNode22.a;
				float Smothness_Detail665 = tex2DNode1211.a;
				float lerpResult671 = lerp( ( ( Smoothness663 * _Smoothness ) + _SmoothnessAdd ) , ( ( Smothness_Detail665 * _SmoothnessDetail ) + _SmoothnessDetailAdd ) , Mask253);
				float lerpResult37 = lerp( 0.0 , _SmoothnessWet , Wetness163);
				#ifdef _PUDDLES_ON
				float staticSwitch629 = ( lerpResult37 + saturate( ( Puddle_Mask584 - 0.2 ) ) );
				#else
				float staticSwitch629 = lerpResult37;
				#endif
				float RainDropSmoothness870 = ( Out1_g54 * 0.25 );
				float RainFlowSmoothness1087 = ( temp_output_1075_0 * _RainFlowSmoothnessBoost );
				#ifdef _RAIN_ON
				float staticSwitch944 = ( ( staticSwitch629 + RainDropSmoothness870 ) + RainFlowSmoothness1087 );
				#else
				float staticSwitch944 = staticSwitch629;
				#endif
				float temp_output_674_0 = ( lerpResult671 + staticSwitch944 );
				float Smothness_Snow664 = tex2DNode1387.a;
				float lerpResult668 = lerp( temp_output_674_0 , Smothness_Snow664 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1256 = lerpResult668;
				#else
				float staticSwitch1256 = temp_output_674_0;
				#endif
				float Smoothness_Final220 = saturate( staticSwitch1256 );
				
				float Occlusion_Base193 = tex2DNode22.g;
				float Detail_Occlusion1213 = tex2DNode1211.g;
				float lerpResult1236 = lerp( Occlusion_Base193 , Detail_Occlusion1213 , Mask253);
				float Occlusion_Snow191 = tex2DNode1387.g;
				float lerpResult27 = lerp( lerpResult1236 , Occlusion_Snow191 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1255 = lerpResult27;
				#else
				float staticSwitch1255 = lerpResult1236;
				#endif
				float lerpResult969 = lerp( 1.0 , staticSwitch1255 , _OcclusionStrength);
				#ifdef _PUDDLES_ON
				float staticSwitch970 = saturate( ( lerpResult969 + Puddle_Mask584 ) );
				#else
				float staticSwitch970 = lerpResult969;
				#endif
				float Occlusion_Final222 = staticSwitch970;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float3 BaseColor = Albedo_Final224.rgb;
				float3 Normal = Normals_Final216;
				float3 Emission = Emission_Final678.rgb;
				float3 Specular = 0.5;
				float Metallic = Metallic_Final218;
				float Smoothness = Smoothness_Final220;
				float Occlusion = Occlusion_Final222;
				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif
					inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.positionCS, surfaceData, inputData);
				#endif

				half4 color = UniversalFragmentPBR( inputData, surfaceData);

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifndef UNITY_PASS_FORWARDADD

	#if defined(_RENDERING_TRANSPARENT) || defined(_RENDERING_FADE)	
	color.rgb = ApplyFogAndVolumetricLights(color.rgb,inputData.normalizedScreenSpaceUV.xy,inputData.positionWS.xyz,0);

	#if defined(_RENDERING_TRANSPARENT)
	color.rgb *= Alpha;
	#endif

	#endif

	#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#include "EnviroInclude.hlsl"


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif				
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _BumpMap;
			sampler2D _DetailNormalMap;
			sampler2D _Mask;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.ase_texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord4.xyz = ase_worldNormal;
				o.ase_texcoord6.xyz = ase_worldTangent;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_texcoord5 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir(v.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					positionCS.z = min(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#else
					positionCS.z = max(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						, bool ase_vface : SV_IsFrontFace ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord3.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord3.xy * appendResult261 + appendResult262;
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord3.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord5.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldTangent = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, ase_worldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord3.xy * temp_cast_2 + Global_UV170;
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( ase_worldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHONLY

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#include "EnviroInclude.hlsl"


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _BumpMap;
			sampler2D _DetailNormalMap;
			sampler2D _Mask;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.ase_texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord4.xyz = ase_worldNormal;
				o.ase_texcoord6.xyz = ase_worldTangent;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_texcoord5 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						, bool ase_vface : SV_IsFrontFace ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord3.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				float3 ase_worldNormal = IN.ase_texcoord4.xyz;
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord3.xy * appendResult261 + appendResult262;
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord3.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord5.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldTangent = IN.ase_texcoord6.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, ase_worldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord3.xy * temp_cast_2 + Global_UV170;
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( ase_worldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			#pragma vertex vert
			#pragma fragment frag

			#pragma shader_feature EDITOR_VISUALIZATION

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#include "EnviroInclude.hlsl"


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _DetailAlbedoMap;
			sampler2D _Mask;
			sampler2D _BumpMap;
			sampler2D _SnowAlbedo;
			sampler2D _DetailNormalMap;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;
			sampler2D _EmissionMap;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.texcoord0.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.texcoord0.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord6.xyz = ase_worldNormal;
				o.ase_texcoord7.xyz = ase_worldTangent;
				o.ase_texcoord8.xyz = ase_worldBitangent;
				
				o.ase_texcoord4.xy = v.texcoord0.xy;
				o.ase_texcoord5 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				o.positionCS = MetaVertexPosition( v.positionOS, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(v.positionOS.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
					o.VizUV = float4(VizUV, 0, 0);
					o.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN , bool ase_vface : SV_IsFrontFace ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord4.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float4 Albedo_Base195 = tex2DNode17;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord4.xy * appendResult261 + appendResult262;
				float4 Detail_Albedo248 = tex2D( _DetailAlbedoMap, texCoord257 );
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord4.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord5.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldNormal = IN.ase_texcoord6.xyz;
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float3 ase_worldTangent = IN.ase_texcoord7.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord8.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float4 lerpResult265 = lerp( ( Albedo_Base195 * _Color ) , ( Detail_Albedo248 * _DetailTint ) , Detail_Blending277);
				float4 lerpResult964 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float4 staticSwitch959 = ( lerpResult265 * lerpResult964 );
				#else
				float4 staticSwitch959 = lerpResult265;
				#endif
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord4.xy * temp_cast_2 + Global_UV170;
				float4 Albedo_Snow198 = tex2D( _SnowAlbedo, texCoord1385 );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - WorldPosition );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, ase_worldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( ase_worldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tangentToWorldDir1209 = mul( ase_tangentToWorldFast, Normal_Combined213 );
				float dotResult72 = dot( ase_worldViewDir , -( _MainLightPosition.xyz + ( tangentToWorldDir1209 * _SSSDistortion ) ) );
				float dotResult82 = dot( dotResult72 , _SSSScale );
				float SSS184 = ( saturate( dotResult82 ) * _SSSIntensity );
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				float4 lerpResult16 = lerp( staticSwitch959 , ( Albedo_Snow198 + SSS184 ) , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float4 staticSwitch1253 = lerpResult16;
				#else
				float4 staticSwitch1253 = staticSwitch959;
				#endif
				float4 temp_output_40_0 = ( staticSwitch1253 + (0.0 + (Wetness163 - 0.0) * (-0.01 - 0.0) / (1.0 - 0.0)) );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_FADE)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_TRANSPARENT)
				float4 staticSwitch1284 = ( temp_output_40_0 * BaseAlpha1283 );
				#elif defined(_RENDERING_OPAQUE)
				float4 staticSwitch1284 = temp_output_40_0;
				#else
				float4 staticSwitch1284 = temp_output_40_0;
				#endif
				float4 Albedo_Final224 = staticSwitch1284;
				
				float4 Emission_Final678 = ( tex2D( _EmissionMap, Parallax_UV178 ) * _EmissionColor );
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float3 BaseColor = Albedo_Final224.rgb;
				float3 Emission = Emission_Final678.rgb;
				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = IN.VizUV.xy;
					metaInput.LightCoord = IN.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			#pragma vertex vert
			#pragma fragment frag

			

			

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RAIN_ON
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#include "EnviroInclude.hlsl"


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
				float4 worldTangent : TEXCOORD2;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD3;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _BumpMap;
			sampler2D _DetailNormalMap;
			sampler2D _Mask;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;
			float _EnviroRainIntensity;
			sampler2D _WaveNormal;
			sampler2D _MainTex;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			float3 PerturbNormal107_g55( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.ase_texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.tangentOS.xyz);
				float ase_vertexTangentSign = v.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord7.xyz = ase_worldBitangent;
				
				o.ase_texcoord5.xy = v.ase_texcoord.xy;
				o.ase_texcoord6 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.zw = 0;
				o.ase_texcoord7.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( v.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( v.tangentOS.xyz ), v.tangentOS.w );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void frag(	VertexOutput IN
						, out half4 outNormalWS : SV_Target0
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						, bool ase_vface : SV_IsFrontFace )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord5.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( WorldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord5.xy * appendResult261 + appendResult262;
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord5.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord6.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldBitangent = IN.ase_texcoord7.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(WorldTangent.xyz.x,ase_worldBitangent.x,WorldNormal.x,WorldTangent.xyz.y,ase_worldBitangent.y,WorldNormal.y,WorldTangent.xyz.z,ase_worldBitangent.z,WorldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(WorldTangent.xyz,ase_worldBitangent,WorldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, WorldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord5.xy * temp_cast_2 + Global_UV170;
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( WorldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 surf_pos107_g55 = WorldPosition;
				float3 surf_norm107_g55 = WorldNormal;
				float RainIntensity233 = _EnviroRainIntensity;
				float temp_output_1156_0 = (1.0 + (( _RainFlowStrength * RainIntensity233 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_1039_0 = ( _TimeParameters.x * 0.05 );
				float4 transform1024 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord6.xyz , 0.0 ));
				float2 appendResult1027 = (float2(( transform1024.z * 0.7 ) , ( transform1024.y * 0.2 )));
				float2 panner1030 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1027 * _RainFlowTiling ));
				float2 texCoord649 = IN.ase_texcoord5.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise650 = UnityGradientNoise(texCoord649,_RainFlowDistortionScale);
				gradientNoise650 = gradientNoise650*0.5 + 0.5;
				float Distortion655 = ( gradientNoise650 * _RainFlowDistortionStrenght );
				float simpleNoise1021 = SimpleNoise( ( panner1030 + Distortion655 )*100.0 );
				simpleNoise1021 = simpleNoise1021*2 - 1;
				float smoothstepResult1071 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1021);
				float temp_output_1047_0 = ( ( ( WorldNormal.y - 0.7 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_4 = (0.3).xxx;
				float3 break1080 = ( abs( WorldNormal ) - temp_cast_4 );
				float lerpResult1081 = lerp( 0.0 , ( smoothstepResult1071 * temp_output_1047_0 ) , break1080.x);
				float4 transform1025 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord6.xyz , 0.0 ));
				float2 appendResult1026 = (float2(( transform1025.x * 0.7 ) , ( transform1025.y * 0.2 )));
				float2 panner1031 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1026 * _RainFlowTiling ));
				float simpleNoise1028 = SimpleNoise( ( panner1031 + Distortion655 )*100.0 );
				simpleNoise1028 = simpleNoise1028*2 - 1;
				float smoothstepResult1070 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1028);
				float lerpResult1082 = lerp( 0.0 , ( smoothstepResult1070 * temp_output_1047_0 ) , break1080.z);
				float Rain_Distance_Fade1154 = ( 1.0 - sqrt( saturate( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float switchResult1400 = (((ase_vface>0)?(( ( lerpResult1081 + lerpResult1082 ) * Rain_Distance_Fade1154 )):(0.0)));
				float temp_output_1075_0 = saturate( switchResult1400 );
				float height107_g55 = temp_output_1075_0;
				float scale107_g55 = 0.1;
				float3 localPerturbNormal107_g55 = PerturbNormal107_g55( surf_pos107_g55 , surf_norm107_g55 , height107_g55 , scale107_g55 );
				float3 worldToTangentDir42_g55 = mul( ase_worldToTangent, localPerturbNormal107_g55);
				float3 RainFlow411 = worldToTangentDir42_g55;
				float localRainRipples1_g54 = ( 0.0 );
				float2 temp_cast_6 = (_RainDropTiling).xx;
				float2 texCoord879 = IN.ase_texcoord5.xy * temp_cast_6 + float2( 0,0 );
				float2 UV1_g54 = texCoord879;
				float AngleOffset1_g54 = 5.0;
				float CellDensity1_g54 = 12.0;
				float Time1_g54 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_1128_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult1126 = lerp( _RainDropIntensity , temp_output_1128_0 , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float staticSwitch1129 = lerpResult1126;
				#else
				float staticSwitch1129 = temp_output_1128_0;
				#endif
				float switchResult1402 = (((ase_vface>0)?(( ( ( WorldNormal.y - 0.8 ) * ( staticSwitch1129 * RainIntensity233 ) ) * Rain_Distance_Fade1154 )):(0.0)));
				float Strength1_g54 = max( 0.0 , switchResult1402 );
				float3 normal1_g54 = float3( 0,0,0 );
				float Out1_g54 = 0.0;
				float lerpResult1002 = lerp( 5.0 , 8.0 , Puddle_Mask584);
				float pow1_g54 = lerpResult1002;
				float lerpResult1004 = lerp( 1.0 , 0.0 , Puddle_Mask584);
				float sin1_g54 = lerpResult1004;
				{
				Rain(UV1_g54,AngleOffset1_g54,CellDensity1_g54,Time1_g54,Strength1_g54,pow1_g54,sin1_g54,Out1_g54,normal1_g54);
				}
				float3 temp_output_1392_9 = normal1_g54;
				float3 Rain_Drop341 = temp_output_1392_9;
				#ifdef _RAIN_ON
				float3 staticSwitch639 = BlendNormal( Normal_Combined213 , BlendNormal( RainFlow411 , Rain_Drop341 ) );
				#else
				float3 staticSwitch639 = Normal_Combined213;
				#endif
				float temp_output_729_0 = ( _TimeParameters.x * 0.05 );
				float2 temp_cast_7 = (_PuddleWaveTiling).xx;
				float2 texCoord732 = IN.ase_texcoord5.xy * temp_cast_7 + float2( 0,0 );
				float2 panner734 = ( temp_output_729_0 * float2( 1,0 ) + texCoord732);
				float temp_output_735_0 = ( Puddle_Mask584 * ( _PuddleWaveIntensity * Wetness163 ) );
				float3 unpack737 = UnpackNormalScale( tex2D( _WaveNormal, panner734 ), temp_output_735_0 );
				unpack737.z = lerp( 1, unpack737.z, saturate(temp_output_735_0) );
				float2 temp_cast_8 = (_PuddleWaveTiling).xx;
				float2 texCoord733 = IN.ase_texcoord5.xy * temp_cast_8 + float2( 0,0 );
				float2 panner736 = ( temp_output_729_0 * float2( 0,1 ) + texCoord733);
				float3 unpack738 = UnpackNormalScale( tex2D( _WaveNormal, panner736 ), temp_output_735_0 );
				unpack738.z = lerp( 1, unpack738.z, saturate(temp_output_735_0) );
				float3 Puddle740 = BlendNormal( unpack737 , unpack738 );
				#ifdef _PUDDLES_ON
				float3 staticSwitch628 = BlendNormal( staticSwitch639 , Puddle740 );
				#else
				float3 staticSwitch628 = staticSwitch639;
				#endif
				float3 Normals_Final216 = staticSwitch628;
				
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				float3 tanToWorld0 = float3( WorldTangent.xyz.x, ase_worldBitangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.xyz.y, ase_worldBitangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.xyz.z, ase_worldBitangent.z, WorldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float3 Normal = Normals_Final216;
				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend [_SrcBlend] [_DstBlend], [_SrcBlend] [_DstBlend]
			ZWrite [_ZWrite]
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			

			
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH
           

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED
      
			

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			
			#if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif
			
			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#pragma shader_feature_local _RAIN_ON
			#include "EnviroInclude.hlsl"


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _DetailAlbedoMap;
			sampler2D _Mask;
			sampler2D _BumpMap;
			sampler2D _SnowAlbedo;
			sampler2D _DetailNormalMap;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;
			float _EnviroRainIntensity;
			sampler2D _WaveNormal;
			sampler2D _EmissionMap;
			sampler2D _DetailMask;
			float _SmoothnessAdd;
			float _SmoothnessDetailAdd;


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			
			float2 UnityGradientNoiseDir( float2 p )
			{
				p = fmod(p , 289);
				float x = fmod((34 * p.x + 1) * p.x , 289) + p.y;
				x = fmod( (34 * x + 1) * x , 289);
				x = frac( x / 41 ) * 2 - 1;
				return normalize( float2(x - floor(x + 0.5 ), abs( x ) - 0.5 ) );
			}
			
			float UnityGradientNoise( float2 UV, float Scale )
			{
				float2 p = UV * Scale;
				float2 ip = floor( p );
				float2 fp = frac( p );
				float d00 = dot( UnityGradientNoiseDir( ip ), fp );
				float d01 = dot( UnityGradientNoiseDir( ip + float2( 0, 1 ) ), fp - float2( 0, 1 ) );
				float d10 = dot( UnityGradientNoiseDir( ip + float2( 1, 0 ) ), fp - float2( 1, 0 ) );
				float d11 = dot( UnityGradientNoiseDir( ip + float2( 1, 1 ) ), fp - float2( 1, 1 ) );
				fp = fp * fp * fp * ( fp * ( fp * 6 - 15 ) + 10 );
				return lerp( lerp( d00, d01, fp.y ), lerp( d10, d11, fp.y ), fp.x ) + 0.5;
			}
			
			float3 PerturbNormal107_g55( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.tangentOS.xyz);
				float ase_vertexTangentSign = v.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord9 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( v.normalOS, v.tangentOS );

				o.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH(normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz);
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				o.fogFactorAndVertexLight = half4(0, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			FragmentOutput frag ( VertexOutput IN
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								, bool ase_vface : SV_IsFrontFace )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord8.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float4 Albedo_Base195 = tex2DNode17;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord8.xy * appendResult261 + appendResult262;
				float4 Detail_Albedo248 = tex2D( _DetailAlbedoMap, texCoord257 );
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord8.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float4 appendResult935 = (float4(WorldPosition.x , WorldPosition.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( WorldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float3x3 ase_tangentToWorldFast = float3x3(WorldTangent.x,WorldBiTangent.x,WorldNormal.x,WorldTangent.y,WorldBiTangent.y,WorldNormal.y,WorldTangent.z,WorldBiTangent.z,WorldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float4 lerpResult265 = lerp( ( Albedo_Base195 * _Color ) , ( Detail_Albedo248 * _DetailTint ) , Detail_Blending277);
				float4 lerpResult964 = lerp( float4( 1,1,1,0 ) , _PuddleColor , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float4 staticSwitch959 = ( lerpResult265 * lerpResult964 );
				#else
				float4 staticSwitch959 = lerpResult265;
				#endif
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord8.xy * temp_cast_2 + Global_UV170;
				float4 Albedo_Snow198 = tex2D( _SnowAlbedo, texCoord1385 );
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, WorldPosition, WorldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( WorldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tangentToWorldDir1209 = mul( ase_tangentToWorldFast, Normal_Combined213 );
				float dotResult72 = dot( WorldViewDirection , -( _MainLightPosition.xyz + ( tangentToWorldDir1209 * _SSSDistortion ) ) );
				float dotResult82 = dot( dotResult72 , _SSSScale );
				float SSS184 = ( saturate( dotResult82 ) * _SSSIntensity );
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				float4 lerpResult16 = lerp( staticSwitch959 , ( Albedo_Snow198 + SSS184 ) , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float4 staticSwitch1253 = lerpResult16;
				#else
				float4 staticSwitch1253 = staticSwitch959;
				#endif
				float4 temp_output_40_0 = ( staticSwitch1253 + (0.0 + (Wetness163 - 0.0) * (-0.01 - 0.0) / (1.0 - 0.0)) );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_FADE)
				float4 staticSwitch1284 = temp_output_40_0;
				#elif defined(_RENDERING_TRANSPARENT)
				float4 staticSwitch1284 = ( temp_output_40_0 * BaseAlpha1283 );
				#elif defined(_RENDERING_OPAQUE)
				float4 staticSwitch1284 = temp_output_40_0;
				#else
				float4 staticSwitch1284 = temp_output_40_0;
				#endif
				float4 Albedo_Final224 = staticSwitch1284;
				
				float3 surf_pos107_g55 = WorldPosition;
				float3 surf_norm107_g55 = WorldNormal;
				float RainIntensity233 = _EnviroRainIntensity;
				float temp_output_1156_0 = (1.0 + (( _RainFlowStrength * RainIntensity233 ) - 0.0) * (-1.0 - 1.0) / (1.0 - 0.0));
				float temp_output_1039_0 = ( _TimeParameters.x * 0.05 );
				float4 transform1024 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float2 appendResult1027 = (float2(( transform1024.z * 0.7 ) , ( transform1024.y * 0.2 )));
				float2 panner1030 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1027 * _RainFlowTiling ));
				float2 texCoord649 = IN.ase_texcoord8.xy * float2( 10,10 ) + float2( 0,0 );
				float gradientNoise650 = UnityGradientNoise(texCoord649,_RainFlowDistortionScale);
				gradientNoise650 = gradientNoise650*0.5 + 0.5;
				float Distortion655 = ( gradientNoise650 * _RainFlowDistortionStrenght );
				float simpleNoise1021 = SimpleNoise( ( panner1030 + Distortion655 )*100.0 );
				simpleNoise1021 = simpleNoise1021*2 - 1;
				float smoothstepResult1071 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1021);
				float temp_output_1047_0 = ( ( ( WorldNormal.y - 0.7 ) * -1.0 ) * _RainFlowIntensity );
				float3 temp_cast_5 = (0.3).xxx;
				float3 break1080 = ( abs( WorldNormal ) - temp_cast_5 );
				float lerpResult1081 = lerp( 0.0 , ( smoothstepResult1071 * temp_output_1047_0 ) , break1080.x);
				float4 transform1025 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord9.xyz , 0.0 ));
				float2 appendResult1026 = (float2(( transform1025.x * 0.7 ) , ( transform1025.y * 0.2 )));
				float2 panner1031 = ( temp_output_1039_0 * float2( 0,1 ) + ( appendResult1026 * _RainFlowTiling ));
				float simpleNoise1028 = SimpleNoise( ( panner1031 + Distortion655 )*100.0 );
				simpleNoise1028 = simpleNoise1028*2 - 1;
				float smoothstepResult1070 = smoothstep( temp_output_1156_0 , 1.0 , simpleNoise1028);
				float lerpResult1082 = lerp( 0.0 , ( smoothstepResult1070 * temp_output_1047_0 ) , break1080.z);
				float Rain_Distance_Fade1154 = ( 1.0 - sqrt( saturate( ( distance( WorldPosition , _WorldSpaceCameraPos ) / _RainDistanceFade ) ) ) );
				float switchResult1400 = (((ase_vface>0)?(( ( lerpResult1081 + lerpResult1082 ) * Rain_Distance_Fade1154 )):(0.0)));
				float temp_output_1075_0 = saturate( switchResult1400 );
				float height107_g55 = temp_output_1075_0;
				float scale107_g55 = 0.1;
				float3 localPerturbNormal107_g55 = PerturbNormal107_g55( surf_pos107_g55 , surf_norm107_g55 , height107_g55 , scale107_g55 );
				float3 worldToTangentDir42_g55 = mul( ase_worldToTangent, localPerturbNormal107_g55);
				float3 RainFlow411 = worldToTangentDir42_g55;
				float localRainRipples1_g54 = ( 0.0 );
				float2 temp_cast_7 = (_RainDropTiling).xx;
				float2 texCoord879 = IN.ase_texcoord8.xy * temp_cast_7 + float2( 0,0 );
				float2 UV1_g54 = texCoord879;
				float AngleOffset1_g54 = 5.0;
				float CellDensity1_g54 = 12.0;
				float Time1_g54 = ( _TimeParameters.x * _RainDropSpeed );
				float temp_output_1128_0 = ( _RainDropIntensity * 1.5 );
				float lerpResult1126 = lerp( _RainDropIntensity , temp_output_1128_0 , Puddle_Mask584);
				#ifdef _PUDDLES_ON
				float staticSwitch1129 = lerpResult1126;
				#else
				float staticSwitch1129 = temp_output_1128_0;
				#endif
				float switchResult1402 = (((ase_vface>0)?(( ( ( WorldNormal.y - 0.8 ) * ( staticSwitch1129 * RainIntensity233 ) ) * Rain_Distance_Fade1154 )):(0.0)));
				float Strength1_g54 = max( 0.0 , switchResult1402 );
				float3 normal1_g54 = float3( 0,0,0 );
				float Out1_g54 = 0.0;
				float lerpResult1002 = lerp( 5.0 , 8.0 , Puddle_Mask584);
				float pow1_g54 = lerpResult1002;
				float lerpResult1004 = lerp( 1.0 , 0.0 , Puddle_Mask584);
				float sin1_g54 = lerpResult1004;
				{
				Rain(UV1_g54,AngleOffset1_g54,CellDensity1_g54,Time1_g54,Strength1_g54,pow1_g54,sin1_g54,Out1_g54,normal1_g54);
				}
				float3 temp_output_1392_9 = normal1_g54;
				float3 Rain_Drop341 = temp_output_1392_9;
				#ifdef _RAIN_ON
				float3 staticSwitch639 = BlendNormal( Normal_Combined213 , BlendNormal( RainFlow411 , Rain_Drop341 ) );
				#else
				float3 staticSwitch639 = Normal_Combined213;
				#endif
				float temp_output_729_0 = ( _TimeParameters.x * 0.05 );
				float2 temp_cast_8 = (_PuddleWaveTiling).xx;
				float2 texCoord732 = IN.ase_texcoord8.xy * temp_cast_8 + float2( 0,0 );
				float2 panner734 = ( temp_output_729_0 * float2( 1,0 ) + texCoord732);
				float temp_output_735_0 = ( Puddle_Mask584 * ( _PuddleWaveIntensity * Wetness163 ) );
				float3 unpack737 = UnpackNormalScale( tex2D( _WaveNormal, panner734 ), temp_output_735_0 );
				unpack737.z = lerp( 1, unpack737.z, saturate(temp_output_735_0) );
				float2 temp_cast_9 = (_PuddleWaveTiling).xx;
				float2 texCoord733 = IN.ase_texcoord8.xy * temp_cast_9 + float2( 0,0 );
				float2 panner736 = ( temp_output_729_0 * float2( 0,1 ) + texCoord733);
				float3 unpack738 = UnpackNormalScale( tex2D( _WaveNormal, panner736 ), temp_output_735_0 );
				unpack738.z = lerp( 1, unpack738.z, saturate(temp_output_735_0) );
				float3 Puddle740 = BlendNormal( unpack737 , unpack738 );
				#ifdef _PUDDLES_ON
				float3 staticSwitch628 = BlendNormal( staticSwitch639 , Puddle740 );
				#else
				float3 staticSwitch628 = staticSwitch639;
				#endif
				float3 Normals_Final216 = staticSwitch628;
				
				float4 Emission_Final678 = ( tex2D( _EmissionMap, Parallax_UV178 ) * _EmissionColor );
				
				float Metallic_Base187 = tex2DNode22.r;
				float4 tex2DNode1211 = tex2D( _DetailMask, texCoord257 );
				float Detail_Metallic1212 = tex2DNode1211.r;
				float lerpResult1231 = lerp( saturate( ( Metallic_Base187 + _MetallicBase ) ) , saturate( ( Detail_Metallic1212 + _MetallicDetail ) ) , Mask253);
				float4 tex2DNode1387 = tex2D( _SnowMask, texCoord1385 );
				float Metallic_Snow189 = tex2DNode1387.r;
				float lerpResult15 = lerp( lerpResult1231 , Metallic_Snow189 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1254 = lerpResult15;
				#else
				float staticSwitch1254 = lerpResult1231;
				#endif
				float Metallic_Final218 = staticSwitch1254;
				
				float Smoothness663 = tex2DNode22.a;
				float Smothness_Detail665 = tex2DNode1211.a;
				float lerpResult671 = lerp( ( ( Smoothness663 * _Smoothness ) + _SmoothnessAdd ) , ( ( Smothness_Detail665 * _SmoothnessDetail ) + _SmoothnessDetailAdd ) , Mask253);
				float lerpResult37 = lerp( 0.0 , _SmoothnessWet , Wetness163);
				#ifdef _PUDDLES_ON
				float staticSwitch629 = ( lerpResult37 + saturate( ( Puddle_Mask584 - 0.2 ) ) );
				#else
				float staticSwitch629 = lerpResult37;
				#endif
				float RainDropSmoothness870 = ( Out1_g54 * 0.25 );
				float RainFlowSmoothness1087 = ( temp_output_1075_0 * _RainFlowSmoothnessBoost );
				#ifdef _RAIN_ON
				float staticSwitch944 = ( ( staticSwitch629 + RainDropSmoothness870 ) + RainFlowSmoothness1087 );
				#else
				float staticSwitch944 = staticSwitch629;
				#endif
				float temp_output_674_0 = ( lerpResult671 + staticSwitch944 );
				float Smothness_Snow664 = tex2DNode1387.a;
				float lerpResult668 = lerp( temp_output_674_0 , Smothness_Snow664 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1256 = lerpResult668;
				#else
				float staticSwitch1256 = temp_output_674_0;
				#endif
				float Smoothness_Final220 = saturate( staticSwitch1256 );
				
				float Occlusion_Base193 = tex2DNode22.g;
				float Detail_Occlusion1213 = tex2DNode1211.g;
				float lerpResult1236 = lerp( Occlusion_Base193 , Detail_Occlusion1213 , Mask253);
				float Occlusion_Snow191 = tex2DNode1387.g;
				float lerpResult27 = lerp( lerpResult1236 , Occlusion_Snow191 , Snow_Blend_Normal205);
				#ifdef _SNOW_ON
				float staticSwitch1255 = lerpResult27;
				#else
				float staticSwitch1255 = lerpResult1236;
				#endif
				float lerpResult969 = lerp( 1.0 , staticSwitch1255 , _OcclusionStrength);
				#ifdef _PUDDLES_ON
				float staticSwitch970 = saturate( ( lerpResult969 + Puddle_Mask584 ) );
				#else
				float staticSwitch970 = lerpResult969;
				#endif
				float Occlusion_Final222 = staticSwitch970;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				float3 BaseColor = Albedo_Final224.rgb;
				float3 Normal = Normals_Final216;
				float3 Emission = Emission_Final678.rgb;
				float3 Specular = 0.5;
				float Metallic = Metallic_Final218;
				float Smoothness = Smoothness_Final220;
				float Occlusion = Occlusion_Final222;
				float Alpha = OpacityFinal1278;
				float AlphaClipThreshold = OpacityMaskFinal1289;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = IN.positionCS;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(IN.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			

			#pragma vertex vert
			#pragma fragment frag

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#include "EnviroInclude.hlsl"


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _BumpMap;
			sampler2D _DetailNormalMap;
			sampler2D _Mask;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.ase_texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord1.xyz = ase_worldNormal;
				o.ase_texcoord2.xyz = ase_worldPos;
				o.ase_texcoord4.xyz = ase_worldTangent;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN , bool ase_vface : SV_IsFrontFace) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				float3 ase_worldNormal = IN.ase_texcoord1.xyz;
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord.xy * appendResult261 + appendResult262;
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord3.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, ase_worldPos, ase_worldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord.xy * temp_cast_2 + Global_UV170;
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( ase_worldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				surfaceDescription.Alpha = OpacityFinal1278;
				surfaceDescription.AlphaClipThreshold = OpacityMaskFinal1289;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define ASE_DISTANCE_TESSELLATION
			#define _EMISSION
			#define _ALPHATEST_ON 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140009


			

			#pragma vertex vert
			#pragma fragment frag

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			

			
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
            #if ASE_SRP_VERSION >=140007
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _TESSELLATION_ON
			#pragma shader_feature_local _SNOW_ON
			#pragma shader_feature_local _PUDDLES_ON
			#pragma shader_feature_local _RENDERING_CUTOUT _RENDERING_FADE _RENDERING_TRANSPARENT _RENDERING_OPAQUE
			#pragma shader_feature_local _DETAILPROCEDURALMASK_OFF _DETAILPROCEDURALMASK_MASK _DETAILPROCEDURALMASK_PROCEDURAL _DETAILPROCEDURALMASK_HEIGHT
			#include "EnviroInclude.hlsl"


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailTint;
			float4 _PuddleColor;
			float4 _TilingOffset;
			float4 _EmissionColor;
			float4 _Color;
			float4 _DetailTilingOffset;
			float2 _GlobalNormalTiling;
			float _RainFlowStrength;
			float _RainFlowTiling;
			float _RainFlowDistortionScale;
			float _RainFlowDistortionStrenght;
			float _RainFlowIntensity;
			float _RainDistanceFade;
			float _RainDropTiling;
			float _RainDropSpeed;
			int _SrcBlend;
			float _Opacity;
			float _PuddleWaveTiling;
			float _PuddleWaveIntensity;
			float _MetallicBase;
			float _MetallicDetail;
			float _Smoothness;
			float _SmoothnessDetail;
			float _SmoothnessWet;
			float _RainFlowSmoothnessBoost;
			float _RainDropIntensity;
			float _SSSIntensity;
			float _GlobalNormalIntensity;
			float _SSSDistortion;
			int _DstBlend;
			int _ZWrite;
			int _CullMode;
			float _TessellationFactor;
			float _SnowTiling;
			float _SnowDisplacementStrength;
			float _PuddleIntensity;
			float _PuddleCoverageNoise;
			float _DisplacementStrength;
			float _DetailMaskTiling;
			float _DetailHeightBlendStrength;
			float _DetailProceduralMaskScale;
			float _DetailProceduralMaskIntensity;
			float _DetailThreshold;
			float _DetailHeight;
			float _BumpScale;
			float _DetailNormalMapScale;
			float _OcclusionStrength;
			float _SnowNormalScale;
			float _SSSScale;
			float _CutOff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _SnowMask;
			float _EnviroSnow;
			sampler2D _BaseMask;
			float _EnviroWetness;
			sampler2D _MainTex;
			sampler2D _BumpMap;
			sampler2D _DetailNormalMap;
			sampler2D _Mask;
			sampler2D _GlobalNormal;
			sampler2D _SnowNormal;


			inline float noise_randomValue (float2 uv) { return frac(sin(dot(uv, float2(12.9898, 78.233)))*43758.5453); }
			inline float noise_interpolate (float a, float b, float t) { return (1.0-t)*a + (t*b); }
			inline float valueNoise (float2 uv)
			{
				float2 i = floor(uv);
				float2 f = frac( uv );
				f = f* f * (3.0 - 2.0 * f);
				uv = abs( frac(uv) - 0.5);
				float2 c0 = i + float2( 0.0, 0.0 );
				float2 c1 = i + float2( 1.0, 0.0 );
				float2 c2 = i + float2( 0.0, 1.0 );
				float2 c3 = i + float2( 1.0, 1.0 );
				float r0 = noise_randomValue( c0 );
				float r1 = noise_randomValue( c1 );
				float r2 = noise_randomValue( c2 );
				float r3 = noise_randomValue( c3 );
				float bottomOfGrid = noise_interpolate( r0, r1, f.x );
				float topOfGrid = noise_interpolate( r2, r3, f.x );
				float t = noise_interpolate( bottomOfGrid, topOfGrid, f.y );
				return t;
			}
			
			float SimpleNoise(float2 UV)
			{
				float t = 0.0;
				float freq = pow( 2.0, float( 0 ) );
				float amp = pow( 0.5, float( 3 - 0 ) );
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(1));
				amp = pow(0.5, float(3-1));
				t += valueNoise( UV/freq )*amp;
				freq = pow(2.0, float(2));
				amp = pow(0.5, float(3-2));
				t += valueNoise( UV/freq )*amp;
				return t;
			}
			
			inline float3 TriplanarSampling720( sampler2D topTexMap, float3 worldPos, float3 worldNormal, float falloff, float2 tiling, float3 normalScale, float3 index )
			{
				float3 projNormal = ( pow( abs( worldNormal ), falloff ) );
				projNormal /= ( projNormal.x + projNormal.y + projNormal.z ) + 0.00001;
				float3 nsign = sign( worldNormal );
				half4 xNorm; half4 yNorm; half4 zNorm;
				xNorm = tex2D( topTexMap, tiling * worldPos.zy * float2(  nsign.x, 1.0 ) );
				yNorm = tex2D( topTexMap, tiling * worldPos.xz * float2(  nsign.y, 1.0 ) );
				zNorm = tex2D( topTexMap, tiling * worldPos.xy * float2( -nsign.z, 1.0 ) );
				xNorm.xyz  = half3( UnpackNormalScale( xNorm, normalScale.y ).xy * float2(  nsign.x, 1.0 ) + worldNormal.zy, worldNormal.x ).zyx;
				yNorm.xyz  = half3( UnpackNormalScale( yNorm, normalScale.x ).xy * float2(  nsign.y, 1.0 ) + worldNormal.xz, worldNormal.y ).xzy;
				zNorm.xyz  = half3( UnpackNormalScale( zNorm, normalScale.y ).xy * float2( -nsign.z, 1.0 ) + worldNormal.xy, worldNormal.z ).xyz;
				return normalize( xNorm.xyz * projNormal.x + yNorm.xyz * projNormal.y + zNorm.xyz * projNormal.z );
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 temp_cast_0 = (_SnowTiling).xx;
				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = v.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 texCoord1385 = v.ase_texcoord.xy * temp_cast_0 + Global_UV170;
				float4 tex2DNode1387 = tex2Dlod( _SnowMask, float4( texCoord1385, 0, 0.0) );
				float Height_Snow234 = tex2DNode1387.b;
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				#ifdef _SNOW_ON
				float3 staticSwitch1257 = ( saturate( ( ( Height_Snow234 + 0.5 ) * _SnowDisplacementStrength ) ) * ( v.normalOS * saturate( ( ( ase_worldNormal.y - 0.3 ) * Snow_Amount199 ) ) ) );
				#else
				float3 staticSwitch1257 = float3(0,0,0);
				#endif
				float3 Snow_Displacement707 = staticSwitch1257;
				float4 tex2DNode22 = tex2Dlod( _BaseMask, float4( Global_UV170, 0, 1.0) );
				float HEIGHT305 = tex2DNode22.b;
				float3 ase_worldTangent = TransformObjectToWorldDir(v.ase_tangent.xyz);
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 ase_worldPos = TransformObjectToWorld( (v.positionOS).xyz );
				float3 ase_worldViewDir = ( _WorldSpaceCameraPos.xyz - ase_worldPos );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_tanViewDir =  tanToWorld0 * ase_worldViewDir.x + tanToWorld1 * ase_worldViewDir.y  + tanToWorld2 * ase_worldViewDir.z;
				ase_tanViewDir = normalize(ase_tanViewDir);
				float ase_faceVertex = (dot(ase_tanViewDir,float3(0,0,1)));
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_faceVertex>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _TESSELLATION_ON
				float3 staticSwitch1362 = ( Snow_Displacement707 + ( v.normalOS * ( ( HEIGHT305 * ( 1.0 - Puddle_Mask584 ) ) * _DisplacementStrength ) ) );
				#else
				float3 staticSwitch1362 = float3(0,0,0);
				#endif
				
				o.ase_texcoord1.xyz = ase_worldNormal;
				o.ase_texcoord2.xyz = ase_worldPos;
				o.ase_texcoord4.xyz = ase_worldTangent;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = staticSwitch1362;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );
				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_tangent : TANGENT;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_tangent = v.ase_tangent;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessellationFactor; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_tangent = patch[0].ase_tangent * bary.x + patch[1].ase_tangent * bary.y + patch[2].ase_tangent * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN , bool ase_vface : SV_IsFrontFace) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float2 appendResult286 = (float2(_TilingOffset.x , _TilingOffset.y));
				float2 appendResult287 = (float2(_TilingOffset.z , _TilingOffset.w));
				float2 texCoord44 = IN.ase_texcoord.xy * appendResult286 + appendResult287;
				float2 Global_UV170 = texCoord44;
				float2 Parallax_UV178 = Global_UV170;
				float4 tex2DNode17 = tex2D( _MainTex, Parallax_UV178 );
				float Opacity1274 = tex2DNode17.a;
				float TintAlpha1273 = _Color.a;
				float temp_output_1277_0 = ( Opacity1274 * TintAlpha1273 );
				float3 ase_worldNormal = IN.ase_texcoord1.xyz;
				float3 ase_worldPos = IN.ase_texcoord2.xyz;
				float4 appendResult935 = (float4(ase_worldPos.x , ase_worldPos.z , 0.0 , 0.0));
				float simpleNoise921 = SimpleNoise( appendResult935.xy*_PuddleCoverageNoise );
				simpleNoise921 = simpleNoise921*2 - 1;
				float Snow_Amount199 = ( _EnviroSnow * 2.0 );
				float Wetness163 = _EnviroWetness;
				float switchResult1401 = (((ase_vface>0)?(saturate( ( ( ( ase_worldNormal.y - 0.9 ) * ( ( saturate( ( _PuddleIntensity * simpleNoise921 ) ) * saturate( ( 2.0 - Snow_Amount199 ) ) ) * Wetness163 ) ) * 8.0 ) )):(0.0)));
				#ifdef _PUDDLES_ON
				float staticSwitch996 = switchResult1401;
				#else
				float staticSwitch996 = 0.0;
				#endif
				float Puddle_Mask584 = staticSwitch996;
				#ifdef _PUDDLES_ON
				float staticSwitch659 = saturate( ( _BumpScale - Puddle_Mask584 ) );
				#else
				float staticSwitch659 = _BumpScale;
				#endif
				float3 unpack19 = UnpackNormalScale( tex2D( _BumpMap, Parallax_UV178 ), staticSwitch659 );
				unpack19.z = lerp( 1, unpack19.z, saturate(staticSwitch659) );
				float3 Normal_Base209 = unpack19;
				float2 appendResult261 = (float2(_DetailTilingOffset.x , _DetailTilingOffset.y));
				float2 appendResult262 = (float2(_DetailTilingOffset.z , _DetailTilingOffset.w));
				float2 texCoord257 = IN.ase_texcoord.xy * appendResult261 + appendResult262;
				float3 unpack245 = UnpackNormalScale( tex2D( _DetailNormalMap, texCoord257 ), _DetailNormalMapScale );
				unpack245.z = lerp( 1, unpack245.z, saturate(_DetailNormalMapScale) );
				float3 Detail_Normal249 = unpack245;
				float4 tex2DNode22 = tex2D( _BaseMask, Global_UV170 );
				float HEIGHT305 = tex2DNode22.b;
				float2 appendResult256 = (float2(_DetailMaskTiling , _DetailMaskTiling));
				float2 texCoord254 = IN.ase_texcoord.xy * appendResult256 + float2( 0,0 );
				float HeightMask1341 = saturate(pow(max( (((HEIGHT305*tex2D( _Mask, texCoord254 ).r)*4)+(tex2D( _Mask, texCoord254 ).r*2)), 0 ),_DetailHeightBlendStrength));
				float simpleNoise1239 = SimpleNoise( texCoord254*_DetailProceduralMaskScale );
				simpleNoise1239 = simpleNoise1239*2 - 1;
				float HeightMask1249 = saturate(pow(max( (((HEIGHT305*saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) ))*4)+(saturate( ( simpleNoise1239 * _DetailProceduralMaskIntensity ) )*2)), 0 ),_DetailHeightBlendStrength));
				float4 transform1329 = mul(GetObjectToWorldMatrix(),float4( IN.ase_texcoord3.xyz , 0.0 ));
				float smoothstepResult1323 = smoothstep( ( _DetailHeight - 1.0 ) , ( _DetailHeight + 1.0 ) , transform1329.y);
				float3 ase_worldTangent = IN.ase_texcoord4.xyz;
				float3 ase_worldBitangent = IN.ase_texcoord5.xyz;
				float3x3 ase_tangentToWorldFast = float3x3(ase_worldTangent.x,ase_worldBitangent.x,ase_worldNormal.x,ase_worldTangent.y,ase_worldBitangent.y,ase_worldNormal.y,ase_worldTangent.z,ase_worldBitangent.z,ase_worldNormal.z);
				float3 tangentToWorldDir1332 = mul( ase_tangentToWorldFast, Normal_Base209 );
				float smoothstepResult1335 = smoothstep( 0.0 , ( 1.0 - _DetailThreshold ) , ( smoothstepResult1323 * tangentToWorldDir1332.y ));
				float HeightMask1342 = saturate(pow(max( (((HEIGHT305*smoothstepResult1335)*4)+(smoothstepResult1335*2)), 0 ),_DetailHeightBlendStrength));
				#if defined(_DETAILPROCEDURALMASK_OFF)
				float staticSwitch1238 = 0.0;
				#elif defined(_DETAILPROCEDURALMASK_MASK)
				float staticSwitch1238 = HeightMask1341;
				#elif defined(_DETAILPROCEDURALMASK_PROCEDURAL)
				float staticSwitch1238 = HeightMask1249;
				#elif defined(_DETAILPROCEDURALMASK_HEIGHT)
				float staticSwitch1238 = HeightMask1342;
				#else
				float staticSwitch1238 = 0.0;
				#endif
				float Mask253 = saturate( staticSwitch1238 );
				float HeightMask264 = saturate(pow(((HEIGHT305*Mask253)*4)+(Mask253*2),1.0));
				float Detail_Blending277 = HeightMask264;
				float3 lerpResult283 = lerp( Normal_Base209 , Detail_Normal249 , Detail_Blending277);
				float3x3 ase_worldToTangent = float3x3(ase_worldTangent,ase_worldBitangent,ase_worldNormal);
				#ifdef _PUDDLES_ON
				float staticSwitch766 = saturate( ( _GlobalNormalIntensity - Puddle_Mask584 ) );
				#else
				float staticSwitch766 = _GlobalNormalIntensity;
				#endif
				float3 triplanar720 = TriplanarSampling720( _GlobalNormal, ase_worldPos, ase_worldNormal, 1.0, _GlobalNormalTiling, staticSwitch766, 0 );
				float3 tanTriplanarNormal720 = mul( ase_worldToTangent, triplanar720 );
				float3 Global_Normal688 = tanTriplanarNormal720;
				float3 temp_output_689_0 = BlendNormal( lerpResult283 , Global_Normal688 );
				float2 temp_cast_2 = (_SnowTiling).xx;
				float2 texCoord1385 = IN.ase_texcoord.xy * temp_cast_2 + Global_UV170;
				float3 unpack1386 = UnpackNormalScale( tex2D( _SnowNormal, texCoord1385 ), _SnowNormalScale );
				unpack1386.z = lerp( 1, unpack1386.z, saturate(_SnowNormalScale) );
				float3 Normal_Snow211 = unpack1386;
				float switchResult1311 = (((ase_vface>0)?(( ase_worldNormal.y * Snow_Amount199 )):(0.0)));
				float temp_output_10_0 = saturate( switchResult1311 );
				float3 lerpResult11 = lerp( temp_output_689_0 , Normal_Snow211 , temp_output_10_0);
				#ifdef _SNOW_ON
				float3 staticSwitch1261 = lerpResult11;
				#else
				float3 staticSwitch1261 = temp_output_689_0;
				#endif
				float3 Normal_Combined213 = staticSwitch1261;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal12 = Normal_Combined213;
				float3 worldNormal12 = float3(dot(tanToWorld0,tanNormal12), dot(tanToWorld1,tanNormal12), dot(tanToWorld2,tanNormal12));
				float switchResult1310 = (((ase_vface>0)?(saturate( ( worldNormal12.y * Snow_Amount199 ) )):(0.0)));
				#ifdef _SNOW_ON
				float staticSwitch1259 = switchResult1310;
				#else
				float staticSwitch1259 = 0.0;
				#endif
				float Snow_Blend_Normal205 = staticSwitch1259;
				#ifdef _SNOW_ON
				float staticSwitch1294 = ( temp_output_1277_0 + ( Snow_Blend_Normal205 * 2.0 ) );
				#else
				float staticSwitch1294 = temp_output_1277_0;
				#endif
				float BaseAlpha1283 = saturate( ( staticSwitch1294 + _Opacity ) );
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1279 = BaseAlpha1283;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1279 = 1.0;
				#else
				float staticSwitch1279 = 1.0;
				#endif
				float OpacityFinal1278 = staticSwitch1279;
				
				#if defined(_RENDERING_CUTOUT)
				float staticSwitch1288 = _CutOff;
				#elif defined(_RENDERING_FADE)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_TRANSPARENT)
				float staticSwitch1288 = 0.0;
				#elif defined(_RENDERING_OPAQUE)
				float staticSwitch1288 = 0.0;
				#else
				float staticSwitch1288 = 0.0;
				#endif
				float OpacityMaskFinal1289 = staticSwitch1288;
				

				surfaceDescription.Alpha = OpacityFinal1278;
				surfaceDescription.AlphaClipThreshold = OpacityMaskFinal1289;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "EnviroSurfaceShaderEditor"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
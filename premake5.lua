project "imGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"include/imGui/imconfig.h",
        "include/imGui/imgui.h",
        "include/imGui/imgui.cpp",
        "include/imGui/imgui_draw.cpp",
        "include/imGui/imgui_internal.h",
        "include/imGui/imgui_widgets.cpp",
        "include/imGui/imstb_rectpack.h",
        "include/imGui/imstb_textedit.h",
        "include/imGui/imstb_truetype.h",
        "include/imGui/imgui_demo.cpp"
	}


	filter "system:windows"
		systemversion "latest"
        cppdialect "C++17"
		staticruntime "On"
		
	filter {"system:windows", "configurations:Release"}
		buildoptions "/MT"

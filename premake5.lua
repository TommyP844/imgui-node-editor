project "ImGuiNodeEditor"
	language "C++"
	kind "StaticLib"
	cppdialect "C++20"
    architecture "x64"
    staticruntime "Off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
   
    includedirs 
    {
        "",
        IncludeDirs["imgui"]
    }

	files
	{
        "crude_json.h",
        "crude_json.cpp",

        "imgui_bezier_math.h",
        "imgui_bezier_math.inl",

        "imgui_canvas.h",
        "imgui_canvas.cpp",

        "imgui_canvas.h",
        "imgui_canvas.cpp",

        "imgui_extra_math.h",
        "imgui_extra_math.inl",

        "imgui_node_editor.h",
        "imgui_node_editor.cpp",

        "imgui_node_editor_api.cpp",
        
        "imgui_node_editor_internal.h",
        "imgui_node_editor_internal.inl"
	}

    links 
    {
        "ImGui"
    }

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter {"configurations:Release"}
        runtime "Release"


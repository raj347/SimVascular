
#-----------------------------------------------------------------------------
# Plugin - ITK Level Sets
#-----------------------------------------------------------------------------
set(lib ${SV_LIB_ITK_LSET_NAME})

LIST(APPEND PLUGINLIBS ${lib})

include_directories(./Include)
add_subdirectory(Include)

# Contains Pure ITK Code, Mostly Level Set Code
include_directories(./ITKCode)
add_subdirectory(ITKCode)

SET(CXXSRCS  cvITKUtils.cxx cvITKLevelSet.cxx)
SET(HDRS cvITKLevelSet.h cvITKLevelSetBase.h)
add_library(${lib} ${SV_LIBRARY_TYPE} ${CXXSRCS} cv_ITKUtils_init.cxx cv_ITKLset2d_init.cxx cv_ITKLset3d_init.cxx cv_ITKLset_init.cxx)

TARGET_LINK_LIBRARIES(${lib}
 ${SV_LIB_REPOSITORY_NAME}
 ${ITK_LIBRARIES} ${VTK_LIBRARIES}
 ${GLOBAL_LIBRARIES})

if(SV_INSTALL_LIBS)
    install(TARGETS ${lib}
        RUNTIME DESTINATION ${SV_INSTALL_RUNTIME_DIR} COMPONENT PluginExecutables
        LIBRARY DESTINATION ${SV_INSTALL_LIBRARY_DIR} COMPONENT PluginLibraries
        ARCHIVE DESTINATION ${SV_INSTALL_ARCHIVE_DIR} COMPONENT PluginLibraries
        )
endif()
if(SV_INSTALL_HEADERS)
    install(FILES ${HDRS}
        DESTINATION ${SV_INSTALL_INCLUDE_DIR}/plugins/itk/ COMPONENT PluginHeaders
        )
endif()




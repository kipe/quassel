# This macro sets variables for additional Qt modules.
# We need this because targets need different Qt4 modules, i.e. different libs
# and defines. We can't simply include UseQt4 several times, since definitions add up.
# We workaround this by using our own macro to figure out what to add.

macro(setup_qt4_variables)
  set(QUASSEL_QT_LIBRARIES )
  IF(WIN32)
    set(MAIN MAIN)
  ENDIF(WIN32)
  foreach(qtmod CORE ${ARGV} ${MAIN})
    set(QUASSEL_QT_LIBRARIES ${QUASSEL_QT_LIBRARIES} ${QT_QT${qtmod}_LIBRARY} ${QT_${qtmod}_LIB_DEPENDENCIES})
  endforeach(qtmod ${ARGV})
  set(QUASSEL_QT_LIBRARIES ${QUASSEL_QT_LIBRARIES} ${QT_LIBRARIES})
endmacro(setup_qt4_variables)

# This generates a .qm from a .ts file
macro(generate_qm outvar basename)
  set(input ${basename}.ts)
  set(output ${CMAKE_CURRENT_BINARY_DIR}/${basename}.qm)
  add_custom_command(OUTPUT ${output}
          COMMAND ${QT_LRELEASE_EXECUTABLE}
          ARGS ${input}
               -qm ${output}
               -silent -compress
          DEPENDS ${basename}.ts)
  set(${outvar} ${output})
endmacro(generate_qm outvar basename)
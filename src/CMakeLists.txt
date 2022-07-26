find_package(Qt6 COMPONENTS Core Quick REQUIRED)

add_executable(${PROJECT_NAME}
  main.cpp
  qml/qml.qrc
  qml/components/components.qrc
  image_provider.cpp
  pattern_generator.cpp
  # PatternGeneratorPresenter.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt6::Core Qt6::Quick)

# qt_add_qml_module(${PROJECT_NAME}
#   URI PatternGeneratorPresenter
#   VERSION 1.0
#   SOURCES PatternGeneratorPresenter.hpp PatternGeneratorPresenter.cpp
# )

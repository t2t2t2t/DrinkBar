cmake_minimum_required(VERSION 3.16)

project(DrinkBar VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Core)
find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appDrinkBar
    main.cpp
)

qt_add_qml_module(appDrinkBar
    URI DrinkBar
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        Ui/assets/7up.png
        Ui/assets/7up-glass.png
        Ui/assets/back.png
        Ui/assets/banana.png
        Ui/assets/blueberry.png
        Ui/assets/cafe-creme.png
        Ui/assets/cappuccino.png
        Ui/assets/cappuccino-180.png
        Ui/assets/cappuccino-430.png
        Ui/assets/choco-180.png
        Ui/assets/coca-cola.png
        Ui/assets/cocacola-glass.png
        Ui/assets/cocacola-zero.png
        Ui/assets/coca-cola-zero-glass.png
        Ui/assets/coffeemilk-180.png
        Ui/assets/cold-water-180.png
        Ui/assets/cool-drink.png
        Ui/assets/cup-icon.png
        Ui/assets/decaf-180.png
        Ui/assets/decaffe.png
        Ui/assets/espresso.png
        Ui/assets/fanta.png
        Ui/assets/fanta-glass.png
        Ui/assets/fresh-juice.png
        Ui/assets/fruit-mocktail.png
        Ui/assets/fruit-punch.png
        Ui/assets/hot-chocolate.png
        Ui/assets/hot-drink.png
        Ui/assets/hot-water.png
        Ui/assets/hot-water-180.png
        Ui/assets/icons8-check-100.png
        Ui/assets/jug-coffee-180.png
        Ui/assets/jug-ss-180.png
        Ui/assets/latte-macchiato.png
        Ui/assets/latte-machiato-180.png
        Ui/assets/lemon.png
        Ui/assets/lemon-glass.png
        Ui/assets/lychee.png
        Ui/assets/mango.png
        Ui/assets/milk-tea.png
        Ui/assets/MpCodingDP_Small.png
        Ui/assets/orange.png
        Ui/assets/pepsi.png
        Ui/assets/pepsi-glass.png
        Ui/assets/plan-tea.png
        Ui/assets/porcelain-cup-180.png
        Ui/assets/restart.png
        Ui/assets/ristretto-180.png
        Ui/assets/sprite.png
        Ui/assets/sprite-glass.png
        Ui/assets/start.png
        Ui/assets/strawberry.png
        Ui/assets/tea-180.png
        Ui/assets/up-arrow.png
        Ui/assets/girl.jpg

    QML_FILES
        Ui/assets/AllDrinks.json
        HotColdSelectScreen.qml
        QML_FILES Ui/items/DrinkCustomItem.qml
        QML_FILES DrinkListScreen.qml
        QML_FILES SideSelectScreen.qml

        SOURCES justfile.h justfile.cpp
        SOURCES testqml.h testqml.cpp
        QML_FILES GirlAva.qml


)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appDrinkBar PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appDrinkBar
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appDrinkBar
    PRIVATE Qt6::Quick
)
target_link_libraries(appDrinkBar PRIVATE Qt6::Core)
target_link_libraries(appDrinkBar PRIVATE Qt6::Core)

include(GNUInstallDirs)
install(TARGETS appDrinkBar
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

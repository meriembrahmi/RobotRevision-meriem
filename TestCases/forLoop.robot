*** Settings ***
Library     String


*** Variables ***
@{ma_liste1}=       1    2    3    4
@{ma_liste2}=       samedi    dimanche    lundi    mardi


*** Test Cases ***
boucle for 1
    FOR    ${element}    IN    @{ma_liste1}
        Log To Console    ${element}
    END

boucle for 2
    FOR    ${element}    IN    @{ma_liste2}
        Log To Console    ${element}
    END

boucle for 3
    FOR    ${counter}    IN RANGE    2    21    2
        Log To Console    ${counter}
    END

boucle for 4
    FOR    ${element}    IN    @{ma_liste1}
        Log To Console    ${element}
        IF    ${element}==3            BREAK
    END

boucle for 5
    FOR    ${element}    IN    @{ma_liste2}
        Log To Console    ${element}

        IF    '${element}' == 'samedi'            BREAK
    END

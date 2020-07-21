//
//  main.cpp
//  Challenge
//
//  Created by Cris on 20/07/20.
//  Copyright © 2020 Ingrid Guerrero. All rights reserved.
//

#include <assert.h>
#include <iostream>
#include <vector>
#include <map>

//MARK: - Day1

bool Challenge1(std::string input)
{
    
    std::vector<char> charList(input.begin(), input.end());
    std::map<char, int> duplicatesCharacter;
    
    for (const char charValue : charList) {
        if (duplicatesCharacter.find(charValue) != duplicatesCharacter.end())
        {
            duplicatesCharacter[charValue] += 1;
        }
        else
        {
            duplicatesCharacter[charValue] = 1;
        }
    }
    
    for (std::pair<char, int> duplicatesMap : duplicatesCharacter )
    {
        if (duplicatesMap.second > 1)
        {
            return false;
        }
    }
    
    return true;
}


int main(int argc, const char * argv[]) {
    assert(Challenge1("No duplicates") == true);
    assert(Challenge1("abcdefghijklmnopqrstuvwxyz") == true);
    assert(Challenge1("AaBbCc") == true);
    assert(Challenge1("Hello, world") == false);
    return 0;
}

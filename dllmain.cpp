// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"

#define EXTERN_DLL_EXPORT extern "C" __declspec(dllexport)

uint8_t* mmz1_get_modded_misc_text() {
    *(uint64_t*)(0x142619770) = (uint64_t)mmz1_misc_text_script_offsets;
    *(uint64_t*)(0x142619778) = (uint64_t)mmz1_misc_text_script_data;
    // rax = font
    return (uint8_t*)mmz1_font;
}

constexpr int MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT = 694;

constexpr std::array<std::pair<uint16_t, uint16_t>, MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT> create_mmz2_index_lookup() {
    std::array<std::pair<uint16_t, uint16_t>, MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT> lookup_table = {};
    static_assert(
        mmz2_misc_text_num_entries == MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT,
        "This mod does not currently support increasing the number of entries for Mega Man Zero 2's misc_text."
    );
    // Setting up a lookup table to lookup modded MMZ2 text entries from the original offsets
    constexpr std::array<uint16_t, MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT> original_mmz2_misc_script_offsets = {
        0x0000,0x0002,0x000A,0x0011,0x0014,0x0016,0x0019,0x001B,
        0x001D,0x0020,0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,
        0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,
        0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,0x018F,0x0191,
        0x0193,0x0195,0x0197,0x0199,0x019B,0x019D,0x019F,0x01A1,
        0x01A3,0x01A8,0x01AD,0x01B2,0x01B7,0x01BC,0x01C1,0x01C6,
        0x01D6,0x01E6,0x01F7,0x0202,0x0208,0x0219,0x0229,0x0236,
        0x0246,0x0253,0x0263,0x026E,0x027D,0x028B,0x029A,0x029A,
        0x02D7,0x0312,0x034C,0x0387,0x03C5,0x0404,0x043D,0x047C,
        0x0483,0x0489,0x0490,0x0497,0x04A1,0x04A7,0x04AD,0x04B5,
        0x04BC,0x04C4,0x04CC,0x04D3,0x04DC,0x04E6,0x04ED,0x04F4,
        0x04FA,0x0502,0x0509,0x0510,0x053A,0x053A,0x053A,0x053A,
        0x054F,0x055D,0x056A,0x057D,0x0582,0x058A,0x0591,0x0598,
        0x059F,0x05A6,0x05AC,0x05B3,0x05B9,0x05C1,0x05C8,0x05CF,
        0x05D6,0x05DD,0x05E3,0x05EA,0x05F0,0x05F7,0x05FE,0x0605,
        0x060D,0x0615,0x061D,0x0625,0x062D,0x0635,0x063D,0x0645,
        0x064C,0x0653,0x0658,0x065E,0x0666,0x066D,0x0675,0x067E,
        0x0686,0x068E,0x0696,0x069E,0x06A6,0x06AE,0x06B6,0x06BE,
        0x06C6,0x06CF,0x06D7,0x06DF,0x06E7,0x06EF,0x06F7,0x06FF,
        0x0708,0x0710,0x0718,0x071E,0x0725,0x072C,0x0735,0x073E,
        0x0746,0x074E,0x0757,0x075F,0x0768,0x0771,0x0779,0x0782,
        0x078B,0x0794,0x079D,0x07A5,0x07AD,0x07B4,0x07BD,0x07C6,
        0x07D0,0x07D9,0x07DF,0x07E6,0x07EE,0x07F6,0x07FC,0x0803,
        0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,
        0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,0x080A,
        0x080A,0x0822,0x0840,0x085E,0x0879,0x0894,0x08AC,0x08C4,
        0x08E1,0x08FE,0x091E,0x093A,0x0958,0x096F,0x0988,0x09A7,
        0x09BD,0x09DD,0x09F5,0x0A0F,0x0A2D,0x0A4B,0x0A61,0x0A80,
        0x0A9A,0x0AB4,0x0ACE,0x0AE8,0x0B02,0x0B22,0x0B3C,0x0B58,
        0x0B73,0x0B8D,0x0BA9,0x0BC8,0x0BE5,0x0C02,0x0C21,0x0C3B,
        0x0C58,0x0C77,0x0C95,0x0CAA,0x0CC5,0x0CD5,0x0CF1,0x0D09,
        0x0D25,0x0D40,0x0D5D,0x0D78,0x0D96,0x0DB2,0x0DCB,0x0DE2,
        0x0E00,0x0E1D,0x0E37,0x0E52,0x0E6C,0x0E88,0x0EA3,0x0EBD,
        0x0ED8,0x0EF2,0x0F0F,0x0F26,0x0F3C,0x0F55,0x0F70,0x0F8E,
        0x0FA9,0x0FC4,0x0FE2,0x1000,0x101F,0x103E,0x1059,0x106F,
        0x1089,0x10A5,0x10C2,0x10DF,0x10FE,0x1117,0x1129,0x1129,
        0x1147,0x1147,0x1147,0x1147,0x1147,0x1147,0x1147,0x1147,
        0x1147,0x1147,0x1147,0x1147,0x1147,0x1159,0x116A,0x117F,
        0x1194,0x11A9,0x11A9,0x11BE,0x11D3,0x11E8,0x11FD,0x1212,
        0x1212,0x1212,0x1225,0x1238,0x124B,0x124B,0x124B,0x1265,
        0x127F,0x1299,0x12AE,0x12C8,0x12DC,0x12EE,0x1306,0x131E,
        0x1338,0x134F,0x1367,0x1380,0x1399,0x13B4,0x13CF,0x13EB,
        0x1404,0x141F,0x143C,0x1454,0x146D,0x1487,0x14A2,0x14BC,
        0x14D9,0x14F4,0x150F,0x152C,0x1542,0x155F,0x1578,0x1592,
        0x15AC,0x15C6,0x15DC,0x15F8,0x1613,0x162D,0x1646,0x1646,
        0x1646,0x1651,0x166C,0x167D,0x168F,0x16AC,0x16CC,0x16DA,
        0x16E5,0x16FF,0x171E,0x1732,0x174C,0x1764,0x1776,0x1776,
        0x1776,0x1776,0x1776,0x1776,0x1776,0x178A,0x1799,0x17B3,
        0x17CB,0x17E5,0x17FE,0x1819,0x181E,0x1832,0x184D,0x1865,
        0x187E,0x1893,0x1893,0x1893,0x18BC,0x18CC,0x18E1,0x1900,
        0x191A,0x196D,0x19BA,0x1A04,0x1A4D,0x1A96,0x1AE9,0x1B3B,
        0x1B86,0x1BD2,0x1C25,0x1C39,0x1C4A,0x1C4A,0x1C4A,0x1C4A,
        0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,
        0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,
        0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,
        0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,0x1C4A,
        0x1C4A,0x1C4A,0x1C4A,0x1C81,0x1CC0,0x1CFB,0x1D39,0x1D70,
        0x1DAB,0x1DE8,0x1E16,0x1E55,0x1E97,0x1E97,0x1E97,0x1E97,
        0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,
        0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,
        0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,
        0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,
        0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1E97,0x1EFB,0x1FA9,
        0x1FA9,0x1FA9,0x1FA9,0x1FA9,0x1FA9,0x1FA9,0x1FA9,0x1FB7,
        0x1FC2,0x1FCD,0x1FD8,0x1FE3,0x1FEF,0x1FFB,0x200C,0x201E,
        0x202F,0x203E,0x204D,0x205C,0x206B,0x2079,0x2087,0x2099,
        0x20AC,0x20AC,0x20AC,0x20AC,0x20AC,0x20AC,0x20BE,0x20CD,
        0x20DC,0x20F5,0x210E,0x211F,0x2130,0x2141,0x2141,0x2141,
        0x2141,0x2141,0x2141,0x2141,0x2141,0x2141,0x2141,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,
        0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x2698,0x26B6,
        0x26D4,0x26F2,0x2710,0x272E,0x274C,0x276A,0x2788,0x27A6,
        0x27C4,0x27E2,0x2800,0x281E,0x283C,0x285A,0x2878,0x2896,
        0x28B4,0x28D2,0x28F0,0x290E,0x292C,0x296F,
    };
    for (size_t i = 0; i < MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT; i++) {
        lookup_table[i].first = original_mmz2_misc_script_offsets[i];
        lookup_table[i].second = mmz2_misc_text_script_offsets[i];
    }
    // Since this is using the script offset as the index instead of the actual script index,
    // offsets that were duplicated in the original script must be duplicated in the modded one
    constexpr bool verify_duplicates = [original_mmz2_misc_script_offsets]() {
        for (size_t i = 1; i < original_mmz2_misc_script_offsets.size(); i++) {
            if ((original_mmz2_misc_script_offsets[i] == original_mmz2_misc_script_offsets[i - 1]) &&
                (mmz2_misc_text_script_offsets[i] != mmz2_misc_text_script_offsets[i - 1])) {
                return false;
            }
        }
        return true;
    }();
    static_assert(
        verify_duplicates,
        "This mod does not currently support changing duplicated entries for Mega Man Zero 2's misc_text."
    );
    return lookup_table;
};

// Check if this function is using a misc text script and find the equivalent modded text
void mmz2_replace_misc_text(uint64_t* scriptPtr) {
    static constexpr std::array<std::pair<uint16_t, uint16_t>, MMZ2_ORIGINAL_MISC_TEXT_ENTRY_COUNT> mmz2_script_index_lookup = create_mmz2_index_lookup();
    uint64_t script = *scriptPtr;
    if ((script >= 0x141CF7F60) &&
        (script <= 0x141CFA90C)) {
        uint16_t text_dist = script - 0x141CF7F60;
        for (size_t i = 0; i < mmz2_script_index_lookup.size(); i++) {
            if (mmz2_script_index_lookup[i].first == text_dist) {
                *scriptPtr = (uint64_t)mmz2_misc_text_script_data + mmz2_script_index_lookup[i].second;
                return;
            }
        }
        // Should not happen?
        printf("WARNING: Could not match text distance 0x%04X", text_dist);
        *scriptPtr = (uint64_t)mmz2_misc_text_script_data;
    }
}

uint8_t* mmz3_get_modded_misc_text() {
    *(uint64_t*)(0x142618878) = (uint64_t)mmz3_misc_text_script_offsets;
    *(uint64_t*)(0x142618880) = (uint64_t)mmz3_misc_text_script_data;
    // rax = font
    return (uint8_t*)mmz3_font;
}

uint8_t* mmz4_get_modded_misc_text() {
    *(uint64_t*)(0x14261cc28) = (uint64_t)mmz4_misc_text_script_offsets;
    *(uint64_t*)(0x14261d6e8) = (uint64_t)mmz4_misc_text_script_data;
    // rax = font
    return (uint8_t*)mmz4_font;
}

EXTERN_DLL_EXPORT void mod_open() {
    // Mega Man Zero 1
    // Write modded text pointers to the list of texts
    constexpr std::array<const uint16_t*, 19> mmz1_moddedTextOffsets = {
        mmz1_msg00_script_offsets,
        mmz1_msg01_script_offsets,
        mmz1_msg02_script_offsets,
        mmz1_msg03_script_offsets,
        mmz1_msg04_script_offsets,
        mmz1_msg05_script_offsets,
        mmz1_msg06_script_offsets,
        mmz1_msg07_script_offsets,
        mmz1_msg08_script_offsets,
        mmz1_msg09_script_offsets,
        mmz1_msg0A_script_offsets,
        mmz1_msg0B_script_offsets,
        mmz1_msg0C_script_offsets,
        mmz1_msg0D_script_offsets,
        mmz1_msg0E_script_offsets,
        mmz1_msg0F_script_offsets,
        mmz1_msg10_script_offsets,
        mmz1_msg11_script_offsets,
        mmz1_msg12_script_offsets,
    };
    constexpr std::array<const uint8_t*, 19> mmz1_moddedTextDatas = {
        mmz1_msg00_script_data,
        mmz1_msg01_script_data,
        mmz1_msg02_script_data,
        mmz1_msg03_script_data,
        mmz1_msg04_script_data,
        mmz1_msg05_script_data,
        mmz1_msg06_script_data,
        mmz1_msg07_script_data,
        mmz1_msg08_script_data,
        mmz1_msg09_script_data,
        mmz1_msg0A_script_data,
        mmz1_msg0B_script_data,
        mmz1_msg0C_script_data,
        mmz1_msg0D_script_data,
        mmz1_msg0E_script_data,
        mmz1_msg0F_script_data,
        mmz1_msg10_script_data,
        mmz1_msg11_script_data,
        mmz1_msg12_script_data,
    };
    for (size_t i = 0; i < 19; i++) {
        *((const uint16_t**)0x141DB7E90 + i) = mmz1_moddedTextOffsets[i];
        *((const uint8_t**)0x141DB7FD0 + i) = mmz1_moddedTextDatas[i];
    }
    // This text gets loaded separately for some reason
    // Replace code that gets the english text info with call to function to set modded text
    std::array<uint8_t, 0x23> hookBase = {
        //Push RCX to preserve param1 for this function
        0x51,                                                        //push rcx
        0x48, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  //mov rax, functionPointer
        0xFF, 0xD0,                                                  //call rax
        0x59,                                                        //pop rcx
        // Multiple nops to padd out the portion of the function this is replacing
        0x90, 0x90, 0x90, 0x90, 0x90,
        0x90, 0x90, 0x90, 0x90, 0x90,
        0x90, 0x90, 0x90, 0x90, 0x90,
        0x90, 0x90, 0x90, 0x90, 0x90,
        0x90,
    };
    *(uint64_t*)&hookBase[3] = (uint64_t)&mmz1_get_modded_misc_text;
    memcpy((uint8_t*)0x1403E9719, hookBase.data(), hookBase.size());

    // Mega Man Zero 2
    // Write modded text pointers to the list of texts
    constexpr std::array<const uint16_t*, 20> mmz2_moddedTextOffsets = {
        mmz2_msg00_script_offsets,
        mmz2_msg01_script_offsets,
        mmz2_msg02_script_offsets,
        mmz2_msg03_script_offsets,
        mmz2_msg04_script_offsets,
        mmz2_msg05_script_offsets,
        mmz2_msg06_script_offsets,
        mmz2_msg07_script_offsets,
        mmz2_msg08_script_offsets,
        mmz2_msg09_script_offsets,
        mmz2_msg0A_script_offsets,
        mmz2_msg0B_script_offsets,
        mmz2_msg0C_script_offsets,
        mmz2_msg0D_script_offsets,
        mmz2_msg0E_script_offsets,
        mmz2_msg0F_script_offsets,
        mmz2_msg10_script_offsets,
        mmz2_msg11_script_offsets,
        mmz2_msg12_script_offsets,
        mmz2_msg13_script_offsets,
    };
    constexpr std::array<const uint8_t*, 20> mmz2_moddedTextDatas = {
        mmz2_msg00_script_data,
        mmz2_msg01_script_data,
        mmz2_msg02_script_data,
        mmz2_msg03_script_data,
        mmz2_msg04_script_data,
        mmz2_msg05_script_data,
        mmz2_msg06_script_data,
        mmz2_msg07_script_data,
        mmz2_msg08_script_data,
        mmz2_msg09_script_data,
        mmz2_msg0A_script_data,
        mmz2_msg0B_script_data,
        mmz2_msg0C_script_data,
        mmz2_msg0D_script_data,
        mmz2_msg0E_script_data,
        mmz2_msg0F_script_data,
        mmz2_msg10_script_data,
        mmz2_msg11_script_data,
        mmz2_msg12_script_data,
        mmz2_msg13_script_data,
    };
    for (size_t i = 0; i < 20; i++)
    {
        *((const uint16_t**)0x141DB8250 + i) = mmz2_moddedTextOffsets[i];
        *((const uint8_t**)0x141DB8390 + i) = mmz2_moddedTextDatas[i];

    }
    // Unlike Zero 1/3/4 this game inlines all its checks against the misc text.
    // These texts are only used by 2 functions, so hooking these functions and checking if they are trying to access the misc text
    // If they are the relative offset is calculated and the equivalent script is found in the modded text
    constexpr std::array<uint8_t, 7> func1403EA920_hook = {
        0xE9, 0x3B, 0xD6, 0x90, 0x01, //JMP 0x141CF7F60
        0x90, 0x90                    //NOP NOP
    };
    memcpy((uint8_t*)0x1403EA920, func1403EA920_hook.data(), func1403EA920_hook.size());
    // Writing new code to do this over the original mmz2 us text
    // This should have been marked writable and executable by the mod loader
    std::array<uint8_t, 0x23> func1403EA920_replace_pointer = {
        0x41, 0x50,                                                 // push r8
        0x52,                                                       // push rdx
        0x51,                                                       // push rcx
        0x48, 0x89, 0xE1,                                           // mov rcx, rsp (provide stack pointer as argument 1 so the function can modify it)
        0x48, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // mov rax, functionPointer
        0xFF, 0xD0,                                                 // call rax
        0x59,                                                       // pop rcx
        0x5A,                                                       // pop rdx
        0x41, 0x58,                                                 // pop r8
        0x83, 0x3D, 0xDA, 0x0E, 0x94, 0x00, 0x00,                   // cmp [0x142638E58], 0x00 (overwritten opcode)
        0xE9, 0xA4, 0x29, 0x6F, 0xFE,                               // jmp 0x1403EA927 (return to original code)
    };
    *(uint64_t*)&func1403EA920_replace_pointer[9] = (uint64_t)&mmz2_replace_misc_text;
    memcpy((uint8_t*)0x141CF7F60, func1403EA920_replace_pointer.data(), func1403EA920_replace_pointer.size());
    // Second function
    constexpr std::array<uint8_t, 5> func1403EAA90_hook = {
        0xE9, 0xFB, 0xD4, 0x90, 0x01, //JMP 0x141CF7F90
    };
    memcpy((uint8_t*)0x1403EAA90, func1403EAA90_hook.data(), func1403EAA90_hook.size());
    std::array<uint8_t, 0x25> func1403EAA90_replace_pointer = {
        0x41, 0x51,                                                 // push r9
        0x41, 0x50,                                                 // push r8
        0x52,                                                       // push rdx
        0x51,                                                       // push rcx
        0x48, 0x89, 0xE1,                                           // mov rcx, rsp
        0x48, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // mov rax, functionPointer
        0xFF, 0xD0,                                                 // call rax
        0x59,                                                       // pop rcx
        0x5A,                                                       // pop rdx
        0x41, 0x58,                                                 // pop r8
        0x41, 0x59,                                                 // pop r9
        0x48, 0x89, 0x5C, 0x24, 0x08,                               // mov [rsp +8], rbx (overwritten opcode)
        0xE9, 0xE0, 0x2A, 0x6F, 0xFE,                               // jmp 0x1403EAA95 (return to original code)
    };
    *(uint64_t*)&func1403EAA90_replace_pointer[11] = (uint64_t)&mmz2_replace_misc_text;
    memcpy((uint8_t*)0x141CF7F90, func1403EAA90_replace_pointer.data(), func1403EAA90_replace_pointer.size());

    // Mega Man Zero 3
    // Write modded text pointers to the list of texts
    constexpr std::array<const uint16_t*, 20> mmz3_moddedTextOffsets = {
        mmz3_msg00_script_offsets,
        mmz3_msg01_script_offsets,
        mmz3_msg02_script_offsets,
        mmz3_msg03_script_offsets,
        mmz3_msg04_script_offsets,
        mmz3_msg05_script_offsets,
        mmz3_msg06_script_offsets,
        mmz3_msg07_script_offsets,
        mmz3_msg08_script_offsets,
        mmz3_msg09_script_offsets,
        mmz3_msg0A_script_offsets,
        mmz3_msg0B_script_offsets,
        mmz3_msg0C_script_offsets,
        mmz3_msg0D_script_offsets,
        mmz3_msg0E_script_offsets,
        mmz3_msg0F_script_offsets,
        mmz3_msg10_script_offsets,
        mmz3_msg11_script_offsets,
        mmz3_msg12_script_offsets,
        mmz3_msg13_script_offsets,
    };
    constexpr std::array<const uint8_t*, 20> mmz3_moddedTextDatas = {
        mmz3_msg00_script_data,
        mmz3_msg01_script_data,
        mmz3_msg02_script_data,
        mmz3_msg03_script_data,
        mmz3_msg04_script_data,
        mmz3_msg05_script_data,
        mmz3_msg06_script_data,
        mmz3_msg07_script_data,
        mmz3_msg08_script_data,
        mmz3_msg09_script_data,
        mmz3_msg0A_script_data,
        mmz3_msg0B_script_data,
        mmz3_msg0C_script_data,
        mmz3_msg0D_script_data,
        mmz3_msg0E_script_data,
        mmz3_msg0F_script_data,
        mmz3_msg10_script_data,
        mmz3_msg11_script_data,
        mmz3_msg12_script_data,
        mmz3_msg13_script_data,
    };
    for (size_t i = 0; i < 20; i++) {
        *((const uint16_t**)0x141DB8640 + i) = mmz3_moddedTextOffsets[i];
        *((const uint8_t**)0x141DB86E0 + i) = mmz3_moddedTextDatas[i];
    }
    // This text gets loaded separately for some reason
    // Replace code that gets the english text info with call to function to set modded text
    *(uint64_t*)&hookBase[3] = (uint64_t)&mmz3_get_modded_misc_text;
    memcpy((uint8_t*)0x1403EC94E, hookBase.data(), hookBase.size());

    // Mega Man Zero 4
    // Write modded text pointers to the list of texts
    constexpr std::array<const uint16_t*, 22> mmz4_moddedTextOffsets = {
        mmz4_msg00_script_offsets,
        mmz4_msg01_script_offsets,
        mmz4_msg02_script_offsets,
        mmz4_msg03_script_offsets,
        mmz4_msg04_script_offsets,
        mmz4_msg05_script_offsets,
        mmz4_msg06_script_offsets,
        mmz4_msg07_script_offsets,
        mmz4_msg08_script_offsets,
        mmz4_msg09_script_offsets,
        mmz4_msg0A_script_offsets,
        mmz4_msg0B_script_offsets,
        mmz4_msg0C_script_offsets,
        mmz4_msg0D_script_offsets,
        mmz4_msg0E_script_offsets,
        mmz4_msg0F_script_offsets,
        mmz4_msg10_script_offsets,
        mmz4_msg11_script_offsets,
        mmz4_msg12_script_offsets,
        mmz4_msg13_script_offsets,
        mmz4_msg14_script_offsets,
        mmz4_msg15_script_offsets,
    };
    constexpr std::array<const uint8_t*, 22> mmz4_moddedTextDatas = {
        mmz4_msg00_script_data,
        mmz4_msg01_script_data,
        mmz4_msg02_script_data,
        mmz4_msg03_script_data,
        mmz4_msg04_script_data,
        mmz4_msg05_script_data,
        mmz4_msg06_script_data,
        mmz4_msg07_script_data,
        mmz4_msg08_script_data,
        mmz4_msg09_script_data,
        mmz4_msg0A_script_data,
        mmz4_msg0B_script_data,
        mmz4_msg0C_script_data,
        mmz4_msg0D_script_data,
        mmz4_msg0E_script_data,
        mmz4_msg0F_script_data,
        mmz4_msg10_script_data,
        mmz4_msg11_script_data,
        mmz4_msg12_script_data,
        mmz4_msg13_script_data,
        mmz4_msg14_script_data,
        mmz4_msg15_script_data,
    };
    for (size_t i = 0; i < 22; i++) {
        *((const uint16_t**)0x141DB8920 + i) = mmz4_moddedTextOffsets[i];
        *((const uint8_t**)0x141DB8A80 + i) = mmz4_moddedTextDatas[i];
    }
    // This text gets loaded separately for some reason
    // Replace code that gets the english text info with call to function to set modded text
    *(uint64_t*)&hookBase[3] = (uint64_t)&mmz4_get_modded_misc_text;
    memcpy((uint8_t*)0x1403EE389, hookBase.data(), hookBase.size());

    // MMZ2 font is inlined too so the function at 0x1403EB432 needs to be hooked to replace the font
    constexpr std::array<uint8_t, 7> func1403EB432_hook = {
        0xE8, 0x89, 0xCB, 0x90, 0x01, //call 0x141CF7FC0
        0x90,0x90,
    };
    memcpy((uint8_t*)0x1403EB432, func1403EB432_hook.data(), func1403EB432_hook.size());
    std::array<uint8_t, 0x0B> func1403EB432_replace_pointer = {
        0x49, 0xBC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, // mov r12, fontPointer
        0xC3,                                                       // ret
    };
    *(uint64_t*)&func1403EB432_replace_pointer[2] = (uint64_t)&mmz2_font;
    memcpy((uint8_t*)0x141CF7FC0, func1403EB432_replace_pointer.data(), func1403EB432_replace_pointer.size());

    // MMZ1 has a small font that it uses to draw the codename in the results screen
    constexpr std::array<uint8_t, 7> func1403E9D40_hook = {
        0xE9, 0xAB, 0xE2, 0x90, 0x01, //call 0x141CF7FF0
        0x90,0x90,
    };
    memcpy((uint8_t*)0x1403E9D40, func1403E9D40_hook.data(), func1403E9D40_hook.size());
    std::array<uint8_t, 0x1E> func1403E9D40_replace_pointer = {
        0x48, 0xBA, 0x90, 0x39, 0x63, 0x42, 0x01, 0x00, 0x00, 0x00, //mov language_ptr
        0x80, 0x3A, 0x00,                                           //cmp byte [rdx], 0x00
        0x74, 0x0A,                                                 //je endroutine
        0x48, 0xB9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //mov rcx, smallFontPointer
        0xE9, 0x39, 0x1D, 0x6F, 0xFE,                               //jmp 0x1403E9D47
    };
    *(uint64_t*)&func1403E9D40_replace_pointer[0x11] = (uint64_t)&mmz1_small_font;
    memcpy((uint8_t*)0x141CF7FF0, func1403E9D40_replace_pointer.data(), func1403E9D40_replace_pointer.size());
    // Just to simplify organization write codenames array here
    static_assert(
        mmz1_codename_num_entries == 20,
        "This mode does not currently support changing the amount of codenames"
    );
    memcpy((uint8_t*)0x141D28DD0, mmz1_codename_offsets, mmz1_codename_num_entries * sizeof(uint8_t*));
    // Change this so it reads the MASTER from the table instead of hard coding it in the function
    constexpr std::array<uint8_t, 7> func14032CF6B_getMASTER = {
        0x48, 0x88, 0x0D, 0xF6, 0xBE, 0x9F, 0x01, //mov rcx, [141D28E68]
    };
    memcpy((uint8_t*)0x14032CF6B, func14032CF6B_getMASTER.data(), func14032CF6B_getMASTER.size());
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     ) {
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    {
        // Basic check if this is the right release and not already patched
        uint64_t mmz1TestPointer = *(uint64_t*)(0x141DB7E90);
        uint64_t mmz2TestPointer = *(uint64_t*)(0x141DB8250);
        uint64_t mmz3TestPointer = *(uint64_t*)(0x141DB8640);
        uint64_t mmz4TestPointer = *(uint64_t*)(0x141DB8920);
        if ((mmz1TestPointer != 0x141DA41E0) ||
            (mmz2TestPointer != 0x141DA8850) ||
            (mmz3TestPointer != 0x141DAC9D0) ||
            (mmz4TestPointer != 0x141DB3250)) {
            printf("Unsupported game exe or the game's text is already modded.");
            return FALSE;
        }
    }
    break;
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}


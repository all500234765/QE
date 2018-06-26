// Each node must have several outputs/inputs (X + 1), wheres + 1 means that
// Extra output/input port must be added simultaneasly as last (in/out)put 
// Port has been used

// Node sizes
iW = 224;
iHeight = 64;
iHeaderH = 24;

iComponentHeaderH = 16;
iComponentW = 192;
iComponentH = 48;

iPadding = 10; // Padding between each component and node

iPortRad     = 6;
iPortPadding = 4;
iPortSize    = 2 * iPortPadding + iPortRad;

// Colors
cBackground = 11842740;
cComponentH = 13421619;
cNodeHeader = 1488782;
cPort       = 15461355;
cText       = 0;

// Components
dsComponentList = ds_list_create();
// Components:
//    Event (Should be default?)
//    Variants (Should be default?)
//    Value

enum eComponents {
    Event, 
    Variants, 
    Value, 
    
};

// Ports
dsInList = ds_list_create();
dsOutList = ds_list_create();

enum eWire {
    In, 
    Out
};

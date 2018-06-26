/// @desc Draw node
iH = max(iHeight, iPortSize * (ds_list_size(dsInList) + 1), iPortSize * (ds_list_size(dsOutList) + 1));
var m_iHeight = iH + iHeaderH;
var m_iH = iComponentHeaderH + m_iHeight;
var m_iW = (iW - iComponentW) / 2;
var m_iHTotal = iComponentHeaderH + iComponentH;

// Node
draw_set_color(cNodeHeader); NodeSide(x, y           , iW, iHeaderH, true );
draw_set_color(cBackground); NodeSide(x, y + iHeaderH, iW, iH      , false);

// Ports
NodePort(x, y + iHeaderH, iW, iH, [dsInList, dsOutList]);

// Components
var m_iH2 = [m_iHeight, m_iH];
for( var i = 0; i < ds_list_size(dsComponentList); i++ ) {
    draw_set_color(cComponentH); NodeSide(x + m_iW, y + m_iH2[0] + i * m_iHTotal + iPadding * (i + 1), iComponentW, iComponentHeaderH, true );
    draw_set_color(cBackground); NodeSide(x + m_iW, y + m_iH2[1] + i * m_iHTotal + iPadding * (i + 1), iComponentW, iComponentH      , false);
    
    
}


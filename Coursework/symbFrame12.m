function [ F12 ] = symbFrame12()

    %Symbols for translation matrix
    tx = sym('tx');
    ty = sym('ty');
    tz = sym('tz');
    
    %Symbols for rotation matix
    cosine  = sym('c(theta)');
    sinep   = sym('s(theta)');
    sinen   = sym('-s(theta)');
    
    %Rotation matrix
    Rotation = [ cosine sinen 0; sinep cosine 0; 0 0 1 ];
    
    %Translation matrix
    Translation = [ tx; ty; tz ];
    
    %Full homogeneous transformtaion matrix
    F12 = [ Rotation Translation; 0 0 0 1 ];

end
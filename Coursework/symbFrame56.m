function [ F56 ] = symbFrame56()

    %Symbols for translation matrix
    tx = sym('tx');
    ty = sym('ty');
    tz = sym('tz');
    
    %Symbols for rotation matix
    cosine  = sym('c(theta)');
    sinep   = sym('s(theta)');
    sinen   = sym('-s(theta)');
    
    %Rotation matrix
    Rotation = [ 1 0 0; 0 cosine sinen; 0 sinep cosine ];
    
    %Translation matrix
    Translation = [ tx; ty; tz ];
    
    %Full homogeneous transformtaion matrix
    F56 = [ Rotation Translation; 0 0 0 1 ];

end
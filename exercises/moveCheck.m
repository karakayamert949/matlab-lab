function moveCheck(n,horseLocation)
    fprintf("First Location ===>(%d,%d)\n",horseLocation(1),horseLocation(2));

    for i=1:n
        LeftUp = (horseLocation(1) - 2 )> 1 & (horseLocation(2) + 1) < 8;
        LeftDown = (horseLocation(1) - 2 )> 1 & (horseLocation(2) - 1) > 1;

        RightUp = (horseLocation(1) + 2 )< 8 & (horseLocation(2) + 1) < 8;
        RightDown = (horseLocation(1) + 2 )< 8 & (horseLocation(2) - 1) > 1;

        DownLeft = (horseLocation(2) - 2 )> 1 & (horseLocation(1) - 1) > 1;
        DownRight = (horseLocation(2) - 2 )> 1 & (horseLocation(1) + 1) < 8;

        UpLeft = (horseLocation(2) + 2 )< 8 & (horseLocation(1) - 1) > 1;
        UpRight = (horseLocation(2) + 2 )< 8 & (horseLocation(1) + 1) < 8;
       
        
        while 1
            x = randi(8);
            if x == 1 & LeftUp == 1
                horseLocation(1) = horseLocation(1) - 2;
                horseLocation(2) = horseLocation(2) + 1;
                break;
             elseif x == 2 & LeftDown == 1
                horseLocation(1) = horseLocation(1) - 2;
                horseLocation(2) = horseLocation(2) - 1;
                break;
            elseif x == 3 & RightUp == 1
                horseLocation(1) = horseLocation(1) + 2;
                horseLocation(2) = horseLocation(2) + 1;
                break;
            elseif x == 4 & RightDown == 1
                horseLocation(1) = horseLocation(1) + 2;
                horseLocation(2) = horseLocation(2) - 1;
                break;
            elseif x == 5 & DownLeft == 1
                horseLocation(1) = horseLocation(1) - 1;
                horseLocation(2) = horseLocation(2) - 2;
                break;
            elseif x == 6 & DownRight == 1
                horseLocation(1) = horseLocation(1) + 1;
                horseLocation(2) = horseLocation(2) - 2;
                break;
            elseif x == 7 & UpLeft == 1
                horseLocation(1) = horseLocation(1) - 1;
                horseLocation(2) = horseLocation(2) + 2;
                break;
            elseif x == 8 & UpRight == 1
                horseLocation(1) = horseLocation(1) + 1;
                horseLocation(2) = horseLocation(2) + 2;
                break;
            end
        end
        fprintf("Move %d ===> (%d,%d)\n",i,horseLocation(1),horseLocation(2));
    end

end


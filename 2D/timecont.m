function [dt,prob]=timecont(D,delta,coord)
    for i=1:2
        if abs(coord(i))<delta/2
            kf(i)=D/delta^2;
            kb(i)=D/delta^2;
        else
            kf(i)=(D*coord(i)/delta)/(exp(coord(i)*delta)-1);
            kb(i)=-(D*coord(i)/delta)/(exp(-coord(i)*delta)-1);          
        end;
    end;
    suma(1)=kf(1)+kf(2)+kb(1)+kb(2);
    dt=exprnd(suma^-1);
    prob(1)=kf(1)/suma;
    prob(2)=kb(1)/suma;
    prob(3)=kf(2)/suma;
    prob(4)=kb(2)/suma;
end



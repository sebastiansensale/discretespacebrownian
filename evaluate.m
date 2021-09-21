function [nostop,salida]=evaluate(timedomain,limit)
    i=1;nostop=1;salida=0;
    while and(i<size(timedomain,1),nostop)
        nostop=pdist([timedomain(i,2),timedomain(i,4);timedomain(i,3),timedomain(i,5)],'euclidean')>limit;
        i=i+1;
    end;
    if not(nostop)
        salida=timedomain(i-1);
    end;
end



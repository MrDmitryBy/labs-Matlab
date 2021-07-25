% =============================
% Задание 4 для LAB10Kiryla
% =============================
function brokenLines(n)
    axis([-1 1 -1 1]);
    hold on
    A = [];
    i=1;
    while i<=n
        [x_i,y_i] = ginput(1);
        plot(x_i,y_i,'b.','MarkerSize',10)
        A(i,:) = [x_i,y_i];
        i=i+1;
    end
    plot(A(:,1),A(:,2),'r-')
    text((A(1,1)+A(2,1))/2,.05+(A(1,2)+A(2,2))/2,'A')
    B = [];
    i=1;
    while i<=n
        [x_j, y_j] = ginput(1);
        plot(x_j,y_j,'k.','MarkerSize',10)
        B(i,:) = [x_j,y_j];
        i=i+1;
    end
    plot(B(:,1),B(:,2),'g-')
    text((B(1,1)+B(2,1))/2,.05+(B(1,2)+B(2,2))/2,'B')
    t = 0:0.01:1;
    for i = 1:n
        coords(:,1,i) = (1-t')*A(i,1) + t'*B(i,1); % Xi
        coords(:,2,i) = (1-t')*A(i,2) + t'*B(i,2); % Yi
    end

    for frame=1:size(coords,1)
        for i = 1:n
            h(i) = plot(coords(frame,1,i),coords(frame,2,i),'c.','MarkerSize',15);
        end    
        coordX = reshape(coords(frame,1,:),[],n);
        coordY = reshape(coords(frame,2,:),[],n);
        movingCurve = line(coordX,coordY,'Color','Yellow');
        axis([-1 1 -1 1])
        drawnow
        pause(.01)
        delete(movingCurve)
        if(n~=1)||(n~=size(t,2))
            set(h,'Visible','Off')
            clear h
        end
    end
end


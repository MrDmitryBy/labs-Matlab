% =============================
% Задание 4 для LAB10Kiryla
% =============================
function Interpolation(n)
    switch n
        case 2, clf
            axis([-1 1 -1 1])
            title('Enter 2 POINTS')
            hold on
            [x_i, y_i] = ginput(1);
            plot(x_i,y_i,'y.','MarkerSize', 10)    
            x1 = x_i;
            y1 = y_i;
            plot(x1, y1, 'r-');
            text(x1,y1+.1,'A','Color','b','FontWeight','bold');
            [x_j, y_j] = ginput(1);
            plot(x_j,y_j,'k.','MarkerSize', 10)  
            x2 = x_j;
            y2 = y_j;
            text(x2,y2+.1,'B','Color','b','FontWeight','bold');
            hold on;
            plot([x1 x2], [y1 y2],'Color','green')
            t=0:0.01:1;
            coords = (1-t)*x1+t*x2;
            coords(2,:)=(1-t)*y1+t*y2;
            h = animatedline;
            axis([-1 1 -1 1])
            for n=1:size(coords,2)
                k=plot(coords(1,n),coords(2,n),'c.','MarkerSize',20);
                addpoints(h,coords(1,n),coords(2,n));
                axis([-1 1 -1 1])
                drawnow
                pause(.01)
                if(n~=1)||(n~=size(coords,2))
                    set(k,'Visible','Off')
                    clear k
                end
            end
        case 3,clf
            axis([-1 1 -1 1])
            title('Enter 3 POINTS')
            hold on
            [x_i, y_i] = ginput(1);
            plot(x_i,y_i,'y.','MarkerSize', 10)    
            x1 = x_i;
            y1 = y_i;
            plot(x1, y1, 'r-');
            text(x1,y1+.1,'A','Color','b','FontWeight','bold');
            [x_j, y_j] = ginput(1);
            plot(x_j,y_j,'k.','MarkerSize', 10)  
            x2 = x_j;
            y2 = y_j;
            text(x2,y2+.1,'B','Color','b','FontWeight','bold');
            hold on;
            [x_k, y_k] = ginput(1);
            plot(x_k,y_k,'r.','MarkerSize', 10)  
            x3 = x_k;
            y3 = y_k;
            text(x3,y3+.1,'C','Color','b','FontWeight','bold');
            hold on;
            plot([x1 x2 x3], [y1 y2 y3],'Color','green')
            t=0:0.01:1;
            coords = ((1-t).^2).*x1+2*(1-t).*t.*x2+x3.*(t.^2); % Xi
            coords(2,:) = ((1-t).^2).*y1+2*(1-t).*t.*y2+y3.*(t.^2); % Yi
            h = animatedline;
            axis([-1 1 -1 1])
            for n=1:size(coords,2)
                k=plot(coords(1,n),coords(2,n),'c.','MarkerSize',20);
                addpoints(h,coords(1,n),coords(2,n));
                axis([-1 1 -1 1])
                drawnow
                pause(.01)
                if(n~=1)||(n~=size(coords,2))
                    set(k,'Visible','Off')
                    clear k
                end
            end
        case 4,clf
            axis([-1 1 -1 1])
            title('Enter 4 POINTS')
            hold on
            [x_i, y_i] = ginput(1);
            plot(x_i,y_i,'y.','MarkerSize', 10)    
            x1 = x_i;
            y1 = y_i;
            plot(x1, y1, 'r-');
            text(x1,y1+.1,'A','Color','b','FontWeight','bold');
            [x_j, y_j] = ginput(1);
            plot(x_j,y_j,'k.','MarkerSize', 10)  
            x2 = x_j;
            y2 = y_j;
            text(x2,y2+.1,'B','Color','b','FontWeight','bold'); 
            hold on;
            [x_k, y_k] = ginput(1);
            plot(x_k,y_k,'r.','MarkerSize', 10)  
            x3 = x_k;
            y3 = y_k;
            text(x3,y3+.1,'C','Color','b','FontWeight','bold');
            hold on;
            [x_l, y_l] = ginput(1);
            plot(x_l,y_l,'m.','MarkerSize', 10)  
            x4 = x_l;
            y4 = y_l;
            text(x4,y4+.1,'D','Color','b','FontWeight','bold');
            hold on;
            plot([x1 x2 x3 x4], [y1 y2 y3 y4],'Color','green')
            t=0:0.01:1;
            coords = ((1-t).^3).*x1+3*t.*((1-t).^2).*x2+3*(1-t).*(t.^2).*x3+x4.*(t.^3); % Xi
            coords(2,:) = ((1-t).^3).*y1+3*t.*((1-t).^2).*y2+3*(1-t).*(t.^2).*y3+y4.*(t.^3); % Yi
            h = animatedline;
            axis([-1 1 -1 1])
            for n=1:size(coords,2)
                k=plot(coords(1,n),coords(2,n),'c.','MarkerSize',20);
                addpoints(h,coords(1,n),coords(2,n));
                axis([-1 1 -1 1])
                drawnow
                pause(.01)
                if(n~=1)||(n~=size(coords,2))
                    set(k,'Visible','Off')
                    clear k
                end
            end
        otherwise
            disp('You input uncorrect number of points. Please, try again!');
    end
end


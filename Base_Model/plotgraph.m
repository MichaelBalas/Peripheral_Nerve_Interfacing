function [] = plotgraph(x,data,ebs,titlestr,xstr,ystr,tfont,xyfont,markertype,mode,colour);

    label1 = strcat('b-',markertype);
    label2 = strcat('r--',markertype);
    label3 = strcat('g:',markertype);
    if mode == 1;
        hold on;
        set(gca, 'XDir', 'reverse')
        errorbar(x,data(1,:),ebs(:,1),label1,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(2,:),ebs(:,2),label2,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(3,:),ebs(:,3),label3,'LineWidth',4,'MarkerSize',20);
        title(titlestr, 'FontSize', tfont);
        xlabel(xstr, 'FontSize', xyfont);
        ylabel(ystr, 'FontSize', xyfont);
    elseif mode == 2;
        hold on;
        set(gca, 'XDir', 'reverse')
        errorbar(x,data(1,:),ebs(:,1),label1,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(2,:),ebs(:,2),label2,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(3,:),ebs(:,3),label3,'LineWidth',4,'MarkerSize',20);
    elseif mode == 3;
        hold on;
        label1 = strcat(colour,'o');
        label2 = strcat(colour,'s');
        label3 = strcat(colour,'x');
        label4 = strcat(colour,'d');
        label5 = strcat(colour,'^');
        errorbar(x,data(1,:),ebs(:,1),label1,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(2,:),ebs(:,2),label2,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(3,:),ebs(:,3),label3,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(4,:),ebs(:,4),label4,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(5,:),ebs(:,5),label5,'LineWidth',4,'MarkerSize',20);
        title(titlestr, 'FontSize', tfont);
        xlabel(xstr, 'FontSize', xyfont);
        ylabel(ystr, 'FontSize', xyfont);
    else
        hold on;
        label1 = strcat(colour,'o');
        label2 = strcat(colour,'s');
        label3 = strcat(colour,'x');
        label4 = strcat(colour,'d');
        label5 = strcat(colour,'^');
        errorbar(x,data(1,:),ebs(:,1),label1,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(2,:),ebs(:,2),label2,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(3,:),ebs(:,3),label3,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(4,:),ebs(:,4),label4,'LineWidth',4,'MarkerSize',20);
        errorbar(x,data(5,:),ebs(:,5),label5,'LineWidth',4,'MarkerSize',20);

    end
end
    
%%

load('vars_40contacts','a','b','c');

minv = min([min(min(min(min(a)))) min(min(min(min(b)))) min(min(min(min(c))))]);
maxv = max([max(max(max(max(a)))) max(max(max(max(b)))) max(max(max(max(c))))]);

i = 1;
mins(i) = minv;
maxs(i) = maxv;
i = i+1;

clear minv maxv a b c

load('vars_32contacts','a','b','c');

minv = min([min(min(min(min(a)))) min(min(min(min(b)))) min(min(min(min(c))))]);
maxv = max([max(max(max(max(a)))) max(max(max(max(b)))) max(max(max(max(c))))]);

mins(i) = minv;
maxs(i) = maxv;
i = i+1;

clear minv maxv

load('vars_24contacts','a','b','c');

minv = min([min(min(min(min(a)))) min(min(min(min(b)))) min(min(min(min(c))))]);
maxv = max([max(max(max(max(a)))) max(max(max(max(b)))) max(max(max(max(c))))]);

mins(i) = minv;
maxs(i) = maxv;
i = i+1;

clear minv maxv

load('vars_16contacts','a','b','c');

minv = min([min(min(min(min(a)))) min(min(min(min(b)))) min(min(min(min(c))))]);
maxv = max([max(max(max(max(a)))) max(max(max(max(b)))) max(max(max(max(c))))]);

mins(i) = minv;
maxs(i) = maxv;
i = i+1;

clear minv maxv

load('vars_8contacts','a','b','c');

minv = min([min(min(min(min(a)))) min(min(min(min(b)))) min(min(min(min(c))))]);
maxv = max([max(max(max(max(a)))) max(max(max(max(b)))) max(max(max(max(c))))]);

mins(i) = minv;
maxs(i) = maxv;
i = i+1;

clear minv maxv

save('mn_mx_global');

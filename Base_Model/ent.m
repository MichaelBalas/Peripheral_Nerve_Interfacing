function H = ent(p)

    H = sum(-(p(p>0).*(log2(p(p>0)))));
    
end
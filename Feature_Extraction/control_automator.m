ref_type = ['Tri'; 'Com'; 'Psd'];
for i = 1:3 % Number of referencing systems (tri, com, psd)
    for noise = 2:5 % Number of noise levels excluding 0
        % 8 contacts
        extract_automator(ref_type(i,:), 'vars_8contacts', 8, noise);
        % 16 contacts
        extract_automator(ref_type(i,:), 'vars_16contacts', 16, noise);
        % 24 contacts
        extract_automator(ref_type(i,:), 'vars_24contacts', 24, noise);
        % 32 contacts
        extract_automator(ref_type(i,:), 'vars_32contacts', 32, noise);
        % 40 contacts
        extract_automator(ref_type(i,:), 'vars_40contacts', 40, noise);
    end
end
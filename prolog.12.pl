% Disease facts
disease(fever, flu).
disease(cough, cold).
disease(headache, migraine).
disease(stomach_pain, gastritis).
disease(chest_pain, heart_problem).

% Rule
diagnose(Symptom) :-
    disease(Symptom, Disease),
    write('Possible Disease: '),
    write(Disease).

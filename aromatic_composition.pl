print('Enter the amino acid sequence:')
aa = input()
aromatic_count = aa.count("F") + aa.count("W") + aa.count("Y")
percentage_composition = (aromatic_count / len(aa)) * 100
print("The percentage composition of aromatic amino acids in the given sequence is : {:.3f}".format(percentage_composition))
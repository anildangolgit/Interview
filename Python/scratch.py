d={"Anil":10,"Sunil":20}
for w in sorted(d.items(), key=lambda x: x[1], reverse=True):
    print(w,d[w])

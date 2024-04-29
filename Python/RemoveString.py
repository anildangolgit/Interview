def RemoveString(inputstring,stringtoremove):
    return "".join(inputstring.split(stringtoremove))

    
print(RemoveString("This is the test","Th"))
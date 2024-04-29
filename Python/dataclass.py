from dataclasses import dataclass

@dataclass
class Teacher:
    name: str
    age: int
    def print_teacher_info(self)->str:
        return f"{self.name},{self.age}"
    def __init__(self):
        self.name="Anil Dangol"
        self.age=42


t1=Teacher()
print(t1)
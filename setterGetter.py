class School:
    def _init_(self):
        self.name = ''

    def setName(self, name):
        self.name = name

    def getName(self):
        return self.name


Harvard = School()
Harvard.setName("Harvard")
print(Harvard.getName())

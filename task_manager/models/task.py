class Task:
    def __init__(self, description, assingnee, duration, completed = False, id = None):
        self.description = description
        self.assingnee = assingnee
        self.duration = duration
        self.completed = completed
        self.id = id

        def mark_complete(self):
            self.completed = True
from abc import ABC, abstractmethod

class DataSource(ABC):
    @abstractmethod
    def fetch_data(self):
        pass

class CSVSource(DataSource):
    def fetch_data(self):
        return "Data fetched from CSV file"

class DatabaseSource(DataSource):
    def fetch_data(self):
        return "Data fetched from Database"

def process_data(source):
    print(source.fetch_data())

csv = CSVSource()
db = DatabaseSource()

process_data(csv)
process_data(db)

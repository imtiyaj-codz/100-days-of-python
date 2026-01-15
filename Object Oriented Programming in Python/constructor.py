class SalesRecord:
    def __init__(self, date, revenue, region):
        self.date = date
        self.revenue = revenue
        self.region = region

    @classmethod
    def from_csv_row(cls, row):
        date, revenue, region = row.split(",")
        return cls(date.strip(), float(revenue), region.strip())

    @classmethod
    def from_api(cls, payload):
        return cls(
            payload["date"],
            payload["metrics"]["revenue"],
            payload["geo"]["region"]
        )

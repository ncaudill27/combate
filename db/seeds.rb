Team.destroy_all
Tournament.destroy_all
User.destroy_all

Team.create(affiliation:"Gracie Barra", location: "Miami, FL")
Team.create(affiliation:"Alliance", location: "Atlanta, GA")
Team.create(affiliation:"Gracie Academy", location: "Savannah, GA")
Team.create(affiliation:"Checkmat", location: "San Diego, CA")

Tournament.create(organization: "Newbreed", date: "20200618 09:00:00 AM", registration_open: "20200318 00:00:00 AM", registration_close: "20200518 00:00:00 AM")
Tournament.create(organization: "NAGA", date: "20200618 09:00:00 AM", registration_open: "20200318 00:00:00 AM", registration_close: "20200518 00:00:00 AM")
Tournament.create(organization: "IBJJF", date: "20200618 09:00:00 AM", registration_open: "20200318 00:00:00 AM", registration_close: "20200518 00:00:00 AM")


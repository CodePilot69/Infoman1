# ERD Assignment

**Name:** Ira R. Palabay  
**Student ID:** 2510994  
**Section:** BSIT-II

---

# Task 1 — Candidate Entities

I looked at the nouns in the case study and picked the ones that represent things the shop would actually need to keep records of.

| Entity | Justification |
|---|---|
| **Customer** | A customer is an entity because the shop has many customers and each customer can bring one or more cars to the shop. |
| **Car** | A car is an entity because the shop needs to keep information about each car, such as its model, plate number, and color. |
| **Mechanic** | A mechanic is an entity because the shop has several mechanics and needs to keep information about them, such as their name and specialty. |
| **Service Appointment** | A service appointment is an entity because it represents a specific visit when a car is being worked on by a mechanic. |

## Nouns That Are Attributes

Some nouns in the case study are not separate entities because they only describe another entity.

- **Model** — describes a Car
- **Plate Number** — describes a Car
- **Color** — describes a Car
- **Name** — describes a Mechanic
- **Specialty** — describes a Mechanic
- **Date** — describes a Service Appointment
- **Repair Note** — describes a Service Appointment

---

# Task 2 — Attributes per Entity

## Customer

**Primary Key:** `customer_id`

| Attribute | Domain | Description |
|---|---|---|
| **customer_id** | Integer | A unique number for each customer. |
| customer_name | Variable-length text | The name of the customer. |

I used `customer_id` as the primary key because every customer needs a unique identifier.

---

## Car

**Primary Key:** `plate_number`

| Attribute | Domain | Description |
|---|---|---|
| **plate_number** | Alphanumeric text | The unique plate number of the car. |
| model | Variable-length text | The model of the car. |
| color | Variable-length text | The color of the car. |
| customer_id | Integer | The ID of the customer who owns the car. |

I used `plate_number` as the primary key because it can be used to identify each car.

---

## Mechanic

**Primary Key:** `mechanic_id`

| Attribute | Domain | Description |
|---|---|---|
| **mechanic_id** | Integer | A unique number for each mechanic. |
| name | Variable-length text | The name of the mechanic. |
| specialty | Variable-length text | The mechanic's specialty, such as engine, brakes, or electrical. |

I used `mechanic_id` as the primary key so each mechanic can be identified separately.

---

## Service Appointment

**Primary Key:** `appointment_id`

| Attribute | Domain | Description |
|---|---|---|
| **appointment_id** | Integer | A unique number for each appointment. |
| appointment_date | Date | The date of the service appointment. |
| repair_note | Variable-length text | A short note about the repair. |
| plate_number | Alphanumeric text | The plate number of the car being serviced. |
| mechanic_id | Integer | The ID of the mechanic working on the car. |

I used `appointment_id` as the primary key because every service appointment is a separate record.

## Primary Key Summary

| Entity | Primary Key |
|---|---|
| Customer | **customer_id** |
| Car | **plate_number** |
| Mechanic | **mechanic_id** |
| Service Appointment | **appointment_id** |

---

# Task 3 — Relationships

I checked each relationship from both sides to make sure the cardinalities match the case study.

| Relationship | Between | Cardinality | Explanation |
|---|---|---|---|
| **owns** | Customer and Car | 1:N | One customer can have one or more cars, but each car belongs to one customer. |
| **has** | Car and Service Appointment | 1:N | One car can have many service appointments over time, but each appointment is for one car. |
| **performs** | Mechanic and Service Appointment | 1:N | One mechanic can work on many appointments, but each appointment is handled by one mechanic. |

## Mechanic and Car Relationship

The case study also tells us that one mechanic can work on many different cars, while one car can be worked on by different mechanics on different visits.

This means the relationship between **Mechanic and Car** is **many-to-many (M:N)**.

The Service Appointment is used to connect them. This gives us:

- One Car can have many Service Appointments.
- One Mechanic can have many Service Appointments.
- Each Service Appointment is connected to one Car and one Mechanic.

---

# Task 4 — Conceptual ERD

I created the ERD using the Entity-Relationship shapes in draw.io. The diagram shows the four entities, their attributes, primary keys, relationships, and cardinalities.


## Entities Used

The ERD contains:

- Customer
- Car
- Mechanic
- Service Appointment

## Relationships Used

The ERD shows:

- **Customer 1:N Car**
- **Car 1:N Service Appointment**
- **Mechanic 1:N Service Appointment**

The many-to-many relationship between Mechanic and Car is handled through Service Appointment.

## Primary Keys Used

- **Customer:** `customer_id`
- **Car:** `plate_number`
- **Mechanic:** `mechanic_id`
- **Service Appointment:** `appointment_id`
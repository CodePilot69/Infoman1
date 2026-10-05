# Task 1 — Classify Attributes and Identify Weak Entities

## Attribute Classification

- **Composite Attributes:**
  - `owner_name` — Can be divided into `first_name` and `last_name` to allow independent sorting and searching.
  - `vet_name` — Can be divided into `first_name` and `last_name` for structural consistency.
- **Multivalued Attributes:**
  - `vaccination_history` — A single pet can have zero, one, or multiple vaccination records over time. In a relational design, this is resolved into a separate entity.
- **Derived Attributes:**
  - `age` — Conceptually derived by calculating the difference between the pet's date of birth and the current date.

---

## Weak Entity Identification

**Vaccination Record** is identified as a **Weak Entity**.

### Justification:
1. **Existence Dependency:** A vaccination record cannot exist independently of a `Pet`. If a pet is deleted from the system, its corresponding vaccination records become orphaned and invalid.
2. **Lack of Primary Key (Partial Key):** The scenario explicitly states that a vaccination record *"cannot be uniquely identified or looked up on its own."* Attributes such as `vaccine_name` and `vaccination_date` are not globally unique across the system (e.g., multiple pets can receive a "Rabies" vaccine on the same day).
3. **Discriminator / Partial Key:** The attribute `vaccine_name` (or a combination of `vaccine_name` and `vaccination_date`) functions as a partial key (discriminator). It requires the primary key of the parent entity (`pet_id`) to form a complete identifier.
4. **Identifying Relationship:** The relationship between **Pet** (Strong Entity) and **Vaccination Record** (Weak Entity) is an identifying relationship.

---

# Task 2 — Specify Cardinality & Participation

| Relationship | Entity A | Symbol A (Participation + Cardinality) | Entity B | Symbol B (Participation + Cardinality) | Scenario Justification |
|---|---|---|---|---|---|
| **Owner – Pet** | Owner | `||` (Mandatory One) | Pet | `O|` (Optional Many) | *"A pet owner ... is not required to have any pets on file at a given time"* (Pet is Optional Many: `O|`). *"every pet must belong to exactly one owner"* (Owner is Mandatory One: `||`). |
| **Pet – Appointment** | Pet | `||` (Mandatory One) | Appointment | `O|` (Optional Many) | A pet can have zero or many appointments over time (`O|`). An appointment *"cannot exist without [a pet]"* and specifies *"exactly one pet"* (`||`). |
| **Veterinarian – Appointment** | Veterinarian | `||` (Mandatory One) | Appointment | `O|` (Optional Many) | A veterinarian *"can conduct multiple appointments over time or none at all"* (`O|`). An appointment *"must specify exactly one veterinarian"* (`||`). |
| **Pet – Vaccination Record** | Pet | `||` (Mandatory One) | Vaccination Record | `O|` (Optional Many) | A pet *"may have zero, one, or several vaccination records"* (`O|`). Each record *"only makes sense in relation to the specific pet it belongs to"* (`||`). |

> **Symbol Legend (Crow's Foot Notation):**
> - `||` = **Mandatory One** (Inner: Mandatory `|`, Outer: One `|`)
> - `O|` = **Optional Many** (Inner: Optional `O`, Outer: Many `|`)
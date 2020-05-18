#!/bin/bash

# echo "Build variant: " "$1"

# TARGET="$1"

case "$TARGET" in 
    #case 1 
    "Alumni-ID-Stage") echo "AlumniID-Stage" ;; 
    #case 2 
    "Alumni-ID-Dev") echo "AlumniID-Dev" ;; 
      
    #case 3 
    "Union-ID-Stage") echo "UnionID-Stage" ;; 
	#case 4
    "Union-ID-Dev") echo "UnionID-Dev" ;; 

#case 4
    "Travel-ID-Stage") echo "TravelID-Stage" ;; 
#case 4
    "Travel-ID-Dev") echo "TravelID-Dev" ;;

#case 4
    "Professional-ID-Stage") echo "ProfessionalID-Stage" ;; 
#case 4
    "Professional-ID-Dev") echo "ProfessionalID-Dev" ;; 

#case 4
    "Employee-ID-Stage") echo "EmployeeID-Stage" ;; 
#case 4
    "Employee-ID-Dev") echo "EmployeeID-Dev" ;; 

#case 4
    "Patient-ID-Stage") echo "PatientID-Stage" ;; 
#case 4
    "Patient-ID-Dev") echo "PatientID-Dev" ;; 

#case 4
    "Parent-ID-Stage") echo "ParentID-Stage" ;; 
#case 4
    "Parent-ID-Dev") echo "ParentID-Dev" ;; 

#case 4
    "Medicinal-ID-Stage") echo "MedicinalID-Stage" ;; 
#case 4
    "Medicinal-ID-Dev") echo "MedicinalID-Dev" ;; 

#case 4
    "Student-ID-Stage") echo "StudentID-Stage" ;; 
#case 4
    "Student-ID-Dev") echo "StudentID-Dev" ;; 

#case 4
    "Community-ID-Stage") echo "CommunityID-Stage" ;; 
#case 4
    "Community-ID-Dev") echo "CommunityID-Dev" ;; 

#case 4
    "Resident-ID-Stage") echo "ResidentID-Stage" ;; 
#case 4
    "Resident-ID-Dev") echo "ResidentID-Dev" ;; 

#case 4
    "Volunteer-ID-Stage") echo "VolunteerID-Stage" ;; 
#case 4
    "Volunteer-ID-Dev") echo "VolunteerID-Dev" ;; 

#case 4
    "Voter-ID-Stage") echo "VoterID-Stage" ;; 
#case 4
    "Voter-ID-Dev") echo "VoterID-Dev" ;; 

#case 4
    "Member-ID-Stage") echo "MemberID-Stage" ;; 
#case 4
    "Member-ID-Dev") echo "MemberID-Dev" ;; 

    *) echo "No env";;

esac 
#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon -t -c"

# Display list of all services in the form of service_id) name
MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo "Our services are:"
  SERVICES=$($PSQL "SELECT * FROM services;")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # Get user input for service
  read SERVICE_ID_SELECTED

  # If the user picks a service that does not exist, main menu again
  SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_ID_SELECTED ]]
  then
    MAIN_MENU "That service does not exist."
  else
    GET_CUSTOMER_DETAILS
  fi
}

GET_CUSTOMER_DETAILS() {
  echo -e "\nWhat is your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_ID ]]
  then
    echo -e "\nWhat is your name?"
    read CUSTOMER_NAME

    INSERT_USER_DETAILS=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")

  echo -e "\nAt what time do you want the service?"
  read SERVICE_TIME

  INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  SERVICE_NAME_TIME_CUSTOMER=$($PSQL "SELECT s.name, a.time, c.name FROM customers AS c 
                              INNER JOIN appointments AS a USING(customer_id) 
                              INNER JOIN services AS s USING(service_id) 
                              WHERE customer_id = $CUSTOMER_ID AND 
                                service_id = $SERVICE_ID_SELECTED AND 
                                time = '$SERVICE_TIME'
                              ORDER BY a.appointment_id DESC LIMIT 1")
                              
  FORMATTED_DATA=$(echo $SERVICE_NAME_TIME_CUSTOMER | sed -E 's/ \|/ at/' | sed -E 's/ \|/,/')
  echo "I have put you down for a $FORMATTED_DATA."
}

MAIN_MENU

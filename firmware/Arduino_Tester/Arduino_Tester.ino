const int pin_male_vbus   = 2;
const int pin_male_dm     = 4;
const int pin_male_dp     = 5;
const int pin_male_gnd    = 3;

const int pin_female_vbus = 9;
const int pin_female_dm   = 8;
const int pin_female_dp   = 7;
const int pin_female_gnd  = 6;

const int pin_dp_res      = 10;
const int pin_dm_res      = 11;

const int pin_led_green   = A0;
const int pin_led_red     = A1;
const int pin_sw          = A3;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Welcome to USB Power Armor Type-A Tester!");
  Serial.println("Contact Jason Cerundolo at jason@reclaimerlabs.com with any questions.");

  pinMode(pin_led_green, OUTPUT);
  pinMode(pin_led_red, OUTPUT);
  digitalWrite(pin_led_green, LOW);
  digitalWrite(pin_led_red, LOW);
  delay(1000);
  pinMode(pin_led_green, INPUT);
  pinMode(pin_led_red, INPUT);
  digitalWrite(pin_led_green, HIGH);
  digitalWrite(pin_led_red, HIGH);

  pinMode(pin_sw, INPUT);
  digitalWrite(pin_sw, HIGH);
}

void loop() {
  // wait for user to push switch
  while (digitalRead(pin_sw) == HIGH);

  Serial.println();
  Serial.println();
  
  pinMode(pin_led_green, INPUT);
  pinMode(pin_led_red, INPUT);
  pinMode(pin_male_vbus, INPUT);
  pinMode(pin_male_dm, INPUT);
  pinMode(pin_male_dp, INPUT);
  pinMode(pin_male_gnd, INPUT);
  digitalWrite(pin_male_vbus, HIGH);
  digitalWrite(pin_male_dm, HIGH);
  digitalWrite(pin_male_dp, HIGH);
  digitalWrite(pin_male_gnd, HIGH);
  digitalWrite(pin_led_green, HIGH);
  digitalWrite(pin_led_red, HIGH);

  pinMode(pin_dp_res, INPUT);
  pinMode(pin_dm_res, INPUT);

  digitalWrite(pin_female_vbus, LOW);
  digitalWrite(pin_female_dm, HIGH);
  digitalWrite(pin_female_dp, HIGH);
  digitalWrite(pin_female_gnd, HIGH);
  pinMode(pin_female_vbus, OUTPUT);
  pinMode(pin_female_dm, OUTPUT);
  pinMode(pin_female_dp, OUTPUT);
  pinMode(pin_female_gnd, OUTPUT);

  // Check Vbus connectivity and no other pins are shorted to it
  if (digitalRead(pin_male_vbus) == LOW) {
    Serial.println("Vbus connected!");
  } else {
    Serial.println("FAIL: Vbus not connected.");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_dm) == LOW) {
    Serial.println("FAIL: Vbus shorted to DM");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_dp) == LOW) {
    Serial.println("FAIL: Vbus shorted to DP");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_gnd) == LOW) {
    Serial.println("FAIL: Vbus shorted to GND");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  Serial.println("Vbus isolated!");

  // Check DM
  digitalWrite(pin_female_vbus, HIGH);
  digitalWrite(pin_female_dm, LOW);
  if (digitalRead(pin_male_dm) == LOW) {
    Serial.println("DM connected!");
  } else {
    Serial.println("FAIL: DM not connected.");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_dp) == LOW) {
    Serial.println("FAIL: DM shorted to DP");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_gnd) == LOW) {
    Serial.println("FAIL: DM shorted to GND");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  Serial.println("DM isolated!");

  // Check DP
  digitalWrite(pin_female_dm, HIGH);
  digitalWrite(pin_female_dp, LOW);
  if (digitalRead(pin_male_dp) == LOW) {
    Serial.println("DP connected!");
  } else {
    Serial.println("FAIL: DP not connected.");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  if (digitalRead(pin_male_gnd) == LOW) {
    Serial.println("FAIL: DP shorted to GND");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  Serial.println("DP isolated!");

  // Check GND
  digitalWrite(pin_female_dp, HIGH);
  digitalWrite(pin_female_gnd, LOW);
  if (digitalRead(pin_male_gnd) == LOW) {
    Serial.println("GND connected!");
  } else {
    Serial.println("FAIL: GND not connected.");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  digitalWrite(pin_female_gnd, HIGH);

  // Check DM caps
  // First, discharge caps. Then, energize through resistor and measure line immediately and later
  digitalWrite(pin_female_dm, LOW);
  digitalWrite(pin_male_dm, LOW);
  digitalWrite(pin_dm_res, LOW);
  pinMode(pin_dm_res, OUTPUT);
  delay(100);
  pinMode(pin_female_dm, INPUT);
  digitalWrite(pin_dm_res, HIGH);
  delay(1);
  if (digitalRead(pin_male_dm) == LOW) {
    Serial.println("DM cap installed!");
  } else {
    Serial.println("FAIL: DM cap not connected.");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  delay(100);
  if (digitalRead(pin_male_dm) == HIGH) {
    Serial.println("DM tester resistor installed!");
  } else {
    Serial.println("FAIL: DM res not installed");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }

  // Check DP caps
  // First, discharge caps. Then, energize through resistor and measure line immediately and later
  digitalWrite(pin_female_dp, LOW);
  digitalWrite(pin_male_dp, LOW);
  digitalWrite(pin_dp_res, LOW);
  pinMode(pin_dp_res, OUTPUT);
  delay(100);
  pinMode(pin_female_dp, INPUT);
  digitalWrite(pin_dp_res, HIGH);
  delay(1);
  if (digitalRead(pin_male_dp) == LOW) {
    Serial.println("DP cap installed!");
  } else {
    Serial.println("FAIL: DP cap not installed");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }
  delay(100);
  if (digitalRead(pin_male_dp) == HIGH) {
    Serial.println("DP tester resistor installed!");
  } else {
    Serial.println("FAIL: DM res not installed");
    pinMode(pin_led_red, OUTPUT);
    digitalWrite(pin_led_red, LOW);
  }

  if (digitalRead(pin_led_red) != LOW) {
    pinMode(pin_led_green, OUTPUT);
    digitalWrite(pin_led_green, LOW);
  }

  delay(1000);
}

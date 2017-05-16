-- -----------------------------------------------------
-- Table WIN_DEVICE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS WIN_DEVICE (
  DEVICE_ID VARCHAR(45) NOT NULL,
  CHANNEL_URI VARCHAR(100) NULL DEFAULT NULL,
  DEVICE_INFO TEXT NULL DEFAULT NULL,
  IMEI VARCHAR(45) NULL DEFAULT NULL,
  IMSI VARCHAR(45) NULL DEFAULT NULL,
  OS_VERSION VARCHAR(45) NULL DEFAULT NULL,
  DEVICE_MODEL VARCHAR(45) NULL DEFAULT NULL,
  VENDOR VARCHAR(45) NULL DEFAULT NULL,
  LATITUDE VARCHAR(45) NULL DEFAULT NULL,
  LONGITUDE VARCHAR(45) NULL DEFAULT NULL,
  SERIAL VARCHAR(45) NULL DEFAULT NULL,
  MAC_ADDRESS VARCHAR(45) NULL DEFAULT NULL,
  DEVICE_NAME VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (DEVICE_ID)
 );

-- -----------------------------------------------------
-- Table WIN_FEATURE
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS WIN_FEATURE (
  ID SERIAL NOT NULL,
  CODE VARCHAR(45) NULL,
  NAME VARCHAR(100) NULL,
  DESCRIPTION VARCHAR(200) NULL,
  PRIMARY KEY (ID)
 );

-- -----------------------------------------------------
-- Table `WINDOWS_ENROLLMENT_TOKEN`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS WINDOWS_ENROLLMENT_TOKEN (
  ID SERIAL NOT NULL,
  TENANT_DOMAIN VARCHAR(45) NOT NULL,
  ENROLLMENT_TOKEN VARCHAR(100) NULL,
  DEVICE_ID VARCHAR(100) NULL,
  USERNAME VARCHAR(45) NULL,
  OWNERSHIP VARCHAR(45) NULL,
  PRIMARY KEY (ID)
);

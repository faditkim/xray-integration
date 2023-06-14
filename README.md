# sapgui-test-automation
Test automation for SAP GUI App and SAP web apps using Robot Framework

## How to prepare the Python libraries required

Prerequisite: Python and NodeJS are installed, Python is installed for user (no admin rights are to be requested for installing libraries).

**To install python libraries run the following command in project root:**
```
pip3 install -r requirements.txt
```
**For Fashion AP in Procure domain, install python libraries with following command:**
```
pip3 install -r procure_requirements.txt
```

**To configure browser library after install run:**
```
rfbrowser init
```

**To set credential before run tests:**
Only localy stored credentials are currently supported.
```
sapgui-test-automation -- keepass_keyfile -- password_db_local.kdbx
                                           - personal.key 
```
The keys are looked up by names of database entries, to select the correct one for test run use variable parameter as seen in running tests.
* about credentials problem, please contact @Schwabe-Markovic, Bruno

## Running tests

**To run tests execute from folder ./scenarios with command:**
```
robot --timestampoutputs --loglevel WARN --removekeywords FOR --variable test_account:Pxxxxxx_SH1 -d ../results/ -i [optional: tag] .\[test_suite_filename]
```

**To run tests via "Git Bash" and Shell Script [should change the tag & files]:**
```
> sh start.sh
```
or
```
> ./start.sh
```

**Convention to write test fixtures:**
```
> Fixtures are defined in resources\fixtures
> It should be define in capital letters 
> It should be placed under WEB(Fiori) or SAP subsection in fixture file.
> The comman convetion to define fixture for fiori and SAP are following
  > for css: CSS_SOME_SELECTOR
  > for id : ID_ID_NAME
  > for sap gui:  SAP_SELECTOR
  > for xpath XPATH_PATH and so on.. 
```


0.10.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.9.0...v0.10.0) June 21th, 2016
------------------------------
* New check keyboard locked for all emulators
* Now write a value in a protected field return specific error message and avoid to wait the text on the map

0.9.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.8.0...v0.9.0) June 20th, 2016
------------------------------
* PComm emulator: it attempts to start the connection if the terminal is present

0.8.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.5...v0.8.0) May 3th, 2016
------------------------------
* PComm emulator: the write param 'clean_chars_before_writing' didn't work
* Improved write with params clean_chars_before_writing:
    * now switch off erase_before_writing because there might be a conflict
    * now switch off check protect param which use SendKey and it could provide an unexpected result

0.7.5 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.4...v0.7.5) April 19th, 2016
------------------------------
* Fixed a bug (Stack level too deep) on the write command when was passed the parameter :clean_chars_before_writing

0.7.4 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.3...v0.7.4) April 13th, 2016
------------------------------
* You can now let the session open with the new quit parameter :never
* Now you can change the close session parameter after the object was created
* Improved documentation
* PComm emulator: removed StopCommunication from quit due to session stuck if it will not be closed

0.7.3 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.2...v0.7.3) March 29th, 2016
------------------------------
* PComm emulator: fixed a bug when closing the session with ruby 1.8

0.7.2 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.1...v0.7.2) March 22th, 2016
------------------------------
* Fixed a bug during install in a rails project

0.7.1 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.7.0...v0.7.1) January 12th, 2016
------------------------------
* Now the message contains the coordinates when you try to write a null value

0.7.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.6.0...v0.7.0) December 2th, 2015
------------------------------
* Now is possible to set erase_before_writing permanently to execute an erase until end of field before writing a text
* Changed param name in write method: erase_before_writing instead of erase_field_first       => deprecation warning
* Changed param name in write method: clean_chars_before_writing instead of clean_first_chars => deprecation warning
* Changed method name: screen_title becomes catch_title to align it to the methods name that provide a similar result => deprecation warning

0.6.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.5.0...v0.6.0) October 29th, 2015
------------------------------
* Improved rails integration
* Added rails model test with the scaffold generator, see documentation
* Added env parameter in the configuration file
* Several little improvements

0.5.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.4.0...v0.5.0) October 26th, 2015
------------------------------
* Moved sensible parameters in a separate yml file (private.yml) do not share it
* Added coordinates to some setting variables
* Little improvements to navigation method

0.4.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.3.0...v0.4.0) October 22th, 2015
------------------------------
* Improved x3270 sub class stability. Added a delay after session starting
* Several little improvements

0.3.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.2.0...v0.3.0) October 22th, 2015
------------------------------
* Improved the host base class code to make it simpler
* Improved automated tests with a more complex sequence and three iterations with decreasing latencies
* Pcomm sub class now use safer method to close session
* x3270 sub class is now more stable, It now passes all the tests although not always, rarely this does not happen with short delay time. There is still something to fix.
* Improved navigation and added new setting parameters
* Improved documentation
* Several little improvements

0.2.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.1.0...v0.2.0) October 20th, 2015
------------------------------
* Added support for the free and open source x3270 terminal emulator, use :x3270 as host gateway in butler configuration
* Added x3270 sections to documentation
* Passport sub class now remove spaces from command input
* Added :erase_field_first param to write method in the host base class in addition to :clean_first_chars to clear a given number of chars

0.1.0 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.0.6...v0.1.0) October 14th, 2015
------------------------------
* Added IBM personal communication support (tested on 6.0.16), use :pcomm as host gateway in butler configuration
* Many documentation improvements with technical details and examples
* Little improvements in host base to manage ready? sub methods, a new check as well as created?
* Two new config parameters: timeout and session_tag to connect to the right session
* Write text now have an option parameter :check_protect which raise an error when on protect area
* Improved passport driver class: now it use a session screen @variable to optimize memory use
* Change include module methods to monkey patch to add ruby 1.8.7 support

0.0.6 [☰](https://github.com/marcomd/butler-mainframe/compare/v0.0.5...v0.0.6) October 12th, 2015
------------------------------
* Added a simple rake test
* Improved documentation
* Some little improvements

0.0.5 October 7th, 2015
------------------------------
* First working release
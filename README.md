# riga-tech-girls-workshop

Plan

1. Create Single View App Xcode project

	* Enter product name Currency
	* Select User Interface to Storyboard
	* Deselect tests and Git repo
	* Save to Desktop
	* Select iPhone 11 Pro Simulator
	* Run empty project and you will see a empty white app

2. Download app Assets - images

	* [http://bit.ly/rtg-ios](http://bit.ly/rtg-ios)
	* Import all into Assets.xcassets
	* Remove AppIcon
	* Let's talk about Dark Mode assets

3. Add User Interface elements

	* Open Main.storyboard
	* Add IDR Flag
	* Add IDR Label
		* Color - Default Label Color
		* Font - Title 1
	* Add IDR description Label
		* Color - Secondary Label Color
		* Font - Subhead
	* Add IDR currency input field with value 0.00
		* Color - Default Label Color
		* Font - Large Title
		* Border style - none
		* Clear Buton - appears when editing
		* Keyboard Type - Number Pad
	* Add bottom UIView and set color to light-purple
	* Add EUR flag
	* Add EUR label
		* Color - Default Label Color
		* Font - Title 1
	* Add EUR description label
		* Color - Secondary Label Color
		* Font - Subhead
	* Add EUR currency input field with value 0.00
		* Color - Default Label Color
		* Font - Large Title
		* Border style - none 
		* Clear Buton - appears when editing
		* Keyboard Type - Number Pad
	* Add equals image
	* Add button and configure as convert
		* Type - custom
		* Image - convert-button
	* Set main view background color to dark-purple

4. Layout Elements

	* IDR flag - top 100, left - 20, width 88
	* IDR label - top 100, left 8, right 20, height 30
	* IDR description - top 8, left 8, right 20
	* IDR currency input - top 10, left 116, right 20, height 50
	* Convert button - width and height 84, right 20, bottom -42
	* Bottom view - height 480, left 0, bottom 0, right 0
	* EUR flag - width 88, top 30, left 20
	* EUR label - height 30, top 30, left 8, right 20
	* EUR description - top 8, left 8, right 20
	* Equals sign - center with EUR flag, top 18, left 39
	* EUR text field - top 10, right 20, height 50

5. Programming

	* Convert function from IDR to EUR, rate = 0.000066
	* Format number

6. Connect UI with code

	* Open Main.storyboard and code side by side
	* Create IDRTextField Outlet
	* Create EURTextField Outlet
	* Create convertFromIDRToEUR action

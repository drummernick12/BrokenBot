$frmBot = GUICreate($sBotTitle, 417, 545, 207, 158)

; ---------------------------------------------------------------------------------------------------------------------
; On all tabs ---------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
; BrokenBot.org
GUISetIcon(@ScriptDir & "BrokenBot.org\images\icons\brokenbot.ico")
TraySetIcon(@ScriptDir & "BrokenBot.org\images\icons\brokenbot.ico")
$imgLogo = GUICtrlCreatePic("BrokenBot.org\images\misc\brokenbot_logo.jpg", 8, 405, 401, 112)
GUICtrlSetCursor($imgLogo, 0)
; End BrokenBot.org
$btnStart = GUICtrlCreateButton(GetLangText("btnStart"), 20, 365, 75, 25)
GUICtrlSetOnEvent(-1, "btnStart")
GUICtrlSetBkColor($btnStart, 0xFF7E00)
$btnStop = GUICtrlCreateButton(GetLangText("btnStop"), 20, 365, 75, 25)
GUICtrlSetOnEvent(-1, "btnStop")
GUICtrlSetState(-1, $GUI_HIDE)
GUICtrlSetBkColor($btnStop, 0xFF7E00)
$btnHide = GUICtrlCreateButton(GetLangText("btnHide"), 100, 365, 75, 25)
GUICtrlSetOnEvent(-1, "btnHide")
GUICtrlSetState($btnHide, $GUI_DISABLE)
$btnAtkNow = GUICtrlCreateButton(GetLangText("btnAtkNow"), 190, 365, 115, 25)
GUICtrlSetOnEvent(-1, "btnAtkNow")
GUICtrlSetState(-1, $GUI_DISABLE)
$btnPause = GUICtrlCreateButton(GetLangText("btnPause"), 320, 365, 75, 25)
GUICtrlSetOnEvent(-1, "btnPause")
GUICtrlSetState($btnPause, $GUI_DISABLE)

$tabMain = GUICtrlCreateTab(8, 0, 403, 403, $TCS_MULTILINE)
GUICtrlSetOnEvent(-1, "tabMain")

; ---------------------------------------------------------------------------------------------------------------------
; General Tab ---------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageGeneral = GUICtrlCreateTabItem(GetLangText("pageGeneral"))
$txtLog = _GUICtrlRichEdit_Create($frmBot, "", 16, 45, 385, 200, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, $WS_HSCROLL, 8912))
$Controls = GUICtrlCreateGroup(GetLangText("Controls"), 15, 245, 385, 41)
$chkBotStop = GUICtrlCreateCheckbox("", 37, 264, 16, 16)
$cmbBotCommand = GUICtrlCreateCombo("", 60, 260, 110, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, GetLangText("cmbBotCommand"), GetLangText("cmbBotCommandDefault"))
$lblPC = GUICtrlCreateLabel(GetLangText("lblPC"), 178, 264, 25, 17)
$cmbBotCond = GUICtrlCreateCombo("", 198, 260, 163, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, GetLangText("cmbBotCond"), GetLangText("cmbBotCondDefault"))
GUICtrlCreateGroup("", -99, -99, 1, 1)

$otherSettings = GUICtrlCreateGroup(GetLangText("otherSettings"), 15, 290, 385, 66)
$chkNoAttack = GUICtrlCreateCheckbox(GetLangText("chkNoAttack"), 24, 307, 105, 17)
GUICtrlSetBkColor($chkNoAttack, $COLOR_WHITE)
GUICtrlSetOnEvent(-1, "chkNoAttack")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("chkNoAttackTip"))
$chkDonateOnly = GUICtrlCreateCheckbox(GetLangText("chkDonateOnly"), 140, 307, 80, 17)
GUICtrlSetBkColor($chkDonateOnly, $COLOR_WHITE)
GUICtrlSetOnEvent(-1, "chkNoAttack")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("chkDonateOnlyTip"))
$expMode = GUICtrlCreateCheckbox(GetLangText("expMode"), 24, 330, 80, 17)
GUICtrlSetBkColor($chkDonateOnly, $COLOR_WHITE)
GUICtrlSetOnEvent(-1, "chkNoAttack")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("expModeTip"))

$lblMaxTrophy = GUICtrlCreateLabel(GetLangText("lblMaxTrophy"), 232, 308, 75, 17)
$txtMinimumTrophy = GUICtrlCreateInput("1000", 311, 308, 32, 16, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 4)
$lblMaxTrophy2 = GUICtrlCreateLabel("-", 349, 308, 5, 17)
$txtMaxTrophy = GUICtrlCreateInput("9999", 360, 308, 32, 16, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 4)

; ---------------------------------------------------------------------------------------------------------------------
; Strategies ----------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageAttackOptions = GUICtrlCreateTabItem(GetLangText("pageAttackOptions"))
$lstStrategies = GUICtrlCreateList("", 20, 50, 375, 200)
$btnSaveStrat = GUICtrlCreateButton(GetLangText("btnSaveStrat"), 20, 240, 185, 20)
$btnRefresh = GUICtrlCreateButton(GetLangText("btnRefresh"), 210, 240, 185, 20)
$AtkSpeed = GUICtrlCreateGroup(GetLangText("AtkSpeed"), 15, 275, 385, 79)
$lblUnitDelay = GUICtrlCreateLabel(GetLangText("lblUnitDelay"), 30, 292, 75, 17)
$cmbUnitDelay = GUICtrlCreateCombo("", 90, 289, 50, 17, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "1|2|3|4|5|6|7|8|9|10", "5")
$lblWaveDelay = GUICtrlCreateLabel(GetLangText("lblWaveDelay"), 155, 292, 75, 17)
$cmbWaveDelay = GUICtrlCreateCombo("", 225, 289, 50, 17, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "1|2|3|4|5|6|7|8|9|10", "5")
$lblAttackdelay = GUICtrlCreateLabel(GetLangText("lblAttackdelay"), 35, 315, 350, 67, $SS_CENTER)
GUICtrlCreateGroup("", -99, -99, 1, 1)


; ---------------------------------------------------------------------------------------------------------------------
; Donate --------------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageDonateSettings = GUICtrlCreateTabItem(GetLangText("pageDonateSettings"))
$cmbDonateList = GetLangText("troopNamePlBarbarian") & "|" & GetLangText("troopNamePlArcher") & "|" & GetLangText("troopNamePlGiant") & "|" & GetLangText("troopNamePlGoblin") & "|" & GetLangText("troopNamePlWallBreaker") & "|" & GetLangText("troopNamePlBalloon") & "|" & GetLangText("troopNamePlWizard") & "|" & GetLangText("troopNamePlHealer") & "|" & GetLangText("troopNamePlDragon") & "|" & GetLangText("troopNamePlPEKKA") & "|" & GetLangText("troopDarkPlMinion") & "|" & GetLangText("troopDarkPlHog") & "|" & GetLangText("troopDarkPlValkyrie") & "|" & GetLangText("troopDarkPlGolem") & "|" & GetLangText("troopDarkPlWitch") & "|" & GetLangText("troopDarkPlLavaHound")
$Donation = GUICtrlCreateGroup("", 15, 36, 385, 325)
$Barbarians = GUICtrlCreateGroup(GetLangText("Barbarians"), 20, 70, 120, 235)
$chkDonateAllBarbarians = GUICtrlCreateCheckbox(GetLangText("chkDonateAll"), 30, 95, 97, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateAllTip"))
$cmbDonateBarbarians = GUICtrlCreateCombo("", 25, 120, 85, 20, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, $cmbDonateList, GetLangText("troopNamePlBarbarian"))
$NoOfBarbarians = GUICtrlCreateInput("5", 115, 120, 20, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 1)
$txtDonateBarbarians = GUICtrlCreateEdit("", 25, 145, 110, 154, BitOR($ES_WANTRETURN, $WS_VSCROLL, $WS_HSCROLL))
GUICtrlSetData(-1, StringFormat(GetLangText("txtDonate")))
GUICtrlSetTip(-1, GetLangText("txtDonateBarbariansTip"))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Archers = GUICtrlCreateGroup(GetLangText("Archers"), 148, 70, 120, 235)
$chkDonateAllArchers = GUICtrlCreateCheckbox(GetLangText("chkDonateAll"), 155, 95, 97, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateAllTip"))
$cmbDonateArchers = GUICtrlCreateCombo("", 153, 120, 85, 20, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, $cmbDonateList, GetLangText("troopNamePlArcher"))
$NoOfArchers = GUICtrlCreateInput("5", 243, 120, 20, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 1)
$txtDonateArchers = GUICtrlCreateEdit("", 153, 145, 110, 154, BitOR($ES_WANTRETURN, $WS_VSCROLL, $WS_HSCROLL))
GUICtrlSetData(-1, StringFormat(GetLangText("txtDonate")))
GUICtrlSetTip(-1, GetLangText("txtDonateArchersTip"))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Giants = GUICtrlCreateGroup(GetLangText("Giants"), 275, 70, 120, 235)
$chkDonateAllGiants = GUICtrlCreateCheckbox(GetLangText("chkDonateAll"), 285, 95, 97, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateAllTip"))
$cmbDonateGiants = GUICtrlCreateCombo("", 280, 120, 85, 20, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, $cmbDonateList, GetLangText("troopNamePlGiant"))
$NoOfGiants = GUICtrlCreateInput("5", 370, 120, 20, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 1)
$txtDonateGiants = GUICtrlCreateEdit("", 280, 145, 110, 154, BitOR($ES_WANTRETURN, $WS_VSCROLL, $WS_HSCROLL))
GUICtrlSetData(-1, StringFormat(GetLangText("txtDonate")))
GUICtrlSetTip(-1, GetLangText("txtDonateGiantsTip"))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$chkDonateGiants = GUICtrlCreateCheckbox(GetLangText("chkDonateGiants"), 275, 305, 97, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateGiantsTip"))
GUICtrlSetState(-1, $GUI_CHECKED)
$chkDonateArchers = GUICtrlCreateCheckbox(GetLangText("chkDonateArchers"), 149, 305, 97, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateArchersTip"))
GUICtrlSetState(-1, $GUI_CHECKED)
$chkDonateBarbarians = GUICtrlCreateCheckbox(GetLangText("chkDonateBarbarians"), 20, 305, 112, 17)
GUICtrlSetTip(-1, GetLangText("chkDonateBarbariansTip"))
GUICtrlSetState(-1, $GUI_CHECKED)
$chkRequest = GUICtrlCreateCheckbox(GetLangText("chkRequest"), 30, 45, 82, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetOnEvent(-1, "chkRequest")
$txtRequest = GUICtrlCreateInput(GetLangText("txtRequestDefault"), 115, 45, 200, 21)
GUICtrlSetTip(-1, GetLangText("txtRequestTip"))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$gtfo = GUICtrlCreateCheckbox(GetLangText("gtfo"), 330, 47, 50, 17)
GUICtrlSetTip(-1, GetLangText("gtfoTip"))

; ---------------------------------------------------------------------------------------------------------------------
; Upgrade -------------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageUpgradeBuilding = GUICtrlCreateTabItem(GetLangText("pageUpgradeBuilding"))
$Upgrade = GUICtrlCreateGroup(GetLangText("Upgrade"), 20, 40, 375, 120)
$chkUpgrade1 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade1"), 30, 65, 80, 17)
$lblUP1PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 66, 40, 17)
$txtUpgradeX1 = GUICtrlCreateInput("", 152, 64, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP1PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 66, 40, 17)
$txtUpgradeY1 = GUICtrlCreateInput("", 235, 64, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp1 = GUICtrlCreateButton(GetLangText("btnLocateUp1"), 285, 64, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp1")
GUICtrlSetState(-1, $GUI_DISABLE)
$chkUpgrade2 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade2"), 30, 93, 80, 17)
$lblUP2PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 95, 40, 17)
$txtUpgradeX2 = GUICtrlCreateInput("", 152, 90, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP2PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 95, 40, 17)
$txtUpgradeY2 = GUICtrlCreateInput("", 235, 90, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp2 = GUICtrlCreateButton(GetLangText("btnLocateUp2"), 285, 90, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp2")
GUICtrlSetState(-1, $GUI_DISABLE)
$chkUpgrade3 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade3"), 30, 123, 80, 17)
$lblUP2PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 125, 40, 17)
$txtUpgradeX3 = GUICtrlCreateInput("", 152, 120, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP2PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 125, 40, 17)
$txtUpgradeY3 = GUICtrlCreateInput("", 235, 120, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp3 = GUICtrlCreateButton(GetLangText("btnLocateUp3"), 285, 120, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp3")
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$Upgrade2 = GUICtrlCreateGroup(GetLangText("Upgrade2"), 20, 165, 375, 125)
$chkUpgrade4 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade4"), 30, 192, 80, 17)
$lblUP4PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 194, 40, 17)
$txtUpgradeX4 = GUICtrlCreateInput("", 152, 189, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP4PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 194, 40, 17)
$txtUpgradeY4 = GUICtrlCreateInput("", 235, 189, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp4 = GUICtrlCreateButton(GetLangText("btnLocateUp4"), 285, 189, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp4")
GUICtrlSetState(-1, $GUI_DISABLE)
$chkUpgrade5 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade5"), 30, 222, 80, 17)
$lblUP5PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 224, 40, 17)
$txtUpgradeX5 = GUICtrlCreateInput("", 152, 219, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP5PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 224, 40, 17)
$txtUpgradeY5 = GUICtrlCreateInput("", 235, 219, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp5 = GUICtrlCreateButton(GetLangText("btnLocateUp5"), 285, 219, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp5")
GUICtrlSetState(-1, $GUI_DISABLE)
$chkUpgrade6 = GUICtrlCreateCheckbox(GetLangText("chkUpgrade6"), 30, 252, 80, 17)
$lblUP6PosX = GUICtrlCreateLabel(GetLangText("lblUPPosX"), 112, 254, 40, 17)
$txtUpgradeX6 = GUICtrlCreateInput("", 152, 249, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$lblUP6PosY = GUICtrlCreateLabel(GetLangText("lblUPPosY"), 195, 254, 40, 17)
$txtUpgradeY6 = GUICtrlCreateInput("", 235, 249, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER, $ES_READONLY))
$btnLocateUp6 = GUICtrlCreateButton(GetLangText("btnLocateUp6"), 285, 249, 100, 21)
GUICtrlSetOnEvent(-1, "btnLocateUp6")
GUICtrlSetState(-1, $GUI_DISABLE)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$grpLaboratory = GUICtrlCreateGroup(GetLangText("grpLaboratory"), 20, 295, 375, 55)
$chkLab = GUICtrlCreateCheckbox(GetLangText("chkLab"), 30, 320, 100, 17)
GUICtrlCreateLabel(GetLangText("lblLab"), 185, 320, 100, 17)
$cmbLabList = GetLangText("troopNamePlBarbarian") & "|" & GetLangText("troopNamePlArcher") & "|" & GetLangText("troopNamePlGiant") & "|" & GetLangText("troopNamePlGoblin") & "|" & GetLangText("troopNamePlWallBreaker") & "|" & GetLangText("troopNamePlBalloon") & "|" & GetLangText("troopNamePlWizard") & "|" & GetLangText("troopNamePlHealer") & "|" & GetLangText("troopNamePlDragon") & "|" & GetLangText("troopNamePlPEKKA") & "|" & GetLangText("spellNameLightning") & "|" & GetLangText("spellNameHealing") & "|" & GetLangText("spellNameRage") & "|" & GetLangText("spellNameJump") & "|" & GetLangText("spellNameFreeze") & "|" & GetLangText("troopDarkPlMinion") & "|" & GetLangText("troopDarkPlHog") & "|" & GetLangText("troopDarkPlValkyrie") & "|" & GetLangText("troopDarkPlGolem") & "|" & GetLangText("troopDarkPlWitch") & "|" & GetLangText("troopDarkPlLavaHound") & "|" & GetLangText("cmbNothing")
$cmbLaboratory = GUICtrlCreateCombo("", 285, 317, 100, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, $cmbLabList, GetLangText("troopNamePlBarbarian"))
GUICtrlCreateGroup("", -99, -99, 1, 1)

; ---------------------------------------------------------------------------------------------------------------------
; PushBullet ----------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pagenotificationSetting = GUICtrlCreateTabItem(GetLangText("pagenotificationSetting"))
$lblpushbullet = GUICtrlCreateGroup(GetLangText("lblpushbullet"), 20, 40, 370, 170)
$pushbullettoken1 = GUICtrlCreateLabel(GetLangText("pushbullettoken1"), 30, 90, 80, 17, $SS_CENTER)
$pushbullettokenvalue = GUICtrlCreateInput("", 120, 90, 260, 17)
$lblpushbulletenabled = GUICtrlCreateCheckbox(GetLangText("lblpushbulletenabled"), 30, 65, 60, 17)
GUICtrlSetTip(-1, GetLangText("lblpushbulletenabledTip"))
$lblpushbulletdebug = GUICtrlCreateCheckbox(GetLangText("lblpushbulletdebug"), 100, 65, 60, 17)
GUICtrlSetTip(-1, GetLangText("lblpushbulletdebugTip"))
$lblpushbulletremote = GUICtrlCreateCheckbox(GetLangText("lblpushbulletremote"), 170, 65, 60, 17)
GUICtrlSetTip(-1, GetLangText("lblpushbulletremoteTip"))
$lblpushbulletdelete = GUICtrlCreateCheckbox(GetLangText("lblpushbulletdelete"), 240, 65, 120, 17)
GUICtrlSetTip(-1, GetLangText("lblpushbulletdeleteTip"))

$lblpushmessage = GUICtrlCreateGroup(GetLangText("lblpushmessage"), 30, 115, 200, 88)
$lbldisconnect = GUICtrlCreateCheckbox(GetLangText("lbldisconnect"), 40, 140, 95, 17)
$lblmatchfound = GUICtrlCreateCheckbox(GetLangText("lblmatchfound"), 40, 160, 95, 17)
$lbllastraid = GUICtrlCreateCheckbox(GetLangText("lbllastraid"), 140, 140, 80, 17)
$lblfreebuilder = GUICtrlCreateCheckbox(GetLangText("lblfreebuilder"), 140, 160, 80, 17)
$lblvillagereport = GUICtrlCreateCheckbox(GetLangText("lblvillagereport"), 40, 180, 150, 17)

$lblpushbulletloot = GUICtrlCreateGroup(GetLangText("lblpushbulletloot"), 240, 115, 140, 88)
$UseJPG = GUICtrlCreateCheckbox(GetLangText("UseJPG"), 260, 135, 60, 17)
GUICtrlSetTip(-1, GetLangText("UseJPGTip"))
$UseAttackJPG = GUICtrlCreateCheckbox(GetLangText("UseAttackJPG"), 260, 155, 60, 17)
GUICtrlSetTip(-1, GetLangText("UseAttackJPGTip"))

$lblpushbullet2 = GUICtrlCreateGroup(GetLangText("lblpushbullet2"), 20, 210, 370, 140)
$pushbullettoken2 = GUICtrlCreateLabel(GetLangText("pushbullettoken2") & @CRLF & GetLangText("pushbullettoken3") & @CRLF & GetLangText("pushbullettoken4") & @CRLF & @CRLF & GetLangText("pushbullettoken5") & @CRLF & GetLangText("pushbullettoken6") & @CRLF & GetLangText("pushbullettoken7") & @CRLF & GetLangText("pushbullettoken8") & @CRLF & GetLangText("pushbullettoken9"), 25, 230, 340, 350, $SS_LEFT)

; ---------------------------------------------------------------------------------------------------------------------
; Misc ----------------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageMiscSettings = GUICtrlCreateTabItem(GetLangText("pageMiscSettings"))
$Miscs = GUICtrlCreateGroup(GetLangText("Miscs"), 20, 40, 375, 215)
$lblReconnect = GUICtrlCreateLabel(GetLangText("lblReconnect"), 30, 65, 100, 17)
GUICtrlSetTip(-1, GetLangText("lblReconnectTip"))
$txtReconnect = GUICtrlCreateInput("2", 130, 60, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 2)
$lblReconnectmin = GUICtrlCreateLabel(GetLangText("lblReconnectmin"), 165, 65, 100, 17)
$lblSpellCap = GUICtrlCreateLabel(GetLangText("lblSpellCap"), 217, 118, 120, 17)
$txtSpellCap = GUICtrlCreateInput("3", 335, 115, 50, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
$lblCapacity = GUICtrlCreateLabel(GetLangText("lblCapacity"), 30, 118, 95, 17)
$txtCapacity = GUICtrlCreateInput("0", 120, 115, 56, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))

$chkTrap = GUICtrlCreateCheckbox(GetLangText("chkTrap"), 270, 65, 110, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, GetLangText("chkTrapTip"))

$lblSearchsp = GUICtrlCreateLabel(GetLangText("lblSearchsp"), 30, 92, 100, 17)
GUICtrlSetTip(-1, GetLangText("lblSearchspTip"))
$cmbSearchsp = GUICtrlCreateCombo("", 130, 87, 45, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "0|1|2|3|4|5|6|7|8|9|10", "0") ; Search Base Speed
$lblSearchspd = GUICtrlCreateLabel(GetLangText("lblSearchspd"), 182, 92, 200, 17)

$lblReturnh = GUICtrlCreateLabel(GetLangText("lblReturnh"), 30, 146, 100, 17)
GUICtrlSetTip(-1, GetLangText("lblReturnhTip"))
$txtReturnh = GUICtrlCreateInput("10", 130, 141, 31, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 2)
$lblReturndelay = GUICtrlCreateLabel(GetLangText("lblReturndelay"), 165, 146, 200, 17)

$chkWideEdge = GUICtrlCreateCheckbox(GetLangText("chkWideEdge"), 30, 180, 177, 17)

$chkAlertSearch = GUICtrlCreateCheckbox(GetLangText("chkAlertSearch"), 30, 205, 100, 17)
$chkCollect = GUICtrlCreateCheckbox(GetLangText("chkCollect"), 30, 230, 110, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkTakeLootSS = GUICtrlCreateCheckbox(GetLangText("chkTakeLootSS"), 140, 205, 110, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkTakeTownSS = GUICtrlCreateCheckbox(GetLangText("chkTakeTownSS"), 253, 205, 141, 17)
$chkTakeAttackSS = GUICtrlCreateCheckbox(GetLangText("chkTakeAttackSS"), 140, 230, 110, 17)
GUICtrlSetTip(-1, GetLangText("chkTakeAttackSSTip"))
$chkDebug = GUICtrlCreateCheckbox(GetLangText("chkDebug"), 253, 230, 141, 17)
GUICtrlSetTip(-1, GetLangText("chkDebugTip"))
If @Compiled Then GUICtrlSetState($chkDebug, $GUI_HIDE)

$LocationSettings = GUICtrlCreateGroup(GetLangText("LocationSettings"), 20, 255, 375, 100)
$btnLocateKingAltar = GUICtrlCreateButton(GetLangText("btnLocateKingAltar"), 32, 270, 83, 25)
GUICtrlSetOnEvent(-1, "btnLocateKingAltar")
$btnLocateQueenAltar = GUICtrlCreateButton(GetLangText("btnLocateQueenAltar"), 118, 270, 83, 25)
GUICtrlSetOnEvent(-1, "btnLocateQueenAltar")
$btnLocateDarkBarracks = GUICtrlCreateButton(GetLangText("btnLocateDarkBarracks"), 213, 270, 83, 25)
GUICtrlSetOnEvent(-1, "btnLocateDarkBarracks")
$btnLocateSFactory = GUICtrlCreateButton(GetLangText("btnLocateSFactory"), 299, 270, 83, 25)
GUICtrlSetOnEvent(-1, "btnLocateSFactory")
$btnLocateTownHall = GUICtrlCreateButton(GetLangText("btnLocateTownHall"), 32, 297, 170, 25)
GUICtrlSetOnEvent(-1, "btnLocateTownHall")
$btnLocateClanCastle = GUICtrlCreateButton(GetLangText("btnLocateClanCastle"), 32, 324, 170, 25)
GUICtrlSetOnEvent(-1, "btnLocateClanCastle")
$btnLocateCamp = GUICtrlCreateButton(GetLangText("btnLocateCamp"), 213, 297, 83, 25)
GUICtrlSetOnEvent(-1, "btnLocateCamp")
$btnLab = GUICtrlCreateButton(GetLangText("btnLab"), 299, 297, 83, 25)
GUICtrlSetOnEvent(-1, "btnLab")
$btnLocateBarracks = GUICtrlCreateButton(GetLangText("btnLocateBarracks"), 213, 324, 170, 25)
GUICtrlSetOnEvent(-1, "btnLocateBarracks")
GUICtrlCreateGroup("", -99, -99, 1, 1)

; ---------------------------------------------------------------------------------------------------------------------
; Other ---------------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageOtherSettings = GUICtrlCreateTabItem(GetLangText("pageOtherSettings"))
$Walls = GUICtrlCreateGroup(GetLangText("Walls"), 20, 40, 375, 125)
$chkWalls = GUICtrlCreateCheckbox(GetLangText("chkWalls"), 30, 62, 110, 17)
$UseGold = GUICtrlCreateRadio(GetLangText("UseGold"), 40, 87, 115, 17)
$WallMinGold = GUICtrlCreateLabel(GetLangText("WallMinGold"), 220, 92, 76, 17)
GUICtrlSetTip(-1, GetLangText("WallMinGoldTip"))
$txtWallMinGold = GUICtrlCreateInput("1300000", 325, 87, 61, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 7)
$UseElixir = GUICtrlCreateRadio(GetLangText("UseElixir"), 40, 112, 115, 17)
$WallMinElixir = GUICtrlCreateLabel(GetLangText("WallMinElixir"), 220, 117, 72, 17)
GUICtrlSetTip(-1, GetLangText("WallMinElixirTip"))
$txtWallMinElixir = GUICtrlCreateInput("1300000", 325, 112, 61, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
GUICtrlSetLimit(-1, 7)
$UseGoldElix = GUICtrlCreateRadio(GetLangText("UseGoldElix"), 40, 137, 150, 17)
$lblWalls = GUICtrlCreateLabel(GetLangText("lblWalls"), 220, 64, 100, 17)
$cmbWalls = GUICtrlCreateCombo("", 325, 60, 40, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "4|5|6|7|8|9|10", "4")

$lblTolerance = GUICtrlCreateLabel(GetLangText("lblTolerance"), 220, 142, 80, 17)
$cmbTolerance = GUICtrlCreateCombo("", 325, 137, 60, 17, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, GetLangText("cmbTolerance"), GetLangText("cmbToleranceDefault"))
$btnFindWall = GUICtrlCreateButton(GetLangText("btnFindWall"), 145, 60, 63, 21)
GUICtrlSetOnEvent(-1, "btnFindWall")
GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateGroup(GetLangText("grpRedLine"), 20, 200, 375, 50)
GUICtrlCreateLabel(GetLangText("lblRedLine1"), 30, 220, 83, 17)
$sldAcc = GUICtrlCreateSlider(113, 215, 195, 25, $TBS_NOTICKS)
GUICtrlSetLimit($sldAcc, 100, 0)
GUICtrlSetBkColor($sldAcc, $COLOR_WHITE)
GUICtrlSetTip($sldAcc, GetLangText("sldAccTip") & @CRLF & GetLangText("sldAccTip2"))
GUICtrlCreateLabel(GetLangText("lblRedLine2"), 320, 220, 118, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$Boosts = GUICtrlCreateGroup(GetLangText("Boosts"), 20, 255, 375, 100)
$lblBoostBarracks = GUICtrlCreateLabel(GetLangText("lblBoostBarracks"), 30, 275, 100, 17)
$cmbBoostBarracks = GUICtrlCreateCombo("", 150, 271, 35, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "0|1|2|3|4|5", "0")
$chkBoostKing = GUICtrlCreateCheckbox(GetLangText("chkBoostKing"), 30, 300, 65, 17)
$chkBoostQueen = GUICtrlCreateCheckbox(GetLangText("chkBoostQueen"), 115, 300, 75, 17)
$chkBoostRax1 = GUICtrlCreateCheckbox(GetLangText("chkBoostRax1"), 200, 275, 65, 17)
$chkBoostRax2 = GUICtrlCreateCheckbox(GetLangText("chkBoostRax2"), 200, 300, 65, 17)
$chkBoostRax3 = GUICtrlCreateCheckbox(GetLangText("chkBoostRax3"), 285, 275, 65, 17)
$chkBoostRax4 = GUICtrlCreateCheckbox(GetLangText("chkBoostRax4"), 285, 300, 65, 17)
$chkBoostSpell = GUICtrlCreateCheckbox(GetLangText("chkBoostSpell"), 30, 325, 90, 17)
$chkBoostDB1 = GUICtrlCreateCheckbox(GetLangText("chkBoostDB1"), 140, 325, 90, 17)
$chkBoostDB2 = GUICtrlCreateCheckbox(GetLangText("chkBoostDB2"), 250, 325, 90, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)

; ---------------------------------------------------------------------------------------------------------------------
; Stats ---------------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageStatsSetting = GUICtrlCreateTabItem(GetLangText("pageStatsSetting"))
$resourceonstart = GUICtrlCreateGroup(GetLangText("resourceonstart"), 20, 40, 185, 120)
$lblgoldonstart = GUICtrlCreateLabel(GetLangText("lblgoldonstart"), 50, 68, 65, 17)
$lblresultgoldtstart = GUICtrlCreateLabel("0", 128, 68, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Gold.jpg", 30, 68, 15, 15)
$lblelixironstart = GUICtrlCreateLabel(GetLangText("lblelixironstart"), 50, 88, 65, 17)
$lblresultelixirstart = GUICtrlCreateLabel("0", 128, 88, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Elixir.jpg", 30, 88, 15, 15)
$lbldeonstart = GUICtrlCreateLabel(GetLangText("lbldeonstart"), 50, 108, 60, 17)
$lblresultdestart = GUICtrlCreateLabel("0", 128, 108, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Dark.jpg", 30, 108, 15, 15)
$lbltrophyonstart = GUICtrlCreateLabel(GetLangText("lbltrophyonstart"), 50, 128, 100, 17)
$lblresulttrophystart = GUICtrlCreateLabel("0", 128, 128, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Trophy.jpg", 30, 128, 15, 15)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$Currentresource = GUICtrlCreateGroup(GetLangText("Currentresource"), 210, 40, 185, 120)
$lblvillagesattacked = GUICtrlCreateLabel(GetLangText("lblvillagesattacked"), 220, 68, 100, 17)
$lblresultvillagesattacked = GUICtrlCreateLabel("0", 318, 68, 60, 17, $SS_RIGHT)
$lblvillagesskipped = GUICtrlCreateLabel(GetLangText("lblvillagesskipped"), 220, 83, 100, 17)
$lblresultvillagesskipped = GUICtrlCreateLabel("0", 318, 83, 60, 17, $SS_RIGHT)
$lblsearchdisconnected = GUICtrlCreateLabel(GetLangText("lblDisconnected"), 220, 98, 100, 17)
$lblresultsearchdisconnected = GUICtrlCreateLabel("0", 318, 98, 60, 17, $SS_RIGHT)
$lblsearchcost = GUICtrlCreateLabel(GetLangText("lblsearchcost"), 220, 113, 100, 17)
$lblresultsearchcost = GUICtrlCreateLabel("0", 318, 113, 60, 17, $SS_RIGHT)
$lblruntime = GUICtrlCreateLabel(GetLangText("lblruntime"), 220, 128, 100, 17)
$lblresultruntime = GUICtrlCreateLabel("00:00:00", 318, 128, 60, 17, $SS_RIGHT)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$LastLoot = GUICtrlCreateGroup(GetLangText("LastLoot"), 20, 160, 375, 70)
$lblwallupgrade = GUICtrlCreateLabel(GetLangText("lblwallupgrade"), 50, 185, 100, 17)
$lblwallupgradecount = GUICtrlCreateLabel("0", 128, 185, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Wall.jpg", 30, 186, 15, 15)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$CurrentLoot = GUICtrlCreateGroup(GetLangText("CurrentLoot"), 20, 230, 185, 110)
$lblgoldnow = GUICtrlCreateLabel(GetLangText("lblgoldnow"), 50, 253, 60, 17)
$lblresultgoldnow = GUICtrlCreateLabel("0", 128, 253, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Gold.jpg", 30, 253, 15, 15)
$lblelixirnow = GUICtrlCreateLabel(GetLangText("lblelixirnow"), 50, 273, 60, 17)
$lblresultelixirnow = GUICtrlCreateLabel("0", 128, 273, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Elixir.jpg", 30, 273, 15, 15)
$lbldenow = GUICtrlCreateLabel(GetLangText("lbldenow"), 50, 293, 60, 17)
$lblresultdenow = GUICtrlCreateLabel("0", 128, 293, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Dark.jpg", 30, 293, 15, 15)
$lbltrophynow = GUICtrlCreateLabel(GetLangText("lbltrophynow"), 50, 313, 100, 17)
$lblresulttrophynow = GUICtrlCreateLabel("0", 128, 313, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Trophy.jpg", 30, 313, 15, 15)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$totalresource = GUICtrlCreateGroup(GetLangText("totalresource"), 210, 230, 185, 110)
$lblgoldgain = GUICtrlCreateLabel(GetLangText("lblgoldgain"), 250, 253, 100, 17)
$lblresultgoldgain = GUICtrlCreateLabel("0", 318, 253, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Gold.jpg", 230, 253, 15, 15)
$lblelixirgain = GUICtrlCreateLabel(GetLangText("lblelixirgain"), 250, 273, 100, 17)
$lblresultelixirgain = GUICtrlCreateLabel("0", 318, 273, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Elixir.jpg", 230, 273, 15, 15)
$lbldegain = GUICtrlCreateLabel(GetLangText("lbldegain"), 250, 293, 100, 17)
$lblresultdegain = GUICtrlCreateLabel("0", 318, 293, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Dark.jpg", 230, 293, 15, 15)
$lbltrophygain = GUICtrlCreateLabel(GetLangText("lbltrophygain"), 250, 313, 100, 17)
$lblresulttrophygain = GUICtrlCreateLabel("0", 318, 313, 60, 17, $SS_RIGHT)
GUICtrlCreatePic(@ScriptDir & "\images\Resource\Trophy.jpg", 230, 313, 15, 15)
GUICtrlCreateGroup("", -99, -99, 1, 1)

; ---------------------------------------------------------------------------------------------------------------------
; Configuration -------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$pageConfigLoadSave = GUICtrlCreateTabItem(GetLangText("pageConfigLoadSave"))
$ConfigLoadSave = GUICtrlCreateGroup(GetLangText("ConfigLoadSave"), 20, 40, 375, 65)
$btnLoad = GUICtrlCreateButton(GetLangText("btnLoad"), 180, 64, 97, 25)
GUICtrlSetOnEvent(-1, "btnLoad")
$btnSave = GUICtrlCreateButton(GetLangText("btnSave"), 280, 64, 97, 25)
GUICtrlSetOnEvent(-1, "btnSave")
$lblConfig = GUICtrlCreateLabel(getfilename($config), 40, 70, 112, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)

$grpLanguage = GUICtrlCreateGroup(GetLangText("grpLanguage"), 20, 110, 375, 50)
$cmbLanguage = GUICtrlCreateCombo("", 30, 130, 347, 20, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
PopulateLanguages()
_GUICtrlComboBox_SetCurSel($cmbLanguage, _GUICtrlComboBox_FindStringExact($cmbLanguage, $StartupLanguage))

$grpUpdate = GUICtrlCreateGroup(GetLangText("grpUpdate"), 20, 225, 375, 60)
$chkUpdate = GUICtrlCreateCheckbox(GetLangText("chkUpdate"), 40, 250, 225, 15)
GUICtrlSetBkColor($chkUpdate, $COLOR_WHITE)
GUICtrlSetState(-1, $GUI_UNCHECKED)
$btnBugRep = GUICtrlCreateButton(GetLangText("btnBugRep"), 300, 250, 75, 20)
GUICtrlSetOnEvent(-1, "btnBugRep")

$grpBluestacks = GUICtrlCreateGroup(GetLangText("grpBluestacks"), 20, 295, 375, 60)
$chkBackground = GUICtrlCreateCheckbox(GetLangText("chkBackground"), 40, 320, 105, 15)
GUICtrlSetBkColor($chkBackground, $COLOR_WHITE)
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("chkBackgroundTip"))
$chkForceBS = GUICtrlCreateCheckbox(GetLangText("chkForceBS"), 175, 320, 105, 15)
GUICtrlSetBkColor($chkForceBS, $COLOR_WHITE)
GUICtrlSetOnEvent(-1, "chkForceBS")
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("chkForceBSTip"))
$chkStayAlive = GUICtrlCreateCheckbox(GetLangText("chkStayAlive"), 290, 320, 75, 15)
GUICtrlSetBkColor($chkStayAlive, $COLOR_WHITE)
GUICtrlSetState(-1, $GUI_UNCHECKED)
GUICtrlSetTip(-1, GetLangText("chkStayAliveTip"))
GUICtrlCreateGroup("", -99, -99, 1, 1)

GUICtrlCreateTabItem("")

; ---------------------------------------------------------------------------------------------------------------------
; Status Bar ----------------------------------------------------------------------------------------------------------
; ---------------------------------------------------------------------------------------------------------------------
$statLog = _GUICtrlStatusBar_Create($frmBot)
_GUICtrlStatusBar_SetSimple($statLog)
_GUICtrlStatusBar_SetText($statLog, GetLangText("statLogDefault"))
$tiAbout = TrayCreateItem(GetLangText("tiAbout"))
TrayCreateItem("")
$tiExit = TrayCreateItem(GetLangText("tiExit"))
